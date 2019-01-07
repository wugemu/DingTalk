.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;
.super Ljava/lang/Object;
.source "CSpaceGroupListFragment.java"

# interfaces
.implements Lglg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 326
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .line 1051
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    .line 326
    if-nez v5, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v0, "capacityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgic;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgic;

    .line 332
    .local v3, "spaceUpdateInfo":Lgic;
    iget-object v6, v3, Lgic;->a:Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 333
    iget-object v6, v3, Lgic;->a:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 336
    .end local v3    # "spaceUpdateInfo":Lgic;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 337
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    .line 338
    .local v1, "groupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getModifiedTime()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_6

    .line 339
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    .line 340
    .local v2, "spaceGroupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgic;

    .line 341
    .local v4, "updateInfo":Lgic;
    if-eqz v4, :cond_4

    .line 342
    iget-object v6, v4, Lgic;->b:Ljava/lang/Long;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lgic;->b:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->setModifiedTime(Ljava/lang/Long;)V

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 347
    .end local v1    # "groupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    .end local v2    # "spaceGroupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    .end local v4    # "updateInfo":Lgic;
    :cond_6
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lfzy;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lfzy;

    move-result-object v5

    .line 1075
    iput-object v0, v5, Lfzy;->a:Ljava/util/HashMap;

    .line 349
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lfzy;

    move-result-object v5

    invoke-virtual {v5}, Lfzy;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
