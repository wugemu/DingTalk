.class public Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "CommonAccountApiImpl.java"

# interfaces
.implements Lpq;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public checkConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 14
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "incomingPassword"    # Ljava/lang/String;
    .param p3, "incomingServer"    # Ljava/lang/String;
    .param p4, "incomingPort"    # Ljava/lang/String;
    .param p5, "incomingSsl"    # Z
    .param p6, "smtpPassword"    # Ljava/lang/String;
    .param p7, "smtpServer"    # Ljava/lang/String;
    .param p8, "smtpPort"    # Ljava/lang/String;
    .param p9, "smtpSsl"    # Z
    .param p10, "allowInvalidCertificates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    .local p11, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v13

    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLxv;)V

    invoke-interface {v13, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;
    .locals 8
    .param p1, "mail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 292
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v7

    .line 293
    .local v7, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    new-instance v0, Lcom/alibaba/alimei/emailcommon/CommonAccount;

    iget-object v1, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v2, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    iget-object v3, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    iget-object v4, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    iget-boolean v5, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/emailcommon/CommonAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    .local v0, "commonAccount":Lcom/alibaba/alimei/emailcommon/CommonAccount;
    iget-object v1, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    iget-object v2, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    iget-object v3, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    iget v4, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->setSmtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    iget-object v1, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->setEnableSasl(Z)V

    .line 297
    iget-object v1, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->setOauthToken(Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkAccount(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/CommonAccount;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v6

    .line 300
    .local v6, "account":Lcom/alibaba/alimei/emailcommon/Account;
    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->HTML:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 2046
    iput-object v1, v6, Lcom/alibaba/alimei/emailcommon/Account;->d:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 301
    return-object v6
.end method

.method public getLastCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getLastCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public isCommonAccount(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v2

    .line 310
    :cond_1
    :try_start_0
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    invoke-virtual {v4, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 311
    .local v0, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->isCommonAccount()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 312
    goto :goto_0

    .line 314
    .end local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CommonAccountApiImpl"

    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isCommonAccount invoke exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 13
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "incomingPassword"    # Ljava/lang/String;
    .param p3, "incomingServer"    # Ljava/lang/String;
    .param p4, "incomingPort"    # Ljava/lang/String;
    .param p5, "incomingSsl"    # Z
    .param p6, "smtpPassword"    # Ljava/lang/String;
    .param p7, "smtpServer"    # Ljava/lang/String;
    .param p8, "smtpPort"    # Ljava/lang/String;
    .param p9, "smtpSsl"    # Z
    .param p10, "allowInvalidCertificates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    .local p11, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p6

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v12, v0

    invoke-virtual/range {v1 .. v12}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->checkConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    .line 112
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 14
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 61
    .local v13, "indexSplit":I
    const/4 v12, 0x0

    .line 62
    .local v12, "domain":Ljava/lang/String;
    const/4 v0, -0x1

    if-eq v13, v0, :cond_2

    .line 63
    add-int/lit8 v0, v13, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "imap."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "incomingServer":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "smtp."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "smtpServer":Ljava/lang/String;
    const-string/jumbo v4, "993"

    const/4 v5, 0x1

    const-string/jumbo v8, "465"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    goto :goto_0
.end method

.method public login4Gmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lxv;)V
    .locals 7
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 324
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v6

    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lxv;)V

    invoke-interface {v6, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method public loginOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 13
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "oauthToken"    # Ljava/lang/String;
    .param p3, "tokenExpireTime"    # Ljava/lang/Long;
    .param p4, "incomingServer"    # Ljava/lang/String;
    .param p5, "incomingPort"    # Ljava/lang/String;
    .param p6, "incomingSsl"    # Z
    .param p7, "smtpServer"    # Ljava/lang/String;
    .param p8, "smtpPort"    # Ljava/lang/String;
    .param p9, "smtpSecurity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 178
    .local p10, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v12

    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p3

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Lxv;)V

    invoke-interface {v12, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public loginOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 16
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "oauthToken"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .param p4, "expiresTime"    # J
    .param p6, "incomingServer"    # Ljava/lang/String;
    .param p7, "incomingPort"    # Ljava/lang/String;
    .param p8, "incomingSsl"    # Z
    .param p9, "smtpServer"    # Ljava/lang/String;
    .param p10, "smtpPort"    # Ljava/lang/String;
    .param p11, "smtpSecurity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p12, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;JLxv;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public logout(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 380
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-static {}, Laif;->a()Laie;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$7;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Lxv;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public trustCertificateChain([Ljava/security/cert/X509Certificate;Lxv;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 349
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;[Ljava/security/cert/X509Certificate;Lxv;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method
