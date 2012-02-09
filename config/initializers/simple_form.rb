SimpleForm.setup do |config|
  config.wrappers class: 'input', error_class: :field_with_errors do |b|
    b.use :html5
    #b.use :placeholder
    b.use :maxlength
    b.use :readonly
    #b.use :pattern

    b.use :label
    b.use :error, tag: :span, class: 'error_message'
    b.use :input
    b.use :hint,  tag: :span, class: 'hint'
  end
end
