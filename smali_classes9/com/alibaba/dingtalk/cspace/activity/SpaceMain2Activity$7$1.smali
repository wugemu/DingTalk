.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 710
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->dismissLoadingDialog()V

    .line 711
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a(Ljava/util/List;)V

    .line 712
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 713
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->r(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 714
    return-void
.end method
