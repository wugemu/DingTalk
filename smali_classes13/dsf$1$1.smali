.class final Ldsf$1$1;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldsf$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldsf$1;


# direct methods
.method constructor <init>(Ldsf$1;)V
    .locals 0
    .param p1, "this$1"    # Ldsf$1;

    .prologue
    .line 134
    iput-object p1, p0, Ldsf$1$1;->a:Ldsf$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "MediaEncode"

    invoke-virtual {v0, v1}, Lcjn;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v1, Lctk$i;->and_dynamic_video_so_loading:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 165
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    .line 1145
    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v0, v0, Ldsf$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1148
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "startRecording"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v1, v1, Ldsf$1;->a:Landroid/app/Activity;

    const-class v2, Lcom/alibaba/android/dingtalkim/activities/VideoExtActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1150
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1151
    const-string/jumbo v2, "maxDuration"

    iget-object v3, p0, Ldsf$1$1;->a:Ldsf$1;

    iget v3, v3, Ldsf$1;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1152
    const-string/jumbo v2, "minDuration"

    iget-object v3, p0, Ldsf$1$1;->a:Ldsf$1;

    iget v3, v3, Ldsf$1;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1153
    const-string/jumbo v2, "quality"

    iget-object v3, p0, Ldsf$1$1;->a:Ldsf$1;

    iget v3, v3, Ldsf$1;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1154
    const-string/jumbo v2, "cameraPosition"

    iget-object v3, p0, Ldsf$1$1;->a:Ldsf$1;

    iget v3, v3, Ldsf$1;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1155
    const-string/jumbo v2, "mode"

    iget-object v3, p0, Ldsf$1$1;->a:Ldsf$1;

    iget v3, v3, Ldsf$1;->f:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1157
    iget-object v1, p0, Ldsf$1$1;->a:Ldsf$1;

    iget-object v1, v1, Ldsf$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldsf$1$1;->a:Ldsf$1;

    iget v2, v2, Ldsf$1;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
