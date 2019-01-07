.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;
.super Ljava/lang/Object;
.source "AlertMessageHelper.java"


# instance fields
.field a:Landroid/content/res/Resources;

.field b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V
    .locals 1
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceRemoteConfig"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 37
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    .line 38
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    const-string/jumbo v1, ""

    .line 232
    :goto_0
    return-object v1

    .line 222
    :cond_0
    const/4 v2, 0x0

    .line 225
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "applicationName":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v3

    const/4 v0, 0x0

    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "remoteString"    # Ljava/lang/String;
    .param p1, "localString"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    .end local p1    # "localString":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "localString":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method


# virtual methods
.method public getAlertMessage(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;
    .locals 10
    .param p1, "type"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;
    .param p2, "mode"    # Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 41
    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    invoke-direct {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;-><init>()V

    .line 44
    .local v3, "message":Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;
    sget-object v5, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 215
    :goto_0
    return-object v3

    .line 48
    :pswitch_0
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_algorithm_init_error:I

    .line 49
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 50
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 52
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_ok:I

    .line 53
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_close_title:I

    .line 60
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_close_msg:I

    .line 62
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 63
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_cancle:I

    .line 64
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setNegative(Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_sure:I

    .line 66
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :pswitch_2
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_interrupt_error:I

    .line 73
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 76
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_exit:I

    .line 77
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setNegative(Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->loginment_dialog_btn_retry:I

    .line 79
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :pswitch_3
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_timeout_error:I

    .line 86
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_pose_msg:I

    .line 88
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_exit:I

    .line 90
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setNegative(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->loginment_dialog_btn_retry:I

    .line 92
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :pswitch_4
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_unsurpport_msg:I

    .line 99
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_ok:I

    .line 103
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :pswitch_5
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_camera_unconnect_title:I

    .line 110
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "alertMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 132
    .local v4, "msg2":Ljava/lang/String;
    :goto_1
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_exit:I

    .line 137
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setNegative(Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_camera_unconnect_ok_text:I

    .line 139
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "msg2":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v6, Ligf$e;->face_detect_camera_unconnect_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg2":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v0    # "alertMsg":Ljava/lang/String;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "msg2":Ljava/lang/String;
    :pswitch_6
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_unsurpport_msg:I

    .line 146
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_ok:I

    .line 150
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :pswitch_7
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_nav_msg_verify_text:I

    .line 162
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 163
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_pose_msg:I

    .line 164
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_exit:I

    .line 166
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setNegative(Ljava/lang/String;)V

    .line 167
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->loginment_dialog_btn_retry:I

    .line 168
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_8
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_face_operation_error_text:I

    .line 178
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_ok:I

    .line 182
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :pswitch_9
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_network_error:I

    .line 193
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 196
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_exit:I

    .line 197
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setNegative(Ljava/lang/String;)V

    .line 198
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->loginment_dialog_btn_retry:I

    .line 199
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :pswitch_a
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->loginment_dialog_error_version_msg:I

    .line 206
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg1(Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->loginment_dialog_error_version_msg2:I

    .line 208
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setMsg2(Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a:Landroid/content/res/Resources;

    sget v7, Ligf$e;->face_detect_dialog_btn_ok:I

    .line 210
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->setPositive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
