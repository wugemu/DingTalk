.class public Lcom/ali/user/enterprise/base/helper/LoginDataHelper;
.super Ljava/lang/Object;
.source "LoginDataHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login.LoginDataHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustSessionExpireTime(JJ)J
    .locals 8
    .param p0, "expire"    # J
    .param p2, "serverTime"    # J

    .prologue
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 202
    .local v2, "currentTime":J
    move-wide v0, p0

    .line 203
    .local v0, "adjustTime":J
    cmp-long v4, v2, p2

    if-lez v4, :cond_0

    .line 205
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-lez v4, :cond_1

    .line 206
    sub-long v4, v2, p2

    add-long v0, p0, v4

    .line 212
    :cond_0
    :goto_0
    return-wide v0

    .line 209
    :cond_1
    const-wide/32 v4, 0x15180

    add-long v0, v2, v4

    goto :goto_0
.end method

.method public static handleHistory(Lcom/ali/user/enterprise/base/data/LoginReturnData;Lcom/ali/user/enterprise/base/session/ISession;Lcom/ali/user/enterprise/base/data/AliUserResponseData;)V
    .locals 4
    .param p0, "loginData"    # Lcom/ali/user/enterprise/base/data/LoginReturnData;
    .param p1, "session"    # Lcom/ali/user/enterprise/base/session/ISession;
    .param p2, "data"    # Lcom/ali/user/enterprise/base/data/AliUserResponseData;

    .prologue
    .line 68
    new-instance v0, Lcom/ali/user/enterprise/base/data/SessionModel;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/data/SessionModel;-><init>()V

    .line 69
    .local v0, "sessionModel":Lcom/ali/user/enterprise/base/data/SessionModel;
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->sid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->sid:Ljava/lang/String;

    .line 70
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->ecode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->ecode:Ljava/lang/String;

    .line 71
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->nick:Ljava/lang/String;

    .line 72
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    .line 73
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->email:Ljava/lang/String;

    .line 74
    iget-wide v2, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->havanaId:J

    iput-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->havanaId:J

    .line 75
    iget-wide v2, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->alipayHid:J

    iput-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->alipayHid:J

    .line 76
    iget-wide v2, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->loginTime:J

    iput-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->loginTime:J

    .line 77
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->autoLoginToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->autoLoginToken:Ljava/lang/String;

    .line 78
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->headPicLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->headPicLink:Ljava/lang/String;

    .line 79
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->havanaSsoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->havanaSsoToken:Ljava/lang/String;

    .line 80
    iget-wide v2, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->havanaSsoTokenExpiredTime:J

    iput-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->havanaSsoTokenExpiredTime:J

    .line 81
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->externalCookies:[Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->externalCookies:[Ljava/lang/String;

    .line 82
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->cookies:[Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->cookies:[Ljava/lang/String;

    .line 83
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->ssoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->ssoToken:Ljava/lang/String;

    .line 84
    iget-wide v2, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->expires:J

    iput-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->expires:J

    .line 85
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->extendAttribute:Ljava/util/Map;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->extendAttribute:Ljava/util/Map;

    .line 86
    iget-object v1, p2, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->loginServiceExt:Ljava/util/Map;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->loginServiceExt:Ljava/util/Map;

    .line 88
    iget-object v1, p0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "corpId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->corpId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "biz_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->bizType:Ljava/lang/String;

    .line 92
    :cond_0
    invoke-static {v0}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->putSessionModelToFile(Lcom/ali/user/enterprise/base/data/SessionModel;)V

    .line 93
    return-void
.end method

.method public static onLoginSuccess(Lcom/ali/user/enterprise/base/data/LoginReturnData;Lcom/ali/user/enterprise/base/data/AliUserResponseData;Lcom/ali/user/enterprise/base/session/ISession;)V
    .locals 34
    .param p0, "loginData"    # Lcom/ali/user/enterprise/base/data/LoginReturnData;
    .param p1, "data"    # Lcom/ali/user/enterprise/base/data/AliUserResponseData;
    .param p2, "session"    # Lcom/ali/user/enterprise/base/session/ISession;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->sid:Ljava/lang/String;

    .line 134
    .local v5, "sid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->ecode:Ljava/lang/String;

    .line 135
    .local v6, "ecode":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->nick:Ljava/lang/String;

    .line 136
    .local v7, "nick":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->userId:Ljava/lang/String;

    .line 137
    .local v8, "userId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->extendAttribute:Ljava/util/Map;

    move-object/from16 v30, v0

    .line 138
    .local v30, "extendAttribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->headPicLink:Ljava/lang/String;

    .line 139
    .local v9, "headPicLink":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->autoLoginToken:Ljava/lang/String;

    .line 140
    .local v10, "autoLoginToken":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->ssoToken:Ljava/lang/String;

    .line 141
    .local v11, "ssoToken":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->havanaSsoToken:Ljava/lang/String;

    .line 142
    .local v12, "oneTimeToken":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->havanaSsoTokenExpiredTime:J

    .line 143
    .local v13, "havanaSsoExpire":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->expires:J

    move-wide/from16 v28, v0

    .line 144
    .local v28, "expires":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->loginTime:J

    move-wide/from16 v20, v0

    .line 145
    .local v20, "loginTime":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->externalCookies:[Ljava/lang/String;

    .line 146
    .local v15, "externalCookies":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->cookies:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 147
    .local v16, "cookies":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->email:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 148
    .local v27, "email":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->loginPhone:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 150
    .local v22, "loginPhone":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->uidDigest:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 153
    .local v33, "sessionKey":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v7, v8, v0}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/taobao/dp/DeviceSecuritySDK;->sendLoginResult(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v32

    .line 162
    .local v32, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v32, :cond_0

    .line 163
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDataCollectionComp()Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;

    move-result-object v25

    .line 164
    .local v25, "dataCom":Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;
    if-eqz v25, :cond_0

    .line 165
    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;->setNick(Ljava/lang/String;)Z

    .line 169
    .end local v25    # "dataCom":Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;
    :cond_0
    const/16 v17, 0x0

    .line 171
    .local v17, "domainList":[Ljava/lang/String;
    if-eqz v30, :cond_1

    :try_start_1
    const-string/jumbo v4, "ssoDomainList"

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_1
    const/16 v17, 0x0

    .line 172
    :goto_1
    const-string/jumbo v18, "login.LoginDataHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "domainList: "

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v17, :cond_5

    const-string/jumbo v4, ""

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :goto_3
    move-wide/from16 v0, v28

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->adjustSessionExpireTime(JJ)J

    move-result-wide v18

    move-object/from16 v4, p2

    .line 176
    invoke-interface/range {v4 .. v22}, Lcom/ali/user/enterprise/base/session/ISession;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;JJLjava/lang/String;)V

    .line 179
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/ali/user/enterprise/base/session/ISession;->setEmail(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v18, "corpId"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 184
    .local v24, "corpId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v18, "biz_type"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 185
    .local v23, "biz_type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v18, "inner_extra"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 186
    .local v31, "extra":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/ali/user/enterprise/base/session/ISession;->setCorpId(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/ali/user/enterprise/base/session/ISession;->setBizType(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/ali/user/enterprise/base/session/ISession;->setExtraMap(Ljava/lang/String;)V

    .line 190
    .end local v23    # "biz_type":Ljava/lang/String;
    .end local v24    # "corpId":Ljava/lang/String;
    .end local v31    # "extra":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "login.LoginDataHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "registeSessionInfo (sid:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",ecode:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",userId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->loginServiceExt:Ljava/util/Map;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 195
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->loginServiceExt:Ljava/util/Map;

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/ali/user/enterprise/base/session/ISession;->setExtJson(Ljava/lang/String;)V

    .line 197
    :cond_3
    return-void

    .line 155
    .end local v17    # "domainList":[Ljava/lang/String;
    .end local v32    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v4

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .restart local v17    # "domainList":[Ljava/lang/String;
    .restart local v32    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_4
    :try_start_2
    const-string/jumbo v4, "ssoDomainList"

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v17, v4

    goto/16 :goto_1

    .line 172
    :cond_5
    invoke-static/range {v17 .. v17}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto/16 :goto_2

    .line 173
    :catch_1
    move-exception v26

    .line 174
    .local v26, "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public static processLoginReturnData(Lcom/ali/user/enterprise/base/data/LoginReturnData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "loginData"    # Lcom/ali/user/enterprise/base/data/LoginReturnData;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "browserRefUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    if-eqz p0, :cond_2

    iget-object v4, p0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->data:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 43
    :try_start_0
    iget-object v4, p0, Lcom/ali/user/enterprise/base/data/LoginReturnData;->data:Ljava/lang/String;

    const-class v5, Lcom/ali/user/enterprise/base/data/AliUserResponseData;

    invoke-static {v4, v5}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;

    .line 44
    .local v0, "data":Lcom/ali/user/enterprise/base/data/AliUserResponseData;
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/user/enterprise/base/session/SessionManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/enterprise/base/session/SessionManager;

    move-result-object v3

    .line 46
    .local v3, "session":Lcom/ali/user/enterprise/base/session/ISession;
    invoke-interface {v3}, Lcom/ali/user/enterprise/base/session/ISession;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/ali/user/enterprise/base/data/AliUserResponseData;->userId:Ljava/lang/String;

    invoke-interface {v3}, Lcom/ali/user/enterprise/base/session/ISession;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    const-string/jumbo v4, "Page_AccountManager"

    const-string/jumbo v5, "ChangeMultiAccountsSuc"

    invoke-static {v4, v5}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-static {p0, v0, v3}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->onLoginSuccess(Lcom/ali/user/enterprise/base/data/LoginReturnData;Lcom/ali/user/enterprise/base/data/AliUserResponseData;Lcom/ali/user/enterprise/base/session/ISession;)V

    .line 50
    invoke-static {p0, v3, v0}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->handleHistory(Lcom/ali/user/enterprise/base/data/LoginReturnData;Lcom/ali/user/enterprise/base/session/ISession;Lcom/ali/user/enterprise/base/data/AliUserResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v4, 0x1

    .line 62
    .end local v0    # "data":Lcom/ali/user/enterprise/base/data/AliUserResponseData;
    .end local v3    # "session":Lcom/ali/user/enterprise/base/session/ISession;
    :goto_0
    return v4

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 55
    .local v2, "props1":Ljava/util/Properties;
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    const-string/jumbo v4, "appName"

    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    :cond_1
    const-string/jumbo v4, "Event_LoginFail"

    invoke-static {v4, v2}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/util/Properties;)V

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "props1":Ljava/util/Properties;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static sessionToModel(Lcom/ali/user/enterprise/base/session/ISession;)Lcom/ali/user/enterprise/base/data/SessionModel;
    .locals 5
    .param p0, "session"    # Lcom/ali/user/enterprise/base/session/ISession;

    .prologue
    .line 96
    new-instance v1, Lcom/ali/user/enterprise/base/data/SessionModel;

    invoke-direct {v1}, Lcom/ali/user/enterprise/base/data/SessionModel;-><init>()V

    .line 98
    .local v1, "sessionModel":Lcom/ali/user/enterprise/base/data/SessionModel;
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getSid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->sid:Ljava/lang/String;

    .line 99
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getEcode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->ecode:Ljava/lang/String;

    .line 100
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getNick()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->nick:Ljava/lang/String;

    .line 101
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    .line 102
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->email:Ljava/lang/String;

    .line 103
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->autoLoginToken:Ljava/lang/String;

    .line 104
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getOneTimeToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->havanaSsoToken:Ljava/lang/String;

    .line 105
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getHavanaSsoTokenExpiredTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->havanaSsoTokenExpiredTime:J

    .line 106
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getSsoToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->ssoToken:Ljava/lang/String;

    .line 107
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getSessionExpiredTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->expires:J

    .line 108
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getExtJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :try_start_0
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getExtJson()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ali/user/enterprise/base/helper/LoginDataHelper$1;

    invoke-direct {v3}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper$1;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, v3, v4}, Lgxk;->parseObject(Ljava/lang/String;Lgxp;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->loginServiceExt:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getLoginSite()I

    move-result v2

    iput v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->site:I

    .line 117
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->showLoginId:Ljava/lang/String;

    .line 118
    iget-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->showLoginId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getNick()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->showLoginId:Ljava/lang/String;

    .line 121
    :cond_1
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getBizType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->bizType:Ljava/lang/String;

    .line 122
    invoke-interface {p0}, Lcom/ali/user/enterprise/base/session/ISession;->getCorpId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->corpId:Ljava/lang/String;

    .line 123
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
