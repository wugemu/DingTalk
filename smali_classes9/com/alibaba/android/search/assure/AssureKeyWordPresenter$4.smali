.class public final Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;
.super Ljava/lang/Object;
.source "AssureKeyWordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcov;

.field final synthetic b:Lcom/alibaba/android/search/SearchGroupType;

.field final synthetic c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcov;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->a:Lcov;

    iput-object p3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->b:Lcom/alibaba/android/search/SearchGroupType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 423
    :try_start_0
    invoke-static {}, Lenq;->a()Lenq;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 1066
    iget-object v8, v8, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a:Ljava/lang/String;

    .line 423
    invoke-virtual {v7, v8}, Lenq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 424
    .local v0, "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 425
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->a:Lcov;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcov;->a(Ljava/lang/Object;)V

    .line 426
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[query] query "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 2066
    iget-object v10, v10, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a:Ljava/lang/String;

    .line 426
    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " from db, result is empty"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 472
    .end local v0    # "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :goto_0
    return-void

    .line 430
    .restart local v0    # "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 3066
    iget-object v7, v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    .line 430
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    .line 431
    .local v6, "sortedSet":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    invoke-virtual {v6}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 469
    .end local v0    # "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    .end local v6    # "sortedSet":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Throwable;
    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "[query] queryAsync error: "

    aput-object v8, v7, v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :cond_1
    const/4 v4, 0x0

    .line 435
    .local v4, "group":I
    const/4 v1, 0x0

    .line 436
    .local v1, "contact":I
    const/4 v3, 0x0

    .line 438
    .local v3, "function":I
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 439
    .local v5, "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    invoke-virtual {v5}, Lcom/alibaba/android/search/assure/model/AssureModel;->isInTempArea()Z

    move-result v7

    if-nez v7, :cond_2

    .line 442
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/alibaba/android/search/assure/model/AssureModel;->setIsQuery(Z)V

    .line 443
    sget-object v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$5;->a:[I

    invoke-virtual {v5}, Lcom/alibaba/android/search/assure/model/AssureModel;->getType()Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 449
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    .line 450
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 5066
    iget-object v7, v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    .line 450
    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v7, v5}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 445
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 446
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 4066
    iget-object v7, v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    .line 446
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v7, v5}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 453
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 454
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 6066
    iget-object v7, v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    .line 454
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v7, v5}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 461
    .end local v5    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[query] query "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 7066
    iget-object v10, v10, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a:Ljava/lang/String;

    .line 461
    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " from db, group = "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", contact = "

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, ", function = "

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
