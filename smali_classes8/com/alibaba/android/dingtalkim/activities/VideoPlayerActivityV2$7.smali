.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;
.super Ljava/lang/Object;
.source "VideoPlayerActivityV2.java"

# interfaces
.implements Lecb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lecb$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lecb$c;

    move-result-object v0

    invoke-interface {v0}, Lecb$c;->j()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lebs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lebs;

    move-result-object v0

    invoke-virtual {v0}, Lebs;->f()V

    .line 254
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "video_inner_play"

    const-string/jumbo v3, "error"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 256
    :cond_1
    return-void
.end method
