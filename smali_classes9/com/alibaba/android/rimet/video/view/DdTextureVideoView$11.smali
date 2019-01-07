.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;
.super Ljava/lang/Object;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 742
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 745
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I

    .line 746
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->start()V

    .line 752
    :cond_1
    return-void
.end method
