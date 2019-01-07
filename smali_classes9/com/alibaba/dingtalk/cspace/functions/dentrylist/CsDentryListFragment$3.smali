.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;
.super Ljava/lang/Object;
.source "CsDentryListFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lgdv;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lgdu$a;)Lgdv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;Lgdv;)Lgdv;

    .line 173
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;

    move-result-object v0

    invoke-interface {v0}, Lgdu$a;->b()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;

    move-result-object v0

    return-object v0
.end method
