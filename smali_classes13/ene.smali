.class public Lene;
.super Ljava/lang/Object;
.source "AssureSearchPresenter.java"

# interfaces
.implements Lcmj;
.implements Lenh;


# instance fields
.field private a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lene;->a:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-object v1, p0, Lene;->a:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 54
    .local v0, "keyWordPresenter":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lene;->a:Landroid/util/LruCache;

    new-instance v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .end local v0    # "keyWordPresenter":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "keyWordPresenter":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lene;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 94
    invoke-static {}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h()V

    .line 95
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 13
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 33
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v2, v0, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 34
    check-cast v1, Lcom/alibaba/android/search/model/GroupModel;

    .line 35
    .local v1, "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/GroupModel;->shouldReturn2Recommend()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v1    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    :cond_2
    invoke-virtual {p0, p1}, Lene;->a(Ljava/lang/String;)Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    move-result-object v7

    .line 1230
    if-eqz p2, :cond_0

    .line 1238
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v8

    .line 1239
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1243
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 1244
    iget v5, v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->e:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1246
    invoke-static {v9}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v10

    move v5, v4

    .line 1247
    :goto_1
    if-ge v5, v9, :cond_4

    .line 1248
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v8, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2054
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    const-string/jumbo v12, "keyword = null"

    invoke-static {v2, v12}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2055
    const-string/jumbo v2, "assureModel = null"

    invoke-static {p2, v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    sget-object v2, Lenk$1;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getType()Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v12

    aget v2, v2, v12

    packed-switch v2, :pswitch_data_0

    .line 2066
    new-instance v2, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;

    invoke-direct {v2, v11, p2}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 1251
    :goto_3
    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/assure/model/AssureModel;->setIsQuery(Z)V

    .line 1253
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v4

    .line 2054
    goto :goto_2

    .line 2059
    :pswitch_0
    new-instance v2, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    invoke-direct {v2, v11, p2}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto :goto_3

    .line 2061
    :pswitch_1
    new-instance v2, Lcom/alibaba/android/search/assure/model/GroupAssureModel;

    invoke-direct {v2, v11, p2}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto :goto_3

    .line 2063
    :pswitch_2
    new-instance v2, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;

    invoke-direct {v2, v11, p2}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto :goto_3

    .line 1255
    :cond_4
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v2

    .line 1256
    instance-of v3, v2, Lene;

    if-eqz v3, :cond_0

    .line 1260
    check-cast v2, Lene;

    .line 1262
    const-string/jumbo v3, "AssureKeyWordPresenter"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;

    invoke-direct {v4, v7, v10, v2}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Ljava/util/List;Lene;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2057
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcov;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcov;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcov",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    .local p2, "listener":Lcov;, "Lcov<Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 2555
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    .line 68
    .local v0, "groupType":Lcom/alibaba/android/search/SearchGroupType;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    .line 72
    :cond_2
    invoke-virtual {p0, p1}, Lene;->a(Ljava/lang/String;)Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    move-result-object v1

    .line 2547
    if-eqz p2, :cond_0

    .line 2551
    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/SearchGroupType;)Ljava/util/List;

    move-result-object v2

    .line 2552
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2553
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[query] snapshot result = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 2554
    invoke-interface {p2, v2}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3418
    :cond_3
    const-string/jumbo v2, "AssureKeyWordPresenter"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;

    invoke-direct {v3, v1, p2, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcov;Lcom/alibaba/android/search/SearchGroupType;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
