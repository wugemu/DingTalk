.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;
.super Lgoi;
.source "CSpaceListFragment.java"


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
    .line 1495
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Lgoi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .locals 2
    .param p2, "exception"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1498
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-super {p0, p1, p2}, Lgoi;->a(Ljava/util/List;Z)V

    .line 1499
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1500
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z

    .line 1501
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1502
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1503
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1504
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 1505
    return-void
.end method
