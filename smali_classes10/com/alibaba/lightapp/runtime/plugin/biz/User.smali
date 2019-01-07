.class public Lcom/alibaba/lightapp/runtime/plugin/biz/User;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "User.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/User;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/User;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/User;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/User;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/User;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/User;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x9

    .line 131
    const-string/jumbo v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 132
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v6

    .line 133
    .local v6, "uid":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "utf-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 135
    .local v2, "data":[B
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 136
    .local v1, "buf":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v9, v2

    const/4 v5, 0x0

    move v8, v5

    :goto_0
    if-ge v8, v9, :cond_2

    aget-byte v0, v2, v8

    .line 137
    .local v0, "b":B
    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v3, v5, 0xf

    .line 138
    .local v3, "halfByte":I
    if-ltz v3, :cond_0

    if-gt v3, v10, :cond_0

    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    :goto_1
    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 139
    and-int/lit8 v3, v0, 0xf

    .line 140
    if-ltz v3, :cond_1

    if-gt v3, v10, :cond_1

    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 136
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    .line 138
    :cond_0
    add-int/lit8 v5, v3, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_1

    .line 140
    :cond_1
    add-int/lit8 v5, v3, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    .line 142
    .end local v0    # "b":B
    .end local v3    # "halfByte":I
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public get(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 19
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 37
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v12, "user":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 41
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "corpId"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 42
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "corpId"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "argCorpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v11

    .line 45
    .local v11, "session":Lhqe$d;
    if-eqz v11, :cond_0

    .line 1488
    iget-object v14, v11, Lhqe$d;->b:Ljava/lang/String;

    .line 45
    if-eqz v14, :cond_0

    .line 2488
    iget-object v14, v11, Lhqe$d;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 47
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v16, 0x8

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "invalid corpId: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 48
    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 103
    .end local v2    # "argCorpId":Ljava/lang/String;
    .end local v11    # "session":Lhqe$d;
    :goto_0
    return-object v14

    .line 51
    .restart local v2    # "argCorpId":Ljava/lang/String;
    .restart local v11    # "session":Lhqe$d;
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 56
    .end local v2    # "argCorpId":Ljava/lang/String;
    .end local v11    # "session":Lhqe$d;
    .local v6, "currentOrgId":J
    :goto_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v14

    const-class v15, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 57
    invoke-virtual {v14, v15}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v14, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    .line 59
    .local v8, "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    const-string/jumbo v9, ""

    .line 60
    .local v9, "nick":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v13

    .line 61
    .local v13, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v13, :cond_1

    .line 62
    iget-object v9, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 64
    :cond_1
    if-eqz v8, :cond_8

    .line 65
    const-string/jumbo v10, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v10, "secretId":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->sha256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 74
    :goto_2
    :try_start_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v14

    invoke-virtual {v14}, Lccr;->e()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "avatarUrl":Ljava/lang/String;
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v14

    const-class v15, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v14, v15}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v14, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "corpId":Ljava/lang/String;
    const-string/jumbo v14, "id"

    invoke-virtual {v12, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v14, "corpId"

    invoke-virtual {v12, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v15, "emplId"

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v12, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v14, "nick"

    if-eqz v9, :cond_4

    .end local v9    # "nick":Ljava/lang/String;
    :goto_4
    invoke-virtual {v12, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v15, "orgUserName"

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    :goto_5
    invoke-virtual {v12, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v15, "nickName"

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    if-eqz v14, :cond_6

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    :goto_6
    invoke-virtual {v12, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v14, "avatar"

    if-eqz v3, :cond_7

    .end local v3    # "avatarUrl":Ljava/lang/String;
    :goto_7
    invoke-virtual {v12, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v14, "rightLevel"

    iget v15, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v14, "isAuth"

    iget-boolean v15, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v14, "isManager"

    iget-boolean v15, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v14, v15, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 101
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v6    # "currentOrgId":J
    .end local v8    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v10    # "secretId":Ljava/lang/String;
    .end local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catch_0
    move-exception v5

    .line 102
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_3
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v14

    const-class v15, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v14, v15}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/dingtalk/oabase/OAInterface;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v6

    .restart local v6    # "currentOrgId":J
    goto/16 :goto_1

    .line 68
    .restart local v8    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .restart local v9    # "nick":Ljava/lang/String;
    .restart local v10    # "secretId":Ljava/lang/String;
    .restart local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catch_1
    move-exception v5

    .line 69
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 70
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v5

    .line 71
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_2

    .line 80
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "avatarUrl":Ljava/lang/String;
    .restart local v4    # "corpId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, ""

    goto/16 :goto_3

    .line 81
    :cond_4
    const-string/jumbo v9, ""

    goto/16 :goto_4

    .line 82
    .end local v9    # "nick":Ljava/lang/String;
    :cond_5
    const-string/jumbo v14, ""

    goto :goto_5

    .line 83
    :cond_6
    const-string/jumbo v14, ""

    goto :goto_6

    .line 84
    :cond_7
    const-string/jumbo v3, ""

    goto :goto_7

    .line 93
    .end local v3    # "avatarUrl":Ljava/lang/String;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v10    # "secretId":Ljava/lang/String;
    .restart local v9    # "nick":Ljava/lang/String;
    :cond_8
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v16, "current user profile is null"

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    .end local v6    # "currentOrgId":J
    .end local v8    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v9    # "nick":Ljava/lang/String;
    .end local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_9
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v16, "context is null"

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public loginTaobaoWithDingtalkUserToken(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    .line 147
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "Invalid params"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 181
    :goto_0
    return-object v2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 152
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "context is not activity"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 157
    .local v0, "callbackId":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/User$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/User$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/User;Ljava/lang/String;)V

    .line 178
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v3, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v1, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v1, Lcma;

    .line 179
    .restart local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;Lcma;)V

    .line 181
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public secretID(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v4

    .line 113
    .local v4, "uid":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/User;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "secretId":Ljava/lang/String;
    const-string/jumbo v3, "secretID"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v6, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "secretId":Ljava/lang/String;
    .end local v4    # "uid":J
    :goto_0
    return-object v3

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 118
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "no such digest algorithm"

    invoke-direct {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 121
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "unsupported encoding"

    invoke-direct {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method
