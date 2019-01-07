.class final Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;
.super Ljava/lang/Object;
.source "VideoPlayerRender.java"

# interfaces
.implements Leca$c;


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
    .line 501
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 506
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lecb$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lecb$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lecb$b;->a(II)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError \u2014\u2014> STATE_ERROR \u2014\u2014\u2014\u2014 what\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x1

    return v0
.end method
