class ImageUploader < Shrine

    # plugin :moving
    plugin :validation_helpers
    plugin :remove_invalid
    plugin :versions
    plugin :processing
    # include ImageProcessing::MiniMagick
  
    process(:store) do |io, context|
      {
        original: io,
        small: resize_to_fill(io.download, 150, 150)
      }
    end
  
    Attacher.validate do
      validate_mime_type_inclusion %w[image/jpeg image/png image/gif]
      validate_max_size 5*1024*1024
      validate_extension_inclusion %w[jpg jpeg png gif]
    end
  
  end
  