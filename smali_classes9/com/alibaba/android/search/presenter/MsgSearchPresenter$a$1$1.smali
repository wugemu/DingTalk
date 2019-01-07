.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 307
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->a:Ljava/util/List;

    .line 1360
    invoke-static {v3}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1361
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .line 2222
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->c:Ljava/util/List;

    .line 308
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->a:Ljava/util/List;

    .line 3390
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3391
    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3392
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v3, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .line 4333
    iget-object v1, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->b:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->b:Ljava/util/List;

    .line 4334
    :goto_0
    iget-object v2, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->c:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->c:Ljava/util/List;

    .line 4336
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4337
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4338
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4340
    new-instance v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$2;

    invoke-direct {v1, v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$2;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 312
    .local v0, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .line 6222
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->a:Ljava/util/List;

    .line 312
    invoke-static {v1, v0, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    .line 315
    return-void

    .line 1364
    .end local v0    # "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1366
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1368
    const/4 v2, 0x0

    .line 1369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 1370
    if-eqz v1, :cond_4

    .line 1374
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_4

    .line 1375
    const/4 v1, 0x1

    .line 1380
    :goto_3
    if-nez v1, :cond_3

    .line 1381
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 3397
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3399
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3400
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/BaseModel;

    .line 3401
    instance-of v4, v1, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v4, :cond_6

    .line 3405
    check-cast v1, Lcom/alibaba/android/search/model/MsgModel;

    .line 3406
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MsgModel;->getMsgId()J

    move-result-wide v4

    .line 3408
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3409
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 5018
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 6018
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto :goto_3
.end method
