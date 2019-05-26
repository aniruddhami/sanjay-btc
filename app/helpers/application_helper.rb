module ApplicationHelper
    # display toaster message
    def toastr_flash_class(type)
        case type
        when "alert"
          "toastr.error"
        when "notice"
          "toastr.info"
        else
          "toastr.info"
        end
      end
end
