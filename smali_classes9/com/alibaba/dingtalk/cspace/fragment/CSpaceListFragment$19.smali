.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$19;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m()V
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
    .line 731
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$19;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 734
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$19;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z

    .line 735
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$19;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    .line 736
    return-void
.end method
