.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b_(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgoa;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lgoa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 2833
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;->a:Lgoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)V
    .locals 3
    .param p1, "category"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2836
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;->a:Lgoa;

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;Lgoa;)V

    .line 2837
    return-void
.end method
