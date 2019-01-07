.class public Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "AccountDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountDatasourceImpl"

.field private static UserAccountColumnsName:[Ljava/lang/String;

.field private static UserHostAuthColumnsName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 644
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v4

    const-string/jumbo v1, "accessToken"

    aput-object v1, v0, v5

    const-string/jumbo v1, "refreshToken"

    aput-object v1, v0, v6

    const-string/jumbo v1, "userId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "deviceId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "expiredTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "masterAccount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserHostAuthColumnsName:[Ljava/lang/String;

    .line 650
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "isDefault"

    aput-object v1, v0, v4

    const-string/jumbo v1, "hostAuthKeyRecv"

    aput-object v1, v0, v5

    const-string/jumbo v1, "hostAuthKeySend"

    aput-object v1, v0, v6

    const-string/jumbo v1, "emailAddress"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "signature"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "accountType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "incoming_password"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "incoming_port"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "incoming_server"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "incoming_ssl"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "smtp_password"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "smtp_server"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "smtp_ssl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "smtp_port"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "oauth_token"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "oauth_refresh_token"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "oauth_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "oauth_last_refresh_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserAccountColumnsName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    .line 41
    return-void
.end method

.method public static buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 4
    .param p0, "account"    # Lcom/alibaba/alimei/framework/db/Account;

    .prologue
    const/4 v1, 0x1

    .line 578
    new-instance v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;-><init>(J)V

    .line 579
    .local v0, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    .line 580
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 581
    iget-boolean v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    iput-boolean v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->isDefaultAccount:Z

    .line 582
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingPassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    .line 583
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpPassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    .line 584
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    iput v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    .line 585
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingServer:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    .line 586
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingPort:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    .line 587
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingSsl:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    .line 588
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    .line 589
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpPort:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    .line 590
    iget v1, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpSsl:I

    iput v1, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    .line 591
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    .line 592
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthRefreshToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthRefreshToken:Ljava/lang/String;

    .line 593
    iget-wide v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthExpires:J

    iput-wide v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    .line 594
    iget-wide v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthLastRefreshTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    .line 595
    return-object v0

    .line 587
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 6
    .param p0, "account"    # Lcom/alibaba/alimei/framework/db/Account;
    .param p1, "isChecAccessToken"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 599
    if-nez p0, :cond_0

    .line 641
    :goto_0
    return-object v1

    .line 603
    :cond_0
    iget v3, p0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    if-eq v3, v2, :cond_1

    .line 605
    invoke-static {p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    goto :goto_0

    .line 609
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    invoke-static {v4, v5}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getHostAuth(J)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v0

    .line 610
    .local v0, "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-nez v0, :cond_2

    .line 611
    const-string/jumbo v2, "AccountDatasourceImpl"

    const-string/jumbo v3, "buildUserAccountModel auth == null"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_2
    if-eqz p1, :cond_4

    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 616
    :cond_3
    const-string/jumbo v2, "AccountDatasourceImpl"

    const-string/jumbo v3, "buildUserAccountModel accessToken == null"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_4
    new-instance v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-wide v4, p0, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-direct {v1, v4, v5}, Lcom/alibaba/alimei/framework/model/UserAccountModel;-><init>(J)V

    .line 620
    .local v1, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    .line 621
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->refreshToken:Ljava/lang/String;

    .line 622
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->nickName:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    .line 623
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->userId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->userId:Ljava/lang/String;

    .line 624
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->masterAccount:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->masterAccount:Ljava/lang/String;

    .line 626
    iget-object v3, p0, Lcom/alibaba/alimei/framework/db/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 627
    iget-boolean v3, p0, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->isDefaultAccount:Z

    .line 628
    iget-object v3, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingPassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    .line 629
    iget-object v3, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpPassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    .line 630
    iget v3, p0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    iput v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    .line 631
    iget-object v3, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingServer:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    .line 632
    iget-object v3, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingPort:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    .line 633
    iget v3, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingSsl:I

    if-ne v3, v2, :cond_5

    :goto_1
    iput-boolean v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    .line 634
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpServer:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    .line 635
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpPort:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    .line 636
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpSsl:I

    iput v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    .line 637
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    .line 638
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthRefreshToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthRefreshToken:Ljava/lang/String;

    .line 639
    iget-wide v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthExpires:J

    iput-wide v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    .line 640
    iget-wide v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthLastRefreshTime:J

    iput-wide v2, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    goto/16 :goto_0

    .line 633
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static copyAuthInfoToHostAuth(Lcom/alibaba/alimei/framework/db/HostAuth;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)V
    .locals 4
    .param p0, "hostAuth"    # Lcom/alibaba/alimei/framework/db/HostAuth;
    .param p1, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    .prologue
    .line 543
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v2, p1, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->email:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->emailAddress:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getExpiredTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->expiredTime:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->userId:Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->nickName:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->deviceId:Ljava/lang/String;

    .line 553
    iget-object v2, p1, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->email:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    .line 554
    iget v2, p1, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accountType:I

    iput v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accountType:I

    .line 555
    iget-object v2, p1, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->masterAccount:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->masterAccount:Ljava/lang/String;

    .line 557
    const-string/jumbo v0, ""

    .line 558
    .local v0, "extend":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    .line 559
    .local v1, "extendList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 560
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_2
    iput-object v0, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->extend:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "decryptStr"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    .end local p0    # "decryptStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 876
    .restart local p0    # "decryptStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    :try_start_0
    invoke-static {p0, v1}, Lzh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final decryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 4
    .param p0, "hostAuth"    # Lcom/alibaba/alimei/framework/db/HostAuth;

    .prologue
    .line 896
    if-nez p0, :cond_0

    .line 897
    const/4 p0, 0x0

    .line 911
    .local v1, "securityKey":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 900
    .end local v1    # "securityKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 901
    .restart local v1    # "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SecurityKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    .line 906
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final decryptToken(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;
    .locals 4
    .param p0, "refreshAuthInfo"    # Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    .prologue
    .line 854
    if-nez p0, :cond_0

    .line 855
    const/4 p0, 0x0

    .line 868
    .local v1, "securityKey":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 858
    .end local v1    # "securityKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 859
    .restart local v1    # "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SecurityKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encryptStr"    # Ljava/lang/String;

    .prologue
    .line 787
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    .end local p0    # "encryptStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 790
    .restart local p0    # "encryptStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 796
    :try_start_0
    invoke-static {p0, v1}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final encryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 4
    .param p0, "hostAuth"    # Lcom/alibaba/alimei/framework/db/HostAuth;

    .prologue
    .line 767
    if-nez p0, :cond_0

    .line 768
    const/4 p0, 0x0

    .line 783
    .local v1, "securityKey":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 771
    .end local v1    # "securityKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 772
    .restart local v1    # "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SecurityKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 777
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    .line 778
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final encryptToken(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    .locals 4
    .param p0, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    .prologue
    .line 804
    if-nez p0, :cond_0

    .line 805
    const/4 p0, 0x0

    .line 820
    .local v1, "securityKey":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 808
    .end local v1    # "securityKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 809
    .restart local v1    # "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SecurityKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 815
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final encryptToken(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;
    .locals 4
    .param p0, "refreshAuthInfo"    # Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    .prologue
    .line 830
    if-nez p0, :cond_0

    .line 831
    const/4 p0, 0x0

    .line 844
    .local v1, "securityKey":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 834
    .end local v1    # "securityKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v1

    .line 835
    .restart local v1    # "securityKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SecurityKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 839
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    invoke-static {v2, v1}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAuthInfoByHostAuth(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    .locals 4
    .param p0, "hostAuth"    # Lcom/alibaba/alimei/framework/db/HostAuth;

    .prologue
    .line 519
    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;-><init>()V

    .line 520
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setAccessToken(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setRefreshToken(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->expiredTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->expiredTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setExpiredTime(J)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setUserId(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setNickname(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setDeviceId(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/alibaba/alimei/framework/db/HostAuth;->masterAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->setMasterAccount(Ljava/lang/String;)V

    .line 529
    return-object v0
.end method

.method private static getHostAuth(J)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 6
    .param p0, "id"    # J

    .prologue
    .line 566
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "HostAuth"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    sget-object v2, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserHostAuthColumnsName:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 572
    .local v0, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    invoke-static {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v2

    .line 574
    .end local v0    # "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHostAuthByAuthInfo(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 1
    .param p0, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    .prologue
    .line 533
    new-instance v0, Lcom/alibaba/alimei/framework/db/HostAuth;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/db/HostAuth;-><init>()V

    .line 534
    .local v0, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    invoke-static {v0, p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->copyAuthInfoToHostAuth(Lcom/alibaba/alimei/framework/db/HostAuth;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)V

    .line 535
    return-object v0
.end method


# virtual methods
.method public getAccountById(J)Lcom/alibaba/alimei/framework/db/Account;
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v2, "almfwork.db"

    const-string/jumbo v3, "account"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, "accountSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/db/Account;

    return-object v1
.end method

.method public getAccountByName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 56
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v2, "almfwork.db"

    const-string/jumbo v3, "account"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "emailAddress=? COLLATE NOCASE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "0, 1"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/db/Account;

    goto :goto_0
.end method

.method public getAccountSyncKey(J)Ljava/lang/String;
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    .line 968
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "account"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "syncKey"

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 971
    const-string/jumbo v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 974
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/alimei/framework/db/Account;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 975
    iget-object v2, v0, Lcom/alibaba/alimei/framework/db/Account;->mSyncKey:Ljava/lang/String;

    .line 977
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    const-string/jumbo v0, "almfwork.db"

    return-object v0
.end method

.method public getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 93
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v4, "almfwork.db"

    const-string/jumbo v5, "account"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v3, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserAccountColumnsName:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 96
    const-string/jumbo v3, "hostAuthKeyRecv != ?"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->count()I

    move-result v1

    .line 98
    .local v1, "count":I
    if-le v1, v6, :cond_0

    .line 99
    const-string/jumbo v3, "isDefault=?"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    const-string/jumbo v3, "0, 1"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 103
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 104
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    if-eqz v0, :cond_1

    .line 105
    invoke-static {v0, v6}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v3

    .line 107
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getHostAuthByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 749
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "HostAuth"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .local v1, "hostAuthSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    const-string/jumbo v3, "accessToken"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "expiredTime"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "refreshToken"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "deviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "accountKey"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "masterAccount"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 755
    const-string/jumbo v2, "login=?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 757
    .local v0, "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v0, :cond_0

    .line 758
    iput-object p1, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    .line 762
    :cond_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 763
    return-object v0
.end method

.method public getHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 7
    .param p1, "hostAuthId"    # J

    .prologue
    .line 932
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "HostAuth"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .local v1, "hostAuthSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 936
    .local v0, "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v0, :cond_0

    .line 937
    iput-wide p1, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    .line 940
    :cond_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 941
    return-object v0
.end method

.method public getSimpleHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 7
    .param p1, "hostAuthId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 916
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "HostAuth"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .local v1, "hostAuthSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "login"

    aput-object v3, v2, v5

    const-string/jumbo v3, "accessToken"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "refreshToken"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "masterAccount"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 920
    const-string/jumbo v2, "_id=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 922
    .local v0, "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v0, :cond_0

    .line 923
    iput-wide p1, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    .line 926
    :cond_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 927
    return-object v0
.end method

.method public getTagSyncKey(J)Ljava/lang/String;
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    .line 982
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "account"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "tagSyncKey"

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 985
    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 988
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/alimei/framework/db/Account;->mTagSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 989
    iget-object v2, v0, Lcom/alibaba/alimei/framework/db/Account;->mTagSyncKey:Ljava/lang/String;

    .line 992
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleAccountDelete(Ljava/lang/String;Z)I
    .locals 16
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isCompleteDelete"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 139
    const/4 v6, 0x0

    .line 140
    .local v6, "result":I
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v10, "almfwork.db"

    const-string/jumbo v11, "account"

    invoke-direct {v7, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v7, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v9, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserAccountColumnsName:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 143
    const-string/jumbo v9, "emailAddress=? COLLATE NOCASE"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/framework/db/Account;

    .line 145
    .local v2, "account":Lcom/alibaba/alimei/framework/db/Account;
    if-eqz v2, :cond_1

    .line 146
    sget-object v10, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v10

    .line 148
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->beginTransaction()V

    .line 150
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v9, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v11, "almfwork.db"

    const-string/jumbo v12, "HostAuth"

    invoke-direct {v5, v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v5, "hostAuthDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v9, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v9, v11}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v6

    .line 155
    new-instance v4, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v11, "almfwork.db"

    const-string/jumbo v12, "account"

    invoke-direct {v4, v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v4, "accountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    if-eqz p2, :cond_2

    .line 160
    new-instance v3, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v9, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v11, "almfwork.db"

    const-string/jumbo v12, "account"

    invoke-direct {v3, v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v3, "accountDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v9, "_id"

    iget-wide v12, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 173
    .end local v3    # "accountDelete":Lcom/alibaba/alimei/orm/query/Delete;
    :goto_0
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 174
    const-string/jumbo v9, "isDefault=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v11}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v9

    if-nez v9, :cond_0

    .line 177
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 178
    const-string/jumbo v9, "0,1"

    invoke-virtual {v7, v9}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 179
    const-string/jumbo v9, "_id != ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v11}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v9, "hostAuthKeySend != ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    move-object v2, v0

    .line 183
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 185
    const-string/jumbo v9, "isDefault"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string/jumbo v9, "_id = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    .line 196
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    .end local v4    # "accountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v5    # "hostAuthDelete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_1
    return v6

    .line 165
    .restart local v4    # "accountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .restart local v5    # "hostAuthDelete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_2
    :try_start_2
    const-string/jumbo v9, "isDefault"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string/jumbo v9, "hostAuthKeyRecv"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v9, "hostAuthKeySend"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string/jumbo v9, "_id"

    iget-wide v12, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 191
    .end local v4    # "accountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v5    # "hostAuthDelete":Lcom/alibaba/alimei/orm/query/Delete;
    :catch_0
    move-exception v8

    .line 192
    .local v8, "sqlex":Landroid/database/SQLException;
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    .end local v8    # "sqlex":Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    throw v9

    .line 196
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9
.end method

.method public hasAccountLogin()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 112
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v6, "almfwork.db"

    const-string/jumbo v7, "account"

    invoke-direct {v2, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v4

    const-string/jumbo v6, "hostAuthKeyRecv"

    aput-object v6, v5, v3

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 115
    const-string/jumbo v5, "isDefault=?"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v5, "hostAuthKeyRecv != ?"

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v5, "0, 1"

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 118
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 120
    .local v0, "defaultAccount":Lcom/alibaba/alimei/framework/db/Account;
    if-eqz v0, :cond_2

    .line 121
    iget v5, v0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    if-eq v5, v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v3

    .line 125
    :cond_1
    iget-wide v6, v0, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getSimpleHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v1

    .line 126
    .local v1, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1    # "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :cond_2
    move v3, v4

    .line 131
    goto :goto_0
.end method

.method public hasLogin(Ljava/lang/String;)Z
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    if-nez p1, :cond_1

    .line 66
    const-string/jumbo v3, "AccountDatasourceImpl"

    const-string/jumbo v4, "==hasLogin==> accountName == null"

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_0
    return v5

    .line 69
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v6, "almfwork.db"

    const-string/jumbo v7, "account"

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v3, v5

    const-string/jumbo v6, "hostAuthKeyRecv"

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 71
    const-string/jumbo v3, "emailAddress=? COLLATE NOCASE"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v3, "0, 1"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 73
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 74
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    const-string/jumbo v6, "AccountDatasourceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasLogin, account:"

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    if-eq v3, v4, :cond_3

    move v5, v4

    .line 78
    goto :goto_0

    :cond_2
    move v3, v5

    .line 74
    goto :goto_1

    .line 81
    :cond_3
    iget-wide v6, v0, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getSimpleHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v1

    .line 82
    .local v1, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v5, v4

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    const-string/jumbo v3, "AccountDatasourceImpl"

    const-string/jumbo v4, "hasLogin, hostAuth == null"

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized insertAccountWithHostAuth(Ljava/lang/String;ZLcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 18
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "asDefaultAccount"    # Z
    .param p3, "hostAuth"    # Lcom/alibaba/alimei/framework/db/HostAuth;

    .prologue
    .line 287
    monitor-enter p0

    move/from16 v5, p2

    .line 289
    .local v5, "factIsDefault":Z
    if-nez p2, :cond_0

    .line 290
    :try_start_0
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v12, "almfwork.db"

    const-string/jumbo v13, "account"

    invoke-direct {v4, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v4, "defaultSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v11, "isDefault=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v11

    if-nez v11, :cond_0

    .line 294
    const/4 v5, 0x1

    .line 299
    .end local v4    # "defaultSelect":Lcom/alibaba/alimei/orm/query/Select;
    :cond_0
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v12, "almfwork.db"

    const-string/jumbo v13, "account"

    invoke-direct {v8, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v8, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "emailAddress"

    aput-object v13, v11, v12

    invoke-virtual {v8, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 302
    const-string/jumbo v11, "emailAddress=?  COLLATE NOCASE"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v8, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/framework/db/Account;

    .line 306
    .local v2, "account":Lcom/alibaba/alimei/framework/db/Account;
    sget-object v12, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 308
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->beginTransaction()V

    .line 310
    if-eqz v2, :cond_2

    iget-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    const-wide/16 v16, -0x1

    cmp-long v11, v14, v16

    if-eqz v11, :cond_2

    .line 311
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "account.mId-1:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lyx;->b(Ljava/lang/String;)I

    .line 313
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    const-class v11, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v13, "almfwork.db"

    const-string/jumbo v14, "account"

    invoke-direct {v10, v11, v13, v14}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v10, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "hostAuthKeyRecv"

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    const-string/jumbo v11, "hostAuthKeySend"

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    const-string/jumbo v11, "displayName"

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->nickName:Ljava/lang/String;

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    const-string/jumbo v11, "isDefault"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    const-string/jumbo v11, "extend"

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->extend:Ljava/lang/String;

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    const-string/jumbo v11, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-wide v0, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 324
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    iput-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    .line 325
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    iput-wide v14, v2, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeySend:J

    .line 326
    iput-boolean v5, v2, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    .line 354
    :goto_0
    if-eqz p2, :cond_1

    .line 355
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    .end local v10    # "update":Lcom/alibaba/alimei/orm/query/Update;
    const-class v11, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v13, "almfwork.db"

    const-string/jumbo v14, "account"

    invoke-direct {v10, v11, v13, v14}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .restart local v10    # "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "isDefault"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string/jumbo v11, "_id!=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-wide v0, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 363
    :cond_1
    const/4 v11, 0x1

    invoke-static {v2, v11}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v7

    .line 364
    .local v7, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    iput-object v11, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    .line 365
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    iput-object v11, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->refreshToken:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->expiredTime:Ljava/lang/String;

    iput-object v11, v7, Lcom/alibaba/alimei/framework/model/UserAccountModel;->expiresTime:Ljava/lang/String;

    .line 369
    new-instance v6, Lcom/alibaba/alimei/orm/query/Update;

    const-class v11, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v13, "almfwork.db"

    const-string/jumbo v14, "HostAuth"

    invoke-direct {v6, v11, v13, v14}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v6, "hostAuthUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "accountKey"

    invoke-virtual {v7}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    const-string/jumbo v11, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    .line 381
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    monitor-exit p0

    return-object v7

    .line 329
    .end local v6    # "hostAuthUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v7    # "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v10    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    :try_start_3
    new-instance v3, Lcom/alibaba/alimei/framework/db/Account;

    invoke-direct {v3}, Lcom/alibaba/alimei/framework/db/Account;-><init>()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .local v3, "account":Lcom/alibaba/alimei/framework/db/Account;
    :try_start_4
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    iput-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    .line 331
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    iput-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeySend:J

    .line 332
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->nickName:Ljava/lang/String;

    iput-object v11, v3, Lcom/alibaba/alimei/framework/db/Account;->mDisplayName:Ljava/lang/String;

    .line 333
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    iput-object v11, v3, Lcom/alibaba/alimei/framework/db/Account;->mEmailAddress:Ljava/lang/String;

    .line 334
    iput-boolean v5, v3, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    .line 335
    const/4 v11, -0x2

    iput v11, v3, Lcom/alibaba/alimei/framework/db/Account;->mSyncInterval:I

    .line 336
    const/4 v11, 0x1

    iput v11, v3, Lcom/alibaba/alimei/framework/db/Account;->notifyCalendarOn:I

    .line 337
    const/4 v11, 0x1

    iput v11, v3, Lcom/alibaba/alimei/framework/db/Account;->notifyCallOn:I

    .line 338
    const/4 v11, 0x1

    iput v11, v3, Lcom/alibaba/alimei/framework/db/Account;->notifyMailOn:I

    .line 339
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    iput-object v11, v3, Lcom/alibaba/alimei/framework/db/Account;->senderAddress:Ljava/lang/String;

    .line 340
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->extend:Ljava/lang/String;

    iput-object v11, v3, Lcom/alibaba/alimei/framework/db/Account;->extend:Ljava/lang/String;

    .line 342
    const-string/jumbo v11, "almfwork.db"

    const-string/jumbo v13, "account"

    invoke-static {v11, v13, v3}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    .line 344
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "account.mId-2:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lyx;->b(Ljava/lang/String;)I

    .line 346
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    const-class v11, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v13, "almfwork.db"

    const-string/jumbo v14, "HostAuth"

    invoke-direct {v10, v11, v13, v14}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .restart local v10    # "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v11, "accountKey"

    iget-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v2, v3

    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    goto/16 :goto_0

    .line 375
    .end local v10    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :catch_0
    move-exception v9

    .line 376
    .local v9, "sqlex":Landroid/database/SQLException;
    :goto_1
    :try_start_5
    const-string/jumbo v11, "insertAccountWithHostAuth"

    invoke-static {v11, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    .end local v9    # "sqlex":Landroid/database/SQLException;
    :catchall_0
    move-exception v11

    :goto_2
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    throw v11

    .line 381
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 287
    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .end local v8    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :catchall_2
    move-exception v11

    monitor-exit p0

    throw v11

    .line 379
    .restart local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v8    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :catchall_3
    move-exception v11

    move-object v2, v3

    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    goto :goto_2

    .line 375
    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    :catch_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    goto :goto_1
.end method

.method public insertCommonAccount(Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 20
    .param p1, "accountModel"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p2, "asDefaultAccount"    # Z

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    const/4 v7, 0x0

    .line 515
    :goto_0
    return-object v7

    .line 390
    :cond_0
    move/from16 v5, p2

    .line 392
    .local v5, "factIsDefault":Z
    if-nez p2, :cond_1

    .line 393
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v14, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v15, "almfwork.db"

    const-string/jumbo v16, "account"

    move-object/from16 v0, v16

    invoke-direct {v4, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v4, "defaultSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v14, "isDefault=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v4, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v14

    if-nez v14, :cond_1

    .line 397
    const/4 v5, 0x1

    .line 402
    .end local v4    # "defaultSelect":Lcom/alibaba/alimei/orm/query/Select;
    :cond_1
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v14, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v15, "almfwork.db"

    const-string/jumbo v16, "account"

    move-object/from16 v0, v16

    invoke-direct {v10, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .local v10, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "_id"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "emailAddress"

    aput-object v16, v14, v15

    invoke-virtual {v10, v14}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 405
    const-string/jumbo v14, "emailAddress=? COLLATE NOCASE"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/framework/db/Account;

    .line 409
    .local v2, "account":Lcom/alibaba/alimei/framework/db/Account;
    sget-object v15, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v15

    .line 411
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->beginTransaction()V

    .line 416
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    invoke-static {v14}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "incomingPassword":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    invoke-static {v14}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 418
    .local v11, "smtpPassword":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-static {v14}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "oauthToken":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthRefreshToken:Ljava/lang/String;

    invoke-static {v14}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, "oauthRefreshToken":Ljava/lang/String;
    if-eqz v2, :cond_d

    iget-wide v0, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v14, v16, v18

    if-eqz v14, :cond_d

    .line 423
    new-instance v13, Lcom/alibaba/alimei/orm/query/Update;

    const-class v14, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v16, "almfwork.db"

    const-string/jumbo v17, "account"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v13, v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v13, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 426
    const-string/jumbo v14, "incoming_password"

    invoke-virtual {v13, v14, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 429
    const-string/jumbo v14, "smtp_password"

    invoke-virtual {v13, v14, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 432
    const-string/jumbo v14, "incoming_server"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    :cond_4
    const-string/jumbo v14, "accountType"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 436
    const-string/jumbo v14, "incoming_port"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    :cond_5
    const-string/jumbo v14, "incoming_ssl"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 440
    const-string/jumbo v14, "smtp_server"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 443
    const-string/jumbo v14, "smtp_port"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 446
    const-string/jumbo v14, "oauth_token"

    invoke-virtual {v13, v14, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 449
    const-string/jumbo v14, "oauth_refresh_token"

    invoke-virtual {v13, v14, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-lez v14, :cond_a

    .line 452
    const-string/jumbo v14, "oauth_expires"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    :cond_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-lez v14, :cond_b

    .line 455
    const-string/jumbo v14, "oauth_last_refresh_time"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    :cond_b
    const-string/jumbo v14, "smtp_ssl"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    const-string/jumbo v14, "isDefault"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const-string/jumbo v14, "_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-wide v0, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 462
    iput-boolean v5, v2, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    .line 498
    .end local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_1
    if-eqz p2, :cond_c

    .line 499
    new-instance v13, Lcom/alibaba/alimei/orm/query/Update;

    const-class v14, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v16, "almfwork.db"

    const-string/jumbo v17, "account"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v13, v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .restart local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v14, "isDefault"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string/jumbo v14, "_id!=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-wide v0, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 507
    .end local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_c
    invoke-static {v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v7

    .line 508
    .local v7, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 512
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    .line 514
    monitor-exit v15

    goto/16 :goto_0

    .end local v6    # "incomingPassword":Ljava/lang/String;
    .end local v7    # "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v8    # "oauthRefreshToken":Ljava/lang/String;
    .end local v9    # "oauthToken":Ljava/lang/String;
    .end local v11    # "smtpPassword":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 465
    .restart local v6    # "incomingPassword":Ljava/lang/String;
    .restart local v8    # "oauthRefreshToken":Ljava/lang/String;
    .restart local v9    # "oauthToken":Ljava/lang/String;
    .restart local v11    # "smtpPassword":Ljava/lang/String;
    :cond_d
    :try_start_2
    new-instance v3, Lcom/alibaba/alimei/framework/db/Account;

    invoke-direct {v3}, Lcom/alibaba/alimei/framework/db/Account;-><init>()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 466
    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .local v3, "account":Lcom/alibaba/alimei/framework/db/Account;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mDisplayName:Ljava/lang/String;

    .line 467
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mEmailAddress:Ljava/lang/String;

    .line 468
    iput-boolean v5, v3, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    .line 469
    const/4 v14, -0x2

    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mSyncInterval:I

    .line 470
    const/4 v14, 0x1

    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->notifyCalendarOn:I

    .line 471
    const/4 v14, 0x1

    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->notifyCallOn:I

    .line 472
    const/4 v14, 0x1

    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->notifyMailOn:I

    .line 473
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->senderAddress:Ljava/lang/String;

    .line 474
    iput-object v11, v3, Lcom/alibaba/alimei/framework/db/Account;->smtpPassword:Ljava/lang/String;

    .line 475
    move-object/from16 v0, p1

    iget v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    .line 476
    iput-object v6, v3, Lcom/alibaba/alimei/framework/db/Account;->incomingPassword:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->incomingServer:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->incomingPort:Ljava/lang/String;

    .line 479
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    :goto_2
    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->incomingSsl:I

    .line 480
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->smtpServer:Ljava/lang/String;

    .line 481
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/alimei/framework/db/Account;->smtpPort:Ljava/lang/String;

    .line 482
    move-object/from16 v0, p1

    iget v14, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    iput v14, v3, Lcom/alibaba/alimei/framework/db/Account;->smtpSsl:I

    .line 483
    iput-object v9, v3, Lcom/alibaba/alimei/framework/db/Account;->oauthToken:Ljava/lang/String;

    .line 484
    iput-object v8, v3, Lcom/alibaba/alimei/framework/db/Account;->oauthRefreshToken:Ljava/lang/String;

    .line 485
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/alibaba/alimei/framework/db/Account;->oauthExpires:J

    .line 486
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/alibaba/alimei/framework/db/Account;->oauthLastRefreshTime:J

    .line 488
    const-string/jumbo v14, "almfwork.db"

    const-string/jumbo v16, "account"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v3}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/alibaba/alimei/framework/db/Account;->mId:J
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v2, v3

    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    goto/16 :goto_1

    .line 479
    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    :cond_e
    const/4 v14, 0x0

    goto :goto_2

    .line 509
    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .end local v6    # "incomingPassword":Ljava/lang/String;
    .end local v8    # "oauthRefreshToken":Ljava/lang/String;
    .end local v9    # "oauthToken":Ljava/lang/String;
    .end local v11    # "smtpPassword":Ljava/lang/String;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    :catch_0
    move-exception v12

    .line 510
    .local v12, "sqlex":Landroid/database/SQLException;
    :goto_3
    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    .end local v12    # "sqlex":Landroid/database/SQLException;
    :catchall_1
    move-exception v14

    :goto_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v6    # "incomingPassword":Ljava/lang/String;
    .restart local v8    # "oauthRefreshToken":Ljava/lang/String;
    .restart local v9    # "oauthToken":Ljava/lang/String;
    .restart local v11    # "smtpPassword":Ljava/lang/String;
    :catchall_2
    move-exception v14

    move-object v2, v3

    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    goto :goto_4

    .line 509
    .end local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    :catch_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v2    # "account":Lcom/alibaba/alimei/framework/db/Account;
    goto :goto_3
.end method

.method public loadAuthInfoByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getHostAuthByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v0

    .line 661
    .local v0, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v0, :cond_0

    .line 662
    invoke-static {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getAuthInfoByHostAuth(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    move-result-object v1

    .line 664
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 257
    if-nez p1, :cond_0

    .line 258
    const-string/jumbo v2, "AccountDatasourceImpl"

    const-string/jumbo v3, "==queryAccountByAccountName==> accountName == null"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v2, 0x0

    .line 269
    :goto_0
    return-object v2

    .line 261
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v5, "almfwork.db"

    const-string/jumbo v6, "account"

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v4, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserAccountColumnsName:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 264
    const-string/jumbo v4, "emailAddress=? COLLATE NOCASE"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v4, "0, 1"

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 266
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 267
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    const-string/jumbo v4, "AccountDatasourceImpl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "==queryAccountByAccountName==> "

    aput-object v6, v5, v2

    if-nez v0, :cond_1

    move v2, v3

    .line 268
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 267
    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v0, v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    goto :goto_0
.end method

.method public queryAccountById(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    const/4 v6, 0x1

    .line 274
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "account"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v2, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserAccountColumnsName:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 277
    const-string/jumbo v2, "_id=?"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v2, "0, 1"

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 279
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 280
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    invoke-static {v0, v6}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    return-object v2
.end method

.method public queryAllAccount()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v3, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v6, "almfwork.db"

    const-string/jumbo v7, "account"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v5, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->UserAccountColumnsName:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 243
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/db/Account;>;"
    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 245
    .local v0, "account":Lcom/alibaba/alimei/framework/db/Account;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->buildUserAccountModel(Lcom/alibaba/alimei/framework/db/Account;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 246
    .local v2, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v0    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .end local v2    # "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    return-object v3
.end method

.method public queryAllHostAuth()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/db/HostAuth;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 997
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v5, "almfwork.db"

    const-string/jumbo v6, "HostAuth"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .local v2, "hostAuthSelect":Lcom/alibaba/alimei/orm/query/Select;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 1000
    .local v1, "auths":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/db/HostAuth;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/framework/db/HostAuth;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1002
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 1003
    .local v0, "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    iget-object v5, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1006
    invoke-static {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 1007
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    .end local v0    # "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :cond_1
    return-object v3
.end method

.method public setDefaultAccount(Ljava/lang/String;)I
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return v2

    .line 207
    :cond_0
    sget-object v4, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->beginTransaction()V

    .line 211
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v5, "almfwork.db"

    const-string/jumbo v6, "account"

    invoke-direct {v1, v2, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "isDefault"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string/jumbo v2, "isDefault=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v2, "emailAddress!= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 221
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 222
    const-string/jumbo v2, "isDefault"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v2, "isDefault=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v2, "emailAddress= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    .line 232
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v3

    .line 233
    goto :goto_0

    .line 227
    .end local v1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "sqlex":Landroid/database/SQLException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .end local v0    # "sqlex":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    throw v2

    .line 232
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public storeAuthInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 16
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 670
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 671
    .local v2, "accessToken":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    .line 672
    .local v6, "refreshToken":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getHostAuthByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v5

    .line 673
    .local v5, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    sget-object v10, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v10

    .line 675
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->beginTransaction()V

    .line 676
    if-nez v5, :cond_0

    .line 677
    invoke-static/range {p2 .. p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getHostAuthByAuthInfo(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v5

    .line 678
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    .line 680
    invoke-static {v5}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encryptToken(Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 682
    const-string/jumbo v9, "almfwork.db"

    const-string/jumbo v11, "HostAuth"

    invoke-static {v9, v11, v5}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    move-result-wide v12

    iput-wide v12, v5, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    .line 711
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    .line 717
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 719
    iput-object v2, v5, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    .line 720
    iput-object v6, v5, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    .line 722
    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 723
    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    .line 724
    return-object v5

    .line 686
    :cond_0
    :try_start_2
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->copyAuthInfoToHostAuth(Lcom/alibaba/alimei/framework/db/HostAuth;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)V

    .line 689
    invoke-static/range {p2 .. p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encryptToken(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    .line 690
    new-instance v8, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v11, "almfwork.db"

    const-string/jumbo v12, "HostAuth"

    invoke-direct {v8, v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .local v8, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v9, "address"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getEmail()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    const-string/jumbo v9, "accessToken"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    const-string/jumbo v9, "refreshToken"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getRefreshToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    const-string/jumbo v9, "expiredTime"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getExpiredTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    const-string/jumbo v9, "userId"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    const-string/jumbo v9, "nickname"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getNickname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    const-string/jumbo v9, "deviceId"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    const-string/jumbo v9, "masterAccount"

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->masterAccount:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    const-string/jumbo v9, "accountType"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getAccountType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    const-string/jumbo v3, ""

    .line 703
    .local v3, "extend":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    .line 704
    .local v4, "extendList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 705
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 707
    :cond_1
    const-string/jumbo v9, "extend"

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    const-string/jumbo v9, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v14, v5, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v11}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 712
    .end local v3    # "extend":Ljava/lang/String;
    .end local v4    # "extendList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;>;"
    .end local v8    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :catch_0
    move-exception v7

    .line 713
    .local v7, "sqlex":Landroid/database/SQLException;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 715
    .end local v7    # "sqlex":Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->endTransaction()V

    throw v9

    .line 717
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9
.end method

.method public updateAccountSyncKey(JLjava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "newSyncKey"    # Ljava/lang/String;

    .prologue
    .line 946
    sget-object v2, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 947
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "account"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .local v0, "acountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "syncKey"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 950
    const-string/jumbo v1, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 952
    monitor-exit v2

    return-void

    .end local v0    # "acountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAuthInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->getHostAuthByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v0

    .line 730
    .local v0, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-nez v0, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 744
    .end local v0    # "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :goto_0
    return-object v0

    .line 733
    .restart local v0    # "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :cond_0
    sget-object v3, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 734
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->encryptToken(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    .line 735
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v4, "almfwork.db"

    const-string/jumbo v5, "HostAuth"

    invoke-direct {v1, v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "accessToken"

    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    const-string/jumbo v2, "expiredTime"

    iget-wide v4, p2, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->expiredTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    const-string/jumbo v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 741
    invoke-static {p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;->decryptToken(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    .line 742
    monitor-exit v3

    goto :goto_0

    .end local v1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateTagSyncKey(JLjava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "newSyncKey"    # Ljava/lang/String;

    .prologue
    .line 957
    sget-object v2, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 958
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v3, "almfwork.db"

    const-string/jumbo v4, "account"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .local v0, "acountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "tagSyncKey"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    const-string/jumbo v1, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 963
    monitor-exit v2

    return-void

    .end local v0    # "acountUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
