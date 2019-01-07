.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;
.super Ljava/lang/Object;
.source "SpaceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V

    .line 536
    return-void
.end method
