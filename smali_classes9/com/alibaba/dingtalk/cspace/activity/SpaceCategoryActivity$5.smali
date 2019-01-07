.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;
.super Ljava/lang/Object;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 935
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v3, "dentryModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 937
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v6, "photoObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 939
    const/4 v0, 0x0

    .line 942
    .local v0, "curentIndexed":Z
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1486
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "currentPicUrl":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 945
    .local v2, "dentryModel1":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 946
    .local v7, "resItemId":I
    sget v9, Lfzs$e;->file_pic_36:I

    if-ne v7, v9, :cond_0

    .line 947
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->b:Ljava/lang/String;

    invoke-static {v2, v9}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v5

    .line 948
    .local v5, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 949
    iget-object v9, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v10, "favorite_enter_hide"

    const-string/jumbo v11, "true"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iget-object v9, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v10, "space_transfer_src"

    iget-object v11, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    if-nez v0, :cond_0

    iget-object v9, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 954
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v9, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 955
    const/4 v0, 0x1

    goto :goto_0

    .line 959
    .end local v2    # "dentryModel1":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v7    # "resItemId":I
    :cond_1
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v9, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 960
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v8, v8, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 961
    .local v4, "message":Landroid/os/Message;
    const/16 v8, 0x66

    iput v8, v4, Landroid/os/Message;->what:I

    .line 962
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v8, v8, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 963
    return-void
.end method
