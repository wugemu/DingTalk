.class final Lfma$1;
.super Ljava/lang/Object;
.source "MyCustomerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfma;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lfma;


# direct methods
.method constructor <init>(Lfma;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lfma;

    .prologue
    .line 101
    iput-object p1, p0, Lfma$1;->c:Lfma;

    iput-object p2, p0, Lfma$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    iput-object p3, p0, Lfma$1;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-object v2, p0, Lfma$1;->c:Lfma;

    invoke-static {v2}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lfma$1;->c:Lfma;

    invoke-static {v2}, Lfma;->b(Lfma;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lfma$1;->c:Lfma;

    invoke-static {v1}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v1

    iget-object v2, p0, Lfma$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v1, v2}, Lfhx;->e(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Lfma$1;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    iget-object v1, p0, Lfma$1;->c:Lfma;

    invoke-static {v1}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v1

    iget-object v2, p0, Lfma$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v1, v2}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    .local v0, "result":Z
    iget-object v1, p0, Lfma$1;->b:Landroid/widget/CheckBox;

    move-object v2, v1

    move v1, v0

    .line 113
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 112
    .end local v0    # "result":Z
    :cond_3
    iget-object v2, p0, Lfma$1;->c:Lfma;

    invoke-static {v2}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v2

    iget-object v3, p0, Lfma$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v2, v3, v1}, Lfhx;->a(Ljava/lang/Object;Z)Z

    move-result v0

    .line 113
    .restart local v0    # "result":Z
    iget-object v2, p0, Lfma$1;->b:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1
.end method
