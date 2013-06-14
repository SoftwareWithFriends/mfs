module Mfs
  module Types
    class Certificate < Entry
      field :filetype, default: "certificate"


      def certificate
        @certificate ||= OpenSSL::X509::Certificate.new data
      end

      def dn
        certificate.subject.to_s
      end

    end
  end
end