.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Lcom/taobao/update/lightapk/BundleDownLoadManager$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;)V
    .locals 0
    .param p1, "this$1"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    .prologue
    .line 1012
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1021
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 1026
    return-void
.end method

.method public onSuccess()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1015
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    iget-boolean v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$enable:Z

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$modelPath:Ljava/lang/String;

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$modelNormalPath:Ljava/lang/String;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    iget-object v4, v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$classifierPath:Ljava/lang/String;

    iget-object v5, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    iget-object v5, v5, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$listener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    invoke-static/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V

    .line 1016
    return-void
.end method
