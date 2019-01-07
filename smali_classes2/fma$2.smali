.class final Lfma$2;
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
    .line 121
    iput-object p1, p0, Lfma$2;->c:Lfma;

    iput-object p2, p0, Lfma$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    iput-object p3, p0, Lfma$2;->b:Landroid/widget/CheckBox;

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

    .line 124
    iget-object v2, p0, Lfma$2;->c:Lfma;

    invoke-static {v2}, Lfma;->b(Lfma;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lfma$2;->c:Lfma;

    invoke-static {v2}, Lfma;->c(Lfma;)Lfmc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v1, p0, Lfma$2;->c:Lfma;

    invoke-static {v1}, Lfma;->c(Lfma;)Lfmc;

    move-result-object v1

    iget-object v2, p0, Lfma$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v1, v2}, Lfmc;->a(Ljava/lang/Object;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lfma$2;->c:Lfma;

    invoke-static {v2}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lfma$2;->c:Lfma;

    invoke-static {v2}, Lfma;->b(Lfma;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 129
    iget-object v1, p0, Lfma$2;->c:Lfma;

    invoke-static {v1}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v1

    iget-object v2, p0, Lfma$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v1, v2}, Lfhx;->e(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    iget-object v2, p0, Lfma$2;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lfma$2;->c:Lfma;

    invoke-static {v2}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v2

    iget-object v3, p0, Lfma$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v2, v3, v1}, Lfhx;->a(Ljava/lang/Object;Z)Z

    move-result v0

    .line 133
    .local v0, "result":Z
    iget-object v2, p0, Lfma$2;->b:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 135
    .end local v0    # "result":Z
    :cond_4
    iget-object v1, p0, Lfma$2;->c:Lfma;

    invoke-static {v1}, Lfma;->a(Lfma;)Lfhx;

    move-result-object v1

    iget-object v2, p0, Lfma$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-interface {v1, v2}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .restart local v0    # "result":Z
    iget-object v1, p0, Lfma$2;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
