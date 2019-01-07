.class public Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;
.super Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;
.source "FaceDetectFragment.java"

# interfaces
.implements Lcd$a;


# instance fields
.field private a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

.field private b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

.field private c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->d:Z

    .line 39
    const/16 v0, 0xff

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->e:I

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->e:I

    return v0
.end method


# virtual methods
.method protected isSupportPermissionDialog()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "isSupport":Z
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "level":I
    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 173
    .end local v1    # "level":I
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 81
    .local v0, "recordExtService":Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->setEnterDetectionTime(J)V

    .line 83
    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 86
    .end local v0    # "recordExtService":Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
    :cond_0
    const-string/jumbo v1, "EyeprintDetect onCreate"

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 44
    sget v1, Ligf$d;->face_circle_pattern_component:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "v":Landroid/view/View;
    sget v1, Ligf$c;->face_circle_pattern_component:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 48
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;-><init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->init(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getLight()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->e:I

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->init(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->isSupportPermissionDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Lcd;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1, v5}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->setCameraPermission(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->requestCameraPermission()V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->setCameraVisible(Z)V

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->stopTimerTask()V

    .line 71
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->onStop()V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->onDestroy()V

    .line 160
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->onDestroyView()V

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->onPause()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public onReceiveAction(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->onReceiveAction(Landroid/content/Intent;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    if-eqz v0, :cond_0

    .line 191
    array-length v0, p3

    if-ne v0, v2, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->setCameraPermission(Z)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->setCameraVisible(Z)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->startTimerTask()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->setCameraPermission(Z)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->setCameraVisible(Z)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->stopTimerTask()V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->openPermissionDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v4, "EyeprintDetect onResume"

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v5, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 94
    .local v3, "recordExtService":Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->d:Z

    if-eqz v4, :cond_0

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, "endTime":J
    const-string/jumbo v4, "timecost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getEnterDetectionTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 99
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->d:Z

    .line 103
    .end local v0    # "endTime":J
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->onResume()V

    .line 106
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->onResume()V

    .line 121
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->onStop()V

    .line 154
    return-void
.end method

.method public onWindowFocusChanged(Z)Z
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->onWindowFocusChanged(Z)Z

    move-result v0

    return v0
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "type"    # Landroid/view/KeyEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->ontActivityEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected requestCameraPermission()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 183
    return-void
.end method
