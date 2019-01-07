.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;
.super Ljava/lang/Object;
.source "SpaceListActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V

    .line 447
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 451
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V

    .line 452
    return-void
.end method
