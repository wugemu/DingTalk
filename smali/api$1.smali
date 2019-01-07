.class final Lapi$1;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 72
    iput-object p1, p0, Lapi$1;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lapi$1;->a:Lapi;

    .line 1051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 75
    if-nez v0, :cond_1

    .line 5400
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lapi$1;->a:Lapi;

    .line 2051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 79
    invoke-interface {v0}, Laph$b;->h()V

    .line 80
    iget-object v0, p0, Lapi$1;->a:Lapi;

    .line 3051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 80
    invoke-interface {v0}, Laph$b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lapi$1;->a:Lapi;

    .line 4051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 81
    invoke-interface {v0}, Laph$b;->i()V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lapi$1;->a:Lapi;

    .line 5399
    iget-boolean v1, v0, Lapi;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5403
    iget-object v1, v0, Lapi;->b:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 5407
    iget-object v1, v0, Lapi;->h:Lawn;

    if-eqz v1, :cond_4

    .line 5408
    iget-object v1, v0, Lapi;->h:Lawn;

    iget-object v2, v0, Lapi;->d:Ljava/util/List;

    .line 6035
    iget-object v3, v1, Lawn;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 6036
    if-eqz v2, :cond_3

    .line 6037
    iget-object v3, v1, Lawn;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6039
    :cond_3
    invoke-virtual {v1}, Lawn;->notifyDataSetChanged()V

    .line 5411
    :cond_4
    iget-object v1, v0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->j()V

    .line 5412
    iget-object v1, v0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->k()V

    .line 6418
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v1

    .line 6419
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarActivityPresenter] listViewScrollToRelevantPosition isDingNewTab="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 6420
    if-eqz v1, :cond_0

    .line 6421
    invoke-virtual {v0}, Lapi;->h()V

    goto :goto_0
.end method
