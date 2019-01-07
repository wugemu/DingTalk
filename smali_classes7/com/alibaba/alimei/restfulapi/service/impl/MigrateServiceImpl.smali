.class public Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "MigrateServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcMigrateService;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addMigrateAccount(Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 11
    .param p1, "addAccount"    # Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;>;"
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;-><init>()V

    .line 121
    .local v0, "_crypt":Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
    const-string/jumbo v7, "G`~0zE@twR1/2C4H).^lv-|3ByWU\'hY!"

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->SHA256(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v3, "~Kr*ntApxdYBu{F5"

    .line 123
    .local v3, "iv":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->getSourcePassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v4, v3}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "_crypt_password":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->setSourcePassword(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->toJson()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildMigrareRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v6

    .line 128
    .local v6, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v5, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->isAsynchronousService()Z

    move-result v8

    sget-object v9, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_MIGRATE_ADD_ACCOUNT:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 130
    .local v5, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    new-instance v7, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;

    invoke-direct {v7}, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;-><init>()V

    invoke-virtual {v5, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 131
    invoke-virtual {v5, v6, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 136
    .end local v0    # "_crypt":Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
    .end local v1    # "_crypt_password":Ljava/lang/String;
    .end local v3    # "iv":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    .end local v6    # "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    :goto_0
    return-object v7

    .line 132
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public addMigreateFolder(Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "addFolder"    # Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 142
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildMigrareRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v1

    .line 143
    .local v1, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->isAsynchronousService()Z

    move-result v3

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_ADD_FOLDER:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 145
    .local v0, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 146
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public getMigrateStatus(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildMigrareRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v1

    .line 51
    .local v1, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->isAsynchronousService()Z

    move-result v3

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_MIGRATE_GET_STATUS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 53
    .local v0, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public importMail(Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 17
    .param p1, "importMail"    # Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateImportMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateImportMailResult;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "data":Ljava/lang/String;
    new-instance v12, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl$1;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;)V

    .line 86
    .local v12, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    const-string/jumbo v10, ""

    .line 88
    .local v10, "param":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "?data="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "&accesstoken"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 94
    :goto_0
    new-instance v8, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    sget-object v14, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_MIGRATE_IMPORT_MAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-virtual {v14}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDomainType()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_MIGRATE_IMPORT_MAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 95
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;-><init>(ILjava/lang/String;)V

    .line 98
    .local v8, "method":Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    new-instance v11, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->isAsynchronousService()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v11, v14, v15, v8, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 99
    .local v11, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->getLocalPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "tempFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->getLocalPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v7, "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    :try_start_1
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;

    invoke-direct {v6, v5, v13}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v6, "fileWrapper":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    const-string/jumbo v14, "mail"

    invoke-virtual {v7, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    new-instance v14, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;

    invoke-direct {v14}, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;-><init>()V

    invoke-virtual {v11, v14}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 113
    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v7, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v14

    .end local v6    # "fileWrapper":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    :goto_1
    return-object v14

    .line 90
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .end local v8    # "method":Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .end local v11    # "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    .end local v13    # "tempFileName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .restart local v8    # "method":Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .restart local v11    # "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " cannot read or is not a valid file!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "msg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v4, v14, v9, v2, v15}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Z)V

    .line 109
    .local v4, "exception":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 110
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public updateMigrateStatus(Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "migrateUpdateStatus"    # Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateUpdateStatusResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateUpdateStatusResult;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildMigrareRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v1

    .line 62
    .local v1, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->isAsynchronousService()Z

    move-result v3

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_MIGRATE_UPDATE_STATUS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 64
    .local v0, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 65
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method
