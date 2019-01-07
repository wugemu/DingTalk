.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$a;


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
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 365
    .local p1, "taskListIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 370
    .local v0, "dingId":Ljava/lang/Long;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 375
    .end local v0    # "dingId":Ljava/lang/Long;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 376
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 378
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->j(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    goto :goto_0
.end method
