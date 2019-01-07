.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;
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
    .line 809
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 813
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->n(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return v1

    .line 817
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p2, :cond_2

    .line 818
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Lemk;

    move-result-object v0

    invoke-interface {v0}, Lemk;->c()V

    .line 819
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Lemk;

    move-result-object v0

    invoke-interface {v0}, Lemk;->d()V

    .line 821
    :cond_2
    const/16 v0, 0x2bd

    if-ne v0, p2, :cond_3

    .line 822
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Lemk;

    move-result-object v0

    invoke-interface {v0}, Lemk;->e()V

    .line 824
    :cond_3
    const/16 v0, 0x2be

    if-ne v0, p2, :cond_0

    .line 825
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Lemk;

    move-result-object v0

    invoke-interface {v0}, Lemk;->d()V

    goto :goto_0
.end method
