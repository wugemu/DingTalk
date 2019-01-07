.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;
.super Ljava/lang/Object;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Lxm;


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
    .line 510
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

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
    .line 513
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    if-eqz p2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    instance-of v2, p2, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 518
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    .line 519
    .local v0, "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getChangeReason()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 523
    :sswitch_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getUpdateDentrys()Ljava/util/Map;

    move-result-object v1

    .line 524
    .local v1, "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/Map;)V

    goto :goto_0

    .line 527
    .end local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    :sswitch_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getDeleteDentrys()Ljava/util/Map;

    move-result-object v1

    .line 528
    .restart local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/Map;)V

    goto :goto_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
