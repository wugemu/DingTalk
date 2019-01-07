.class final Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;
.super Ljava/lang/Object;
.source "AssureKeyWordPresenter.java"

# interfaces
.implements Lcom/alibaba/android/search/assure/model/AssureModel$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/assure/model/AssureModel;

.field final synthetic b:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

.field final synthetic c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    iput-object p3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->b:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 13
    .param p1, "isQualified"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 365
    if-eqz p1, :cond_3

    .line 366
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[add] "

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v5, v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, " isQualified."

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lenq;->a()Lenq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v4}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lenq;->a(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v0

    .line 369
    .local v0, "cached":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_0

    .line 371
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[add] "

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v5, v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, " is at temp area, update its clickTimes, clickAt and evict time"

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickTimes()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/model/AssureModel;->updateClickTimes(I)V

    .line 375
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickAtMills()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/search/assure/model/AssureModel;->updateClickAtMills(J)V

    .line 376
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getEvictAtMills()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/search/assure/model/AssureModel;->updateEvictTimes(J)V

    .line 378
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    iget-object v4, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 1066
    iget-wide v4, v4, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->d:J

    .line 378
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/search/assure/model/AssureModel;->resetClickTimesAfter(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    new-array v4, v11, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v5, v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, " reset click times after "

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 2066
    iget-wide v6, v5, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->d:J

    .line 379
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[add] "

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v5, v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, " updateClickAtMills and incClickTimes"

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/search/assure/model/AssureModel;->updateClickAtMills(J)V

    .line 386
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/assure/model/AssureModel;->incClickTimes()V

    .line 389
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->b:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v3, v8}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->trimToSize(I)V

    .line 390
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->b:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    iget-object v4, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->add(Ljava/lang/Object;)V

    .line 392
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "[add] "

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v5, v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, " add to assure area, its size = "

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->b:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v5}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 3066
    iget-object v3, v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->c:Ljava/util/Set;

    .line 395
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 396
    .local v2, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 4066
    iget-object v3, v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->c:Ljava/util/Set;

    .line 396
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 397
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 400
    .local v1, "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v1, :cond_1

    .line 403
    iget-object v4, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[add] "

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v6, v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, ", "

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    invoke-static {v6, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, " saved to db, is to temp area = "

    aput-object v6, v5, v12

    const/4 v6, 0x5

    invoke-virtual {v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isInTempArea()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v1    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_2
    invoke-static {}, Lend;->b()Lend;

    move-result-object v3

    invoke-virtual {v3, v2}, Lend;->a(Ljava/util/ArrayList;)V

    .line 407
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 5066
    iget-object v3, v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->c:Ljava/util/Set;

    .line 407
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 411
    .end local v0    # "cached":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v2    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :goto_1
    return-void

    .line 409
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[add] "

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v6, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {v5, v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, " not isQualified."

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
