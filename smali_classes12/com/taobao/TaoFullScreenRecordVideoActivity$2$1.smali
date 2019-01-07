.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iput-object p2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 919
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v2, v2, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v2}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->u(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    .line 921
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 922
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v2, v2, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-virtual {v2}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 923
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "tempVideoPath"

    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 924
    const-string/jumbo v2, "tempCoverPath"

    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 925
    const-string/jumbo v2, "videoWidth"

    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v3, v3, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v3}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v3

    .line 1189
    iget v3, v3, Lcom/taobao/av/logic/media/TaoMediaRecorder;->j:I

    .line 925
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    const-string/jumbo v2, "videoHeight"

    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v3, v3, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v3}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v3

    .line 1193
    iget v3, v3, Lcom/taobao/av/logic/media/TaoMediaRecorder;->k:I

    .line 926
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    const-string/jumbo v2, "videoDuration"

    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v3, v3, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v3}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Ljkt;

    move-result-object v3

    invoke-virtual {v3}, Ljkt;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 928
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 929
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v2, v2, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 930
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;->c:Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    iget-object v2, v2, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-virtual {v2}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->finish()V

    .line 931
    const-string/jumbo v2, "video record set result ok"

    .line 2010
    const-string/jumbo v3, "video_recorder"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method
