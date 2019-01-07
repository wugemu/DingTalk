.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$6;
.super Ljava/lang/Object;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 409
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$6;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$6;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->k(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$6;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->k(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 415
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
