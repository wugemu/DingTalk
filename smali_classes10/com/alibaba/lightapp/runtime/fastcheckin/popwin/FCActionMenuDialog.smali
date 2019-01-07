.class public Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCActionMenuDialog;
.super Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
.source "FCActionMenuDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v1, Lhdn$h;->list_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "target":Landroid/view/View;
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/ConstraintHeightListView;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ConstraintHeightListView;

    .end local v0    # "target":Landroid/view/View;
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ConstraintHeightListView;->setMaxHeight(F)V

    .line 27
    :cond_0
    return-void
.end method
