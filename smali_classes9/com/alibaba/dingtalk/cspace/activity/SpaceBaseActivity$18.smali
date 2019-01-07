.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$18;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 521
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzx$a;

    .line 522
    .local v0, "dropDownItem":Lfzx$a;
    if-eqz v0, :cond_0

    .line 1073
    iget-boolean v1, v0, Lfzx$a;->f:Z

    .line 522
    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .line 2053
    iget v2, v0, Lfzx$a;->a:I

    .line 523
    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(I)Ljava/lang/Boolean;

    .line 525
    :cond_0
    return-void
.end method
