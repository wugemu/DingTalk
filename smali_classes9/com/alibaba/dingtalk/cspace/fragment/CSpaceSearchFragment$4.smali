.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;
.super Ljava/lang/Object;
.source "CSpaceSearchFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lghi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 336
    check-cast p1, Lghi;

    .line 2339
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2344
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2348
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2349
    if-nez p1, :cond_2

    .line 2350
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2351
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Z)Z

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    const/4 v2, 0x1

    invoke-static {v0, v4, v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/util/List;ZZ)V

    .line 2381
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;->a(Ljava/lang/String;I)V

    .line 336
    :cond_1
    return-void

    .line 2353
    :cond_2
    iget-object v0, p1, Lghi;->c:Ljava/util/List;

    if-nez v0, :cond_5

    move v0, v1

    .line 2354
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget-object v5, p1, Lghi;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2355
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget-object v5, p1, Lghi;->e:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v5, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 2355
    invoke-static {v2, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Z)Z

    .line 2357
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget v5, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a:I

    add-int/2addr v0, v5

    iput v0, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a:I

    .line 2358
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_6

    .line 2359
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iput v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a:I

    .line 2360
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;ZILjava/lang/String;)V

    .line 2365
    :goto_2
    iget-object v0, p1, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p1, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 2368
    iget-object v2, v0, Lghg;->p:Ljava/lang/Long;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lghg;->p:Ljava/lang/Long;

    .line 2369
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2368
    :goto_4
    invoke-static {v0, v2}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 2371
    iget-object v6, v0, Lghg;->q:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v0, v0, Lghg;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_4

    .line 2372
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v3, v7}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2374
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2353
    :cond_5
    iget-object v0, p1, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 2362
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V

    goto :goto_2

    :cond_7
    move-object v2, v3

    .line 2369
    goto :goto_4

    .line 2382
    :cond_8
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->getCount()I

    move-result v1

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 388
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;->b()V

    .line 400
    :cond_2
    move-object v0, p2

    .line 401
    .local v0, "tipMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    sget v2, Lfzs$h;->network_no_connection:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1, v4, v5, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;ZILjava/lang/String;)V

    .line 1410
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "loadMoreFromServer:"

    aput-object v3, v1, v2

    const-string/jumbo v2, ", keyword: "

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string/jumbo v2, ", mSearchType: "

    aput-object v2, v1, v5

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 1413
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", mOrgId: "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 1414
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ", mSpaceId: "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 1415
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, ", mFolderId: "

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 1416
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, ", offset: "

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, ", pageSize: "

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "20"

    .line 1418
    aput-object v3, v1, v2

    .line 1410
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1419
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CSpaceSearchFragment"

    const/4 v4, 0x0

    .line 1420
    invoke-static {v1, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 425
    return-void
.end method
