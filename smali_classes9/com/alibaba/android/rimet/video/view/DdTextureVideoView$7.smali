.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;
.super Ljava/lang/Object;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 419
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "frameworkError"    # I
    .param p3, "implError"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 422
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->l(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I

    .line 426
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, p2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, p2, p3}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, p2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)V

    goto :goto_0
.end method
