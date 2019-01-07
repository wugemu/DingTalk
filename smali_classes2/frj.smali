.class public final Lfrj;
.super Ljava/lang/Object;
.source "FaceLoginPresenter.java"

# interfaces
.implements Lfri$a;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 63
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 295
    const-string/jumbo v4, "pref_user_cloud_setting_face_login_key"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "v":Ljava/lang/String;
    const-string/jumbo v4, "FaceLoginPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getStatusFromCloudSetting:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const/4 v2, 0x0

    .line 312
    :goto_0
    return-object v2

    .line 300
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;-><init>()V

    .line 302
    .local v2, "obj":Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
    iput-boolean v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    .line 304
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 305
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "enabled"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    .line 306
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const-string/jumbo v4, "FaceLoginPresenter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Lcma;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "zimId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 117
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v0, "FaceLoginPresenter"

    const-string/jumbo v1, "getVerifyResult_V2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lfrj;->b(ILjava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;>;"
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string/jumbo v1, "FaceLoginPresenter"

    const-string/jumbo v2, "getFaceId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lfrj$2;

    invoke-direct {v0, p0, p1}, Lfrj$2;-><init>(Lfrj;Lcma;)V

    .line 159
    .local v0, "apiEventListener":Lcma;
    const-class v1, Lcma;

    iget-object v2, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 160
    .restart local v0    # "apiEventListener":Lcma;
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfas;->a(Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 5
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 113
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string/jumbo v2, "FaceLoginPresenter"

    const-string/jumbo v3, "getVerifyResult"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    iget-object v2, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->getMetaInfos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "metaInfos":Ljava/lang/String;
    new-instance v0, Lfrj$1;

    invoke-direct {v0, p0, p2, p3}, Lfrj$1;-><init>(Lfrj;ILcma;)V

    .line 111
    .local v0, "apiEventListener":Lcma;
    const-class v2, Lcma;

    iget-object v3, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 112
    .restart local v0    # "apiEventListener":Lcma;
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v2

    .line 1301
    new-instance v3, Lfas$3;

    invoke-direct {v3, v2, v0}, Lfas$3;-><init>(Lfas;Lcma;)V

    .line 1310
    iget-object v2, v2, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface {v2, p1, v1, p2, v3}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->faceIdInit(Ljava/lang/String;Ljava/lang/String;ILiyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 14
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "zimId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "tmpCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 166
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p5, :cond_0

    .line 205
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string/jumbo v1, "FaceLoginPresenter"

    const-string/jumbo v2, "getLoginResult"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 171
    .local v11, "context":Landroid/content/Context;
    new-instance v12, Lfwt;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 172
    invoke-static {v11}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v1, v2, v3, v4}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v12, "deviceObject":Lfwt;
    invoke-virtual {v12}, Lfwt;->a()Lcfo;

    move-result-object v6

    .line 174
    .local v6, "deviceModel":Lcfo;
    invoke-static {v11}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v13

    .line 175
    .local v13, "isSimulator":Z
    invoke-static {v11, v13}, Lfrb;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "token":Ljava/lang/String;
    new-instance v10, Lfrj$3;

    move-object/from16 v0, p5

    invoke-direct {v10, p0, v0, p1}, Lfrj$3;-><init>(Lfrj;Lcma;Ljava/lang/String;)V

    .line 202
    .local v10, "apiEventListener":Lcma;
    const-class v1, Lcma;

    iget-object v2, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v10, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "apiEventListener":Lcma;
    check-cast v10, Lcma;

    .line 203
    .restart local v10    # "apiEventListener":Lcma;
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    .line 1318
    new-instance v9, Lfas$4;

    invoke-direct {v9, v1, v10}, Lfas$4;-><init>(Lfas;Lcma;)V

    .line 1334
    iget-object v1, v1, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->faceIdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method b(ILjava/lang/String;Lcma;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "verifyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 223
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-string/jumbo v0, "FaceLoginPresenter"

    const-string/jumbo v1, "verifyFacebox"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-string/jumbo v1, "23794744"

    new-instance v3, Lfrj$4;

    invoke-direct {v3, p0}, Lfrj$4;-><init>(Lfrj;)V

    invoke-static {v0, v1, v3}, Ljez;->a(Landroid/content/Context;Ljava/lang/String;Ljey;)V

    .line 237
    iget-object v0, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyAlipay(Landroid/content/Context;)Landroid/os/Bundle;

    .line 239
    iget-object v0, p0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacadeBuilder;->create(Landroid/content/Context;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    move-result-object v2

    .line 240
    .local v2, "zimFacade":Lcom/alipay/mobile/security/zim/api/ZIMFacade;
    const/4 v6, 0x0

    new-instance v0, Lfrj$5;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfrj$5;-><init>(Lfrj;Lcom/alipay/mobile/security/zim/api/ZIMFacade;ILjava/lang/String;Lcma;)V

    invoke-virtual {v2, p2, v6, v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->verify(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/security/zim/api/ZIMCallback;)V

    .line 261
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
