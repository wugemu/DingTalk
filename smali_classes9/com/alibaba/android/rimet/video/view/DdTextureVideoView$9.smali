.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$9;
.super Ljava/lang/Object;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 524
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$9;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$9;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, p2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I

    .line 528
    return-void
.end method
