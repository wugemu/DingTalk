.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->b:Z

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1005
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_doc_upload_notice"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->b:Z

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;ZZLjava/util/List;)V

    .line 1007
    return-void
.end method
