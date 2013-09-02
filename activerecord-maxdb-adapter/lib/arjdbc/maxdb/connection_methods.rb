class ActiveRecord::Base
  class << self
    def maxdb_connection( config )
      config[:port] ||= 30015
      config[:url] ||= "jdbc:sap://#{config[:host]}:#{config[:port]}/#{ config[:database]}"
      config[:driver] ||= "com.sap.db.jdbc.Driver"
      config[:adapter_class] = ActiveRecord::ConnectionAdapters::MaxDBSQLAdapter
      jdbc_connection(config)
    end
  end
end