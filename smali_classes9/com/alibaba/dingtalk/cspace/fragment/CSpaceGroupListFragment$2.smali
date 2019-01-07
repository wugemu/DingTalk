.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$2;
.super Ljava/lang/Object;
.source "CSpaceGroupListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 150
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lgde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lgde;

    .line 156
    :cond_0
    return-void
.end method
