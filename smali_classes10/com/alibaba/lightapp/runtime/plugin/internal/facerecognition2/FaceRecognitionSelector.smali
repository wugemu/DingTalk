.class public Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "FaceRecognitionSelector.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;


# static fields
.field private static final CLOUD_SETTING_MODULE_NAME:Ljava/lang/String; = "facebox2_cloud_setting"

.field private static final LEMON_KEY_NAME:Ljava/lang/String; = "is_new_face_recognition_enable"

.field private static final LEMON_MODULE_NAME:Ljava/lang/String; = "general"

.field private static final MODULE:Ljava/lang/String; = "facebox2"

.field private static final TAG:Ljava/lang/String; = "FaceRecognitionSelector"

.field private static final sFaceDetectorReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;


# instance fields
.field private mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->sFaceDetectorReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 35
    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->isNewFaceRecognitionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 36
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;-><init>()V

    goto :goto_0
.end method

.method public static isNewFaceRecognitionEnable()Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    const-string/jumbo v6, "general"

    const-string/jumbo v7, "is_new_face_recognition_enable"

    invoke-virtual {v5, v6, v7, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    .local v1, "enable":Z
    const-string/jumbo v5, "facebox2"

    const-string/jumbo v6, "FaceRecognitionSelector"

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "[FaceRecognitionSelector.isNewFaceRecognitionEnable] lemon\uff1a"

    aput-object v8, v7, v4

    const-string/jumbo v8, "is_new_face_recognition_enable"

    aput-object v8, v7, v3

    const-string/jumbo v8, " = "

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-nez v1, :cond_1

    .line 129
    const-class v5, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    .line 130
    .local v0, "css":Lcom/alibaba/wukong/settings/CloudSettingService;
    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v5, "facebox2_cloud_setting"

    const-string/jumbo v6, "is_new_face_recognition_enable"

    invoke-interface {v0, v5, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v2

    .line 132
    .local v2, "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v2, :cond_2

    const-string/jumbo v5, "true"

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 134
    .end local v2    # "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_0
    :goto_0
    const-string/jumbo v5, "facebox2"

    const-string/jumbo v6, "FaceRecognitionSelector"

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "[FaceRecognitionSelector.isNewFaceRecognitionEnable] cloudSetting: "

    aput-object v8, v7, v4

    const-string/jumbo v4, "is_new_face_recognition_enable"

    aput-object v4, v7, v3

    const-string/jumbo v3, " = "

    aput-object v3, v7, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v0    # "css":Lcom/alibaba/wukong/settings/CloudSettingService;
    :cond_1
    return v1

    .restart local v0    # "css":Lcom/alibaba/wukong/settings/CloudSettingService;
    .restart local v2    # "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_2
    move v1, v4

    .line 132
    goto :goto_0
.end method


# virtual methods
.method public detectFace(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;->detectFace(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public init(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;->init(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->sFaceDetectorReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->setFaceDetectorHandler(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->sFaceDetectorReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->setFaceDetectorHandler(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onNewIntent(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onNewIntent(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageFinished(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageFinished(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageStarted(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageStarted(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onResume()V

    .line 83
    return-void
.end method

.method public setup(Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->setup(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->setup(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->mPlugin:Lcom/alibaba/lightapp/runtime/Plugin;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->sFaceDetectorReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->registerSelf(Landroid/content/Context;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->sFaceDetectorReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->unregisterSelf(Landroid/content/Context;)V

    goto :goto_0
.end method
