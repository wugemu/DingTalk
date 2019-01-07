.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$3;
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
    .line 175
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

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
    .line 178
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v1

    invoke-virtual {v1}, Lgld;->c()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lgde;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lgde;

    move-result-object v1

    invoke-interface {v1, v0}, Lgde;->d(Ljava/util/List;)V

    .line 182
    :cond_0
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v1

    invoke-virtual {v1}, Lgld;->d()V

    .line 183
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgoj;->c(Ljava/lang/String;)V

    .line 184
    return-void
.end method
