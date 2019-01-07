.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 3
    .param p1, "dingId"    # J
    .param p3, "newCommentCount"    # J

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 346
    :cond_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
