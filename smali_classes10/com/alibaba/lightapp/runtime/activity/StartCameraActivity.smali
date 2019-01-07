.class public Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;
.super Landroid/app/Activity;
.source "StartCameraActivity.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->b:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "StartCameraAct"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "onResult"

    aput-object v4, v3, v6

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 73
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-ne p1, v7, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.take.picture.from.camera"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "picture_path_from_camera"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v6, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->b:Z

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->finish()V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "StartCameraAct"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "openCamera_capture_started"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->b:Z

    .line 50
    const-string/jumbo v1, "openCamera_capture_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->a:Landroid/net/Uri;

    .line 56
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->b:Z

    if-nez v1, :cond_1

    .line 57
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "StartCameraAct"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p0, v5}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/app/Activity;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->a:Landroid/net/Uri;

    .line 59
    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->b:Z

    .line 61
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "StartCameraAct"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v0, "openCamera_capture_started"

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string/jumbo v0, "openCamera_capture_uri"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/StartCameraActivity;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
