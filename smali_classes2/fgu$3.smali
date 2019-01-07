.class final Lfgu$3;
.super Ljava/lang/Object;
.source "SelectorDepartmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgu;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:I

.field final synthetic e:Lfgu;


# direct methods
.method constructor <init>(Lfgu;ZLcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "this$0"    # Lfgu;

    .prologue
    .line 183
    iput-object p1, p0, Lfgu$3;->e:Lfgu;

    iput-boolean p2, p0, Lfgu$3;->a:Z

    iput-object p3, p0, Lfgu$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object p4, p0, Lfgu$3;->c:Landroid/widget/CheckBox;

    iput p5, p0, Lfgu$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-boolean v2, p0, Lfgu$3;->a:Z

    if-nez v2, :cond_0

    .line 187
    sget v1, Lezg$l;->no_permission_select_dept:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lfgu$3;->e:Lfgu;

    invoke-static {v2}, Lfgu;->c(Lfgu;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.choose.org.department"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_org_selected_single_dept"

    iget-object v2, p0, Lfgu$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lfgu$3;->e:Lfgu;

    invoke-static {v1}, Lfgu;->b(Lfgu;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 194
    iget-object v1, p0, Lfgu$3;->e:Lfgu;

    invoke-static {v1}, Lfgu;->b(Lfgu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lfgu$3;->c:Landroid/widget/CheckBox;

    iget-object v3, p0, Lfgu$3;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    iget-object v2, p0, Lfgu$3;->e:Lfgu;

    iget v3, p0, Lfgu$3;->d:I

    iget-object v4, p0, Lfgu$3;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lfgu$3;->e:Lfgu;

    invoke-static {v1}, Lfgu;->a(Lfgu;)Ljava/util/List;

    move-result-object v1

    iget v5, p0, Lfgu$3;->d:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v2, v3, v4, v1}, Lfgu;->a(Lfgu;ILandroid/widget/CheckBox;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 196
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
