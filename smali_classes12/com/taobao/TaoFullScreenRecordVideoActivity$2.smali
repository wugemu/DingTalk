.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$2;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 902
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->t(Lcom/taobao/TaoFullScreenRecordVideoActivity;)I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 903
    .local v1, "input":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->t(Lcom/taobao/TaoFullScreenRecordVideoActivity;)I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v5}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v5

    .line 1236
    iget-object v5, v5, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 904
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v5}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v5

    .line 2236
    iget-object v5, v5, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "temp_output.mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "tempVideoPath":Ljava/lang/String;
    invoke-static {v3}, Ljkx;->a(Ljava/lang/String;)Z

    .line 909
    invoke-static {v1, v3}, Lcom/taobao/media/MediaEncoderMgr;->mergeMp4Files([Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v4

    const-string/jumbo v5, "temp_output.mp4"

    invoke-virtual {v4, v5}, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a(Ljava/lang/String;)V

    .line 912
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v4

    .line 3181
    invoke-virtual {v4}, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a()V

    .line 3182
    iget-object v2, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->d:Ljava/lang/String;

    .line 914
    .local v2, "tempJpegPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 915
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/taobao/TaoFullScreenRecordVideoActivity$2$1;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 937
    :cond_1
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v4

    .line 3236
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 937
    invoke-static {v4}, Ljkx;->c(Ljava/lang/String;)V

    .line 938
    return-void
.end method
