.class public final Lafw;
.super Ljava/lang/Object;
.source "AlimeiSDKProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 154
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0}, Lpp;->c(Ljava/lang/String;)Lcom/alibaba/alimei/adpater/display/CommonFolderDisplayer;

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/FolderDisplayer;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JJJ)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "accountId"    # J
    .param p3, "uid"    # J
    .param p5, "folderId"    # J

    .prologue
    .line 213
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 214
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 215
    invoke-static/range {p0 .. p6}, Lpp;->a(Ljava/lang/String;JJJ)V

    .line 219
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 183
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 184
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0, p1}, Lpp;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {p0, p1}, Lafv;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 114
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v6, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 115
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 117
    .local v5, "object":Lcom/google/gson/JsonObject;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "email":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    const-string/jumbo v7, "email"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 120
    .local v3, "emailData":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v3    # "emailData":Lcom/google/gson/JsonElement;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 124
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v7

    invoke-interface {v7, v2}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v4

    .line 125
    .local v4, "isCommonEmail":Z
    if-eqz v4, :cond_3

    .line 126
    invoke-static {v2, v5}, Lpp;->a(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 138
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "email":Ljava/lang/String;
    .end local v4    # "isCommonEmail":Z
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    :cond_1
    :goto_1
    return-void

    .line 117
    .restart local v1    # "element":Lcom/google/gson/JsonElement;
    .restart local v5    # "object":Lcom/google/gson/JsonObject;
    .restart local v6    # "parser":Lcom/google/gson/JsonParser;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v4    # "isCommonEmail":Z
    :cond_3
    invoke-static {p0, p1}, Lafv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 132
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "email":Ljava/lang/String;
    .end local v4    # "isCommonEmail":Z
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v7, Lzb;->b:Z

    if-eqz v7, :cond_4

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_4
    const-string/jumbo v7, "AlimeiSDKProxy"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "onPushMessageArrived "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 12
    .param p0, "mail"    # Ljava/lang/String;
    .param p1, "oauthToken"    # Ljava/lang/String;
    .param p2, "tokenExpireTime"    # Ljava/lang/Long;
    .param p3, "incomingPassword"    # Ljava/lang/String;
    .param p4, "incomingServer"    # Ljava/lang/String;
    .param p5, "incomingPort"    # Ljava/lang/String;
    .param p6, "incomingSsl"    # Z
    .param p7, "smtpPassword"    # Ljava/lang/String;
    .param p8, "smtpServer"    # Ljava/lang/String;
    .param p9, "smtpPort"    # Ljava/lang/String;
    .param p10, "smtpSecurity"    # Z
    .param p11, "allowInvalidCertificates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p12, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-string/jumbo v1, ""

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lpq;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    .line 1432
    invoke-interface/range {v0 .. v11}, Lpq;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    .line 454
    :goto_0
    return-void

    .line 1461
    :cond_0
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-string/jumbo v1, ""

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lpq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p12

    .line 1462
    invoke-interface/range {v0 .. v10}, Lpq;->loginOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLxv;)V

    goto :goto_0
.end method

.method public static a([Ljava/security/cert/X509Certificate;Lxv;)V
    .locals 4
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v1

    const-string/jumbo v2, ""

    const-class v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lpq;

    .line 482
    .local v0, "commonAccountApi":Lpq;
    invoke-interface {v0, p0, p1}, Lpq;->trustCertificateChain([Ljava/security/cert/X509Certificate;Lxv;)V

    .line 483
    return-void
.end method

.method public static a()[Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    .line 475
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v1

    const-string/jumbo v2, ""

    const-class v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lpq;

    .line 477
    .local v0, "commonAccountApi":Lpq;
    invoke-interface {v0}, Lpq;->getLastCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 263
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 197
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "isCommonAccount":Z
    if-nez v0, :cond_0

    .line 201
    invoke-static {p0, p1}, Lafv;->b(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 203
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 319
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v1

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/api/MailApi;

    .line 322
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 332
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v1

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonTagApiImpl;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/api/TagApi;

    .line 335
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 345
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v1

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    .line 348
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 386
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 387
    invoke-static {p0}, Lpp;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    move-result-object v1

    .line 390
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->g(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    move-result-object v1

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 400
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_0

    .line 401
    invoke-static {p0}, Lpp;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lafv;->h(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v1

    goto :goto_0
.end method
