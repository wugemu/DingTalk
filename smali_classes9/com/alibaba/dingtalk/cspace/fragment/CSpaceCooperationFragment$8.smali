.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$8;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 223
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v3

    .line 226
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lgit;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 230
    check-cast v0, Lgit;

    .line 231
    .local v0, "dpCoFolderModel":Lgit;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Lgit;)V

    goto :goto_0
.end method
