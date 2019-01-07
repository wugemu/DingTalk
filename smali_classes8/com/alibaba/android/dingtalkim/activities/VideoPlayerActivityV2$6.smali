.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;
.super Ljava/lang/Object;
.source "VideoPlayerActivityV2.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/TextureView;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;ILandroid/view/TextureView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->d:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->b:Landroid/view/TextureView;

    iput p4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->a:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->b:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->c:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->b:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->b:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;->d:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lecb$c;

    move-result-object v0

    invoke-interface {v0}, Lecb$c;->k()V

    .line 216
    :cond_1
    return-void
.end method
