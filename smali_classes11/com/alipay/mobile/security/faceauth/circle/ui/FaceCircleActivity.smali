.class public Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;
.super Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;
.source "FaceCircleActivity.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;


# static fields
.field public static fm:Lcn;


# instance fields
.field private a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

.field protected fcToken:Ljava/lang/String;

.field protected mCurrentBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

.field protected mFaceCircleMode:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

.field protected mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field protected mHasCameraPermission:Z

.field protected mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;-><init>()V

    .line 51
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->SAMPLE:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceCircleMode:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mHasCameraPermission:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mCurrentBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->fcToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "msg2"    # Ljava/lang/String;
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negative"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "isCanceledOnTouchOutside"    # Z
    .param p9, "isShowIcon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    .line 222
    new-instance v0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "builder":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {v0, p2}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    .line 226
    :cond_0
    if-eqz p3, :cond_1

    .line 227
    invoke-virtual {v0, p3}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->setMessage2(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    .line 229
    :cond_1
    if-eqz p4, :cond_2

    .line 230
    invoke-virtual {v0, p4, p5}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    .line 232
    :cond_2
    if-eqz p6, :cond_3

    .line 233
    invoke-virtual {v0, p6, p7}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    .line 235
    :cond_3
    if-eqz p1, :cond_4

    .line 236
    invoke-virtual {v0, p1}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    .line 239
    :cond_4
    invoke-virtual {v0, p9}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->showIcons(Z)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;

    .line 240
    invoke-virtual {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->show()Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    move-result-object v2

    .line 241
    .local v2, "mAlertDialog":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    invoke-virtual {v2, p8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->setCancelable(Z)V

    .line 244
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "builder":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .end local v2    # "mAlertDialog":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    :cond_5
    :goto_0
    return-void

    .line 245
    .restart local v0    # "builder":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .restart local v2    # "mAlertDialog":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFaceCircleMode()Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceCircleMode:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    return-object v0
.end method

.method public getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    return-object v0
.end method

.method public getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    return-object v0
.end method

.method public gotoSettings()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public hasCameraPermission()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mHasCameraPermission:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceStatearg"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 65
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->setVolumeControlStream(I)V

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 69
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz v3, :cond_3

    .line 70
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getFcSpecialData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getFcSpecialData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "fcToken"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->fcToken:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "FaceVerify"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    const-string/jumbo v4, "bis_token"

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 76
    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FaceRemoteConfig cfg:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-static {v3, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    const-string/jumbo v4, "ui_version"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 88
    invoke-virtual {v6}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getUi()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    const-string/jumbo v4, "sceneId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 91
    invoke-virtual {v6}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getSceneEnv()Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->getSceneCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "APDID"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "apdid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    const-string/jumbo v4, "APDID"

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 1121
    new-instance v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    .line 1122
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    const-string/jumbo v5, "circle"

    iput-object v5, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->actid:Ljava/lang/String;

    .line 1123
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "APDID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1124
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "APDID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    iput-object v3, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;

    .line 1125
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "appid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1126
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "appid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2
    iput-object v3, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;

    .line 1127
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;

    .line 1128
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "SCENE_ID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1129
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "SCENE_ID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_3
    iput-object v3, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->sceid:Ljava/lang/String;

    .line 1130
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    .line 1131
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    .line 1132
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "userid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1133
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "userid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_4
    iput-object v3, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;

    .line 1134
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "TOKEN_ID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1135
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "TOKEN_ID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_5
    iput-object v3, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;

    .line 1136
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "verifyid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1137
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "verifyid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_6
    iput-object v3, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;

    .line 1142
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    if-nez v3, :cond_a

    .line 98
    :cond_2
    :goto_7
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v3, :cond_3

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FaceRemoteConfig:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 103
    .end local v0    # "apdid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 107
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 108
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 110
    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;-><init>()V

    .line 115
    .local v2, "f":Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    :goto_8
    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mCurrentBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    .line 116
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->forward(Landroid/os/Bundle;Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V

    .line 118
    return-void

    .line 82
    .end local v2    # "f":Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {v3}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1124
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apdid":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, ""

    goto/16 :goto_1

    .line 1126
    :cond_5
    const-string/jumbo v3, ""

    goto/16 :goto_2

    .line 1129
    :cond_6
    const-string/jumbo v3, ""

    goto/16 :goto_3

    .line 1133
    :cond_7
    const-string/jumbo v3, ""

    goto/16 :goto_4

    .line 1135
    :cond_8
    const-string/jumbo v3, ""

    goto/16 :goto_5

    .line 1137
    :cond_9
    const-string/jumbo v3, ""

    goto/16 :goto_6

    .line 1146
    :cond_a
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v4, v4, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setUniqueID(Ljava/lang/String;)V

    .line 1147
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setRetryID(Ljava/lang/String;)V

    .line 1149
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    .line 1150
    const-string/jumbo v4, "userid"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v4, :cond_b

    .line 1152
    const-string/jumbo v4, "ui_version"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v6}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getUi()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    :cond_b
    const-string/jumbo v4, "APDIDTOKEN"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string/jumbo v4, "APDID"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string/jumbo v4, "verifyId"

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v5, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string/jumbo v4, "TOKEN_ID"

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v5, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const-string/jumbo v4, "sceneId"

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mUserVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v5, v5, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->sceid:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const-string/jumbo v4, "product"

    const-string/jumbo v5, "cherry"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string/jumbo v4, "bioType"

    const-string/jumbo v5, "facedetect"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->fcToken:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1164
    const-string/jumbo v4, "fcToken"

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->fcToken:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_c
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1167
    const-string/jumbo v5, "networkType"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string/jumbo v4, "logType"

    const-string/jumbo v5, "BI_C_V1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setExtProperty(Ljava/util/Map;)V

    .line 1172
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mFaceRemoteConfig:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getActionMode()[Ljava/lang/String;

    move-result-object v3

    .line 1173
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1174
    const-string/jumbo v5, "frontCamera"

    const-string/jumbo v6, " "

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string/jumbo v5, "backCamera"

    const-string/jumbo v6, " "

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const-string/jumbo v5, "memory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/bio/utils/DeviceUtil;->getMemorySize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const-string/jumbo v5, "processorNum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/bio/utils/DeviceUtil;->getProcessorNum()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string/jumbo v5, "totalStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/DeviceUtil;->getTotalStorageSize(Ljava/io/File;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string/jumbo v5, "availableStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/DeviceUtil;->getAvailableStorageSize(Ljava/io/File;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    if-eqz v3, :cond_d

    .line 1183
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1184
    const-string/jumbo v5, "modes"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string/jumbo v3, "brightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v5, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTRY_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 1190
    :goto_9
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->setEntrySdkTime(J)V

    goto/16 :goto_7

    .line 1188
    :cond_d
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTRY_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    goto :goto_9

    .line 112
    .end local v0    # "apdid":Ljava/lang/String;
    :cond_e
    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;-><init>()V

    .restart local v2    # "f":Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    goto/16 :goto_8
.end method

.method protected onDestroy()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    .line 3194
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v0, :cond_0

    .line 3195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3197
    const-string/jumbo v1, "timecost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getEntrySdkTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3198
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 331
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onDestroy()V

    .line 332
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "keyProcessed":Z
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    check-cast v1, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->ontActivityEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 288
    :cond_0
    if-eqz v0, :cond_1

    .line 289
    const/4 v1, 0x1

    .line 291
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onReceiveAction(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mCurrentBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    instance-of v0, v0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mCurrentBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    check-cast v0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->onReceiveAction(Landroid/content/Intent;)V

    .line 361
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onReceiveAction(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 336
    invoke-super {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onResume()V

    .line 337
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onStop()V

    .line 325
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onWindowFocusChanged(Z)V

    .line 343
    return-void
.end method

.method public sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
    .locals 4
    .param p1, "res"    # Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    .line 2260
    const/16 v0, 0x1f4

    .line 2261
    if-eqz p1, :cond_0

    .line 2262
    iget v0, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    .line 2265
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v1, :cond_1

    .line 2266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2267
    const-string/jumbo v2, "returncode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CALLBACK_VERIFY_SYSTEM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 255
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V

    .line 257
    return-void
.end method

.method public sendResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "other"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    .line 1274
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v0, :cond_0

    .line 1275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1276
    const-string/jumbo v1, "returncode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CALLBACK_VERIFY_SYSTEM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->sendResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    return-void
.end method

.method public setCameraPermission(Z)V
    .locals 0
    .param p1, "permission"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->mHasCameraPermission:Z

    .line 319
    return-void
.end method

.method protected verifyCallBackEvent()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_NOTICE_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 351
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->verifyCallBackEvent()V

    .line 352
    return-void
.end method
