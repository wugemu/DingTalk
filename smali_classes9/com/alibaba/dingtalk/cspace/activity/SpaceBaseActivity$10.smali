.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v9, v9, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 3650
    iget-object v9, v9, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 1549
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1550
    .local v2, "dentryModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1551
    .local v6, "photoObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v9, v10}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, "currentIndexed":Z
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-boolean v9, v9, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v10, v10, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v9, v10}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v7

    .line 1555
    .local v7, "statSrc":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4486
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    .local v1, "currentPicUrl":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1558
    .local v8, "tmpDentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v8, :cond_0

    const-string/jumbo v10, "file"

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1562
    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1563
    .local v3, "iconResId":I
    sget v10, Lfzs$e;->file_pic_36:I

    if-eq v3, v10, :cond_1

    const-string/jumbo v10, "image"

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1567
    :cond_1
    invoke-static {v8, v7}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v5

    .line 1568
    .local v5, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 1569
    iget-object v10, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "favorite_enter_hide"

    const-string/jumbo v12, "true"

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    iget-object v10, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "space_transfer_src"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v10, v10, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v10}, Lgqu;->d(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v10, v10, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->o:I

    const/16 v11, 0x67

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v10, v10, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->o:I

    const/16 v11, 0x66

    if-ne v10, v11, :cond_3

    .line 1574
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 1577
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v10}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    if-nez v0, :cond_0

    iget-object v10, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1581
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v10, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1582
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1586
    .end local v3    # "iconResId":I
    .end local v5    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v8    # "tmpDentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v10, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1587
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v9, v9, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->L:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1588
    .local v4, "message":Landroid/os/Message;
    const/16 v9, 0x3ea

    iput v9, v4, Landroid/os/Message;->what:I

    .line 1589
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v9, v9, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->L:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1590
    return-void
.end method
