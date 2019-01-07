.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;
.super Landroid/os/Handler;
.source "SpaceCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 349
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 350
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ltl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ltl;

    move-result-object v4

    .line 1055
    iget-boolean v4, v4, Ltl;->c:Z

    .line 353
    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z

    .line 354
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ltl;

    move-result-object v4

    .line 2047
    iget-object v4, v4, Ltl;->b:Ljava/lang/String;

    .line 355
    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ltl;

    move-result-object v1

    .line 3031
    iget-object v9, v1, Ltl;->d:Ljava/util/List;

    .line 363
    .local v9, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-nez v9, :cond_2

    .line 364
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .restart local v9    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ltl;

    move-result-object v1

    .line 3039
    iget-boolean v1, v1, Ltl;->a:Z

    .line 367
    if-nez v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 369
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1, v9, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;Z)V

    .line 370
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    invoke-virtual {v1, v9, v3}, Lfzz;->a(Ljava/util/List;Z)V

    .line 372
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    .line 373
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    .line 374
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    invoke-virtual {v1}, Lfzz;->notifyDataSetChanged()V

    .line 382
    .end local v9    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z

    goto/16 :goto_0

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;I)I

    goto :goto_1

    .line 377
    .restart local v9    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 378
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;Z)V

    .line 379
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto :goto_2

    .line 385
    .end local v9    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->dismissLoadingDialog()V

    .line 386
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z

    .line 387
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lfzt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lfzt;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 389
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    invoke-static {v6, v1}, Lfzt;->a(Ljava/lang/String;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 390
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 392
    const-string/jumbo v1, "is_space_admin"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->o(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    :goto_3
    new-instance v7, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;

    invoke-direct {v7}, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;-><init>()V

    .line 397
    .local v7, "photoObjectsFetcher":Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;
    iput-object v6, v7, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;->cacheKey:Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    .line 399
    .local v0, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v8

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0

    .line 394
    .end local v0    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v7    # "photoObjectsFetcher":Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;
    :cond_6
    const-string/jumbo v1, "check_space_admin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 402
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "cacheKey":Ljava/lang/String;
    :pswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 403
    .local v10, "errorMsg":Ljava/lang/String;
    invoke-static {v10}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    .end local v10    # "errorMsg":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 407
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 409
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 410
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lfzz;->a(Ljava/util/List;Z)V

    .line 412
    :cond_8
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 413
    :cond_9
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto/16 :goto_0

    .line 415
    :cond_a
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto/16 :goto_0

    .line 419
    :pswitch_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lfzz;->a(Ljava/util/List;Z)V

    .line 421
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 422
    :cond_b
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto/16 :goto_0

    .line 424
    :cond_c
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto/16 :goto_0

    .line 429
    :pswitch_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 430
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto/16 :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
