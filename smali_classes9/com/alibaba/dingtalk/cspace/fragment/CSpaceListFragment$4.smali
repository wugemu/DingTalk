.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 3
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1315
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    if-eqz p2, :cond_0

    .line 1316
    instance-of v2, p2, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 1317
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    .line 1318
    .local v0, "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    if-eqz v0, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->q(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1321
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getChangeReason()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1340
    .end local v0    # "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    :cond_0
    :goto_0
    return-void

    .line 1324
    .restart local v0    # "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getAddDentrys()Ljava/util/Map;

    move-result-object v1

    .line 1325
    .local v1, "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/Map;)V

    goto :goto_0

    .line 1329
    .end local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getUpdateDentrys()Ljava/util/Map;

    move-result-object v1

    .line 1330
    .restart local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/Map;)V

    goto :goto_0

    .line 1333
    .end local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getDeleteDentrys()Ljava/util/Map;

    move-result-object v1

    .line 1334
    .restart local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/Map;)V

    goto :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
