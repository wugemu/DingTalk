.class public final Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;
.super Leqq;
.source "FunctionSearchPresenter.java"

# interfaces
.implements Lerc$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;
    }
.end annotation


# instance fields
.field m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

.field n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerc$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerc$b;

    .prologue
    .line 67
    invoke-direct {p0}, Leqq;-><init>()V

    .line 63
    sget-object v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;->Function:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 65
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 69
    iput-object p2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 71
    return-void
.end method

.method static a(Lcom/alibaba/android/search/model/BaseModel;Ljava/util/List;)V
    .locals 11
    .param p0, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/model/BaseModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    instance-of v8, p0, Lcom/alibaba/android/search/model/FunctionModel;

    if-nez v8, :cond_3

    .line 401
    if-eqz p0, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 405
    .local v1, "contains":Z
    invoke-static {v6}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->removeRedTagAndPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "origName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 408
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "modelName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 414
    const/4 v1, 0x1

    .line 419
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v5    # "modelName":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 420
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v1    # "contains":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "origName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v4, p0

    .line 426
    check-cast v4, Lcom/alibaba/android/search/model/FunctionModel;

    .line 427
    .local v4, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    invoke-virtual {v4}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v3

    .line 429
    .local v3, "functionId":I
    const/4 v1, 0x0

    .line 430
    .restart local v1    # "contains":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 431
    .restart local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/alibaba/android/search/model/FunctionModel;

    if-ne v9, v10, :cond_6

    move-object v2, v0

    .line 432
    check-cast v2, Lcom/alibaba/android/search/model/FunctionModel;

    .line 433
    .local v2, "fm":Lcom/alibaba/android/search/model/FunctionModel;
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v9

    if-ne v9, v3, :cond_6

    .line 434
    const/4 v1, 0x1

    .line 450
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v2    # "fm":Lcom/alibaba/android/search/model/FunctionModel;
    :cond_5
    :goto_1
    if-nez v1, :cond_2

    .line 451
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    .restart local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v6

    .line 440
    .restart local v6    # "name":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 444
    invoke-virtual {v4}, Lcom/alibaba/android/search/model/FunctionModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 445
    const/4 v1, 0x1

    .line 446
    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Lepv;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;
    .param p1, "x1"    # Lepv;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    .line 7369
    if-eqz p1, :cond_0

    iget-object v0, p1, Lepv;->a:Ljava/util/List;

    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7370
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V

    .line 7371
    :goto_0
    return-void

    .line 7374
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7376
    iget-object v0, p1, Lepv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepu;

    .line 7377
    if-eqz v0, :cond_2

    .line 7380
    iget v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    .line 8055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 8366
    new-instance v3, Lcom/alibaba/android/search/model/SearchFunctionModel;

    invoke-direct {v3, v0, p2}, Lcom/alibaba/android/search/model/SearchFunctionModel;-><init>(Lepu;Ljava/lang/String;)V

    .line 7386
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    if-eqz v4, :cond_3

    .line 7387
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 9084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 7387
    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 7388
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 9092
    iget v4, v4, Leoe;->b:I

    .line 7388
    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 7390
    :cond_3
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 7391
    iget-object v0, v0, Lepu;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 7392
    invoke-static {v3, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Lcom/alibaba/android/search/model/BaseModel;Ljava/util/List;)V

    goto :goto_1

    .line 7396
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Leqa;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;
    .param p1, "x1"    # Leqa;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    .line 9457
    if-eqz p1, :cond_0

    iget-object v0, p1, Leqa;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Leqa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 9458
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V

    .line 9459
    :goto_0
    return-void

    .line 9462
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9464
    iget-object v0, p1, Leqa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepz;

    .line 9465
    if-eqz v0, :cond_2

    .line 9468
    iget v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    .line 10055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 10362
    new-instance v3, Lcom/alibaba/android/search/model/MicroTemplateModel;

    invoke-direct {v3, v0, p2}, Lcom/alibaba/android/search/model/MicroTemplateModel;-><init>(Lepz;Ljava/lang/String;)V

    .line 9470
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    if-eqz v4, :cond_3

    .line 9471
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 11084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 9471
    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 9472
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 11092
    iget v4, v4, Leoe;->b:I

    .line 9472
    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 9474
    :cond_3
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 9475
    iget-object v0, v0, Lepz;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 9476
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9479
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    .line 6341
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 6342
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V

    .line 6343
    :goto_0
    return-void

    .line 6346
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6348
    if-eqz v0, :cond_2

    .line 7055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 6352
    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Function:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v3, v0, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v3

    .line 6353
    if-eqz v3, :cond_2

    .line 6356
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    if-eqz v4, :cond_3

    .line 6357
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 7084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 6357
    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 6358
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 7092
    iget v4, v4, Leoe;->b:I

    .line 6358
    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 6360
    :cond_3
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 6361
    const-string/jumbo v4, "funid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 6362
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6365
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 309
    .line 6295
    .local p1, "baseModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/model/BaseModel;

    .line 6297
    if-eqz v3, :cond_0

    .line 6301
    iget-object v5, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    invoke-static {v3, v5}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Lcom/alibaba/android/search/model/BaseModel;Ljava/util/List;)V

    goto :goto_0

    .line 6304
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Leqp$b;->a(Ljava/util/List;)V

    .line 310
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 337
    :cond_2
    :goto_1
    return-void

    .line 314
    :cond_3
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v2

    .line 315
    .local v2, "presenter":Lenh;
    if-eqz v2, :cond_2

    .line 319
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 320
    .local v0, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v3, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;-><init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/util/List;)V

    const-class v4, Lcov;

    iget-object v5, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcov;

    .line 336
    .local v1, "listener":Lcov;, "Lcov<Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;>;"
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lenh;->a(Ljava/lang/String;Lcov;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x64

    const/4 v8, 0x1

    .line 92
    sget-object v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$5;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 1112
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    .line 1113
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;-><init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/lang/String;)V

    .line 3124
    if-eqz v2, :cond_0

    .line 3128
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 3733
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v3}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 3734
    const-string/jumbo v4, "function"

    iput-object v4, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 3735
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 3736
    new-instance v4, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v5, "tbfunction"

    invoke-direct {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 3737
    iget-object v4, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    aput-object v7, v5, v6

    const-string/jumbo v6, "desc"

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 3738
    iget-object v4, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const-class v5, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    invoke-static {v5}, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 3742
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->R()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3743
    iget-object v4, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v5, "funid"

    sget-object v6, Lcom/alibaba/android/search/utils/FunctionLocalData;->SHOPPING_CUSTOMER_MESSAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    iget v6, v6, Lcom/alibaba/android/search/utils/FunctionLocalData;->mId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 3128
    :cond_1
    new-instance v4, Lenr$15;

    invoke-direct {v4, v2}, Lenr$15;-><init>(Lcca;)V

    invoke-virtual {v0, v1, v3, v4}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4149
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_new_function_has_perm"

    invoke-virtual {v0, v1, v8}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4158
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    .line 4160
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 4162
    new-instance v2, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;-><init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/lang/String;)V

    const-class v1, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 4222
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 5084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 4222
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    goto/16 :goto_0

    .line 5227
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    .line 5228
    new-instance v5, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$3;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$3;-><init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/lang/String;)V

    .line 5291
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 6084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 5291
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    goto/16 :goto_0

    .line 100
    :cond_3
    sget-object v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;->None:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a()V

    goto/16 :goto_0

    .line 105
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->o()V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-super {p0}, Leqq;->d()V

    .line 76
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Leqq;->m()V

    .line 83
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;->Function:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 85
    return-void
.end method
