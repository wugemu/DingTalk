.class final Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;
.super Ljava/lang/Object;
.source "VideoPlayerRender.java"

# interfaces
.implements Leca$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onPrepared \u2014\u2014> STATE_PREPARED"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_2

    .line 375
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I

    move-result v0

    if-lez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(I)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->c(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Leca;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->c(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Leca;

    move-result-object v0

    invoke-interface {v0}, Leca;->b()V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I

    goto :goto_0
.end method
