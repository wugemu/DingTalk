.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;
.super Ljava/lang/Object;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x6

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setKeepScreenOn(Z)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    .line 403
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 406
    :cond_0
    return-void
.end method
