.class final Lfgu$2;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field final synthetic c:Lfgu;


# direct methods
.method constructor <init>(Lfgu;ILcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgu;

    .prologue
    .line 171
    iput-object p1, p0, Lfgu$2;->c:Lfgu;

    iput p2, p0, Lfgu$2;->a:I

    iput-object p3, p0, Lfgu$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

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
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.new.editor.fragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "node"

    iget-object v1, p0, Lfgu$2;->c:Lfgu;

    invoke-static {v1}, Lfgu;->a(Lfgu;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lfgu$2;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v1, "display_department_oid"

    iget-object v2, p0, Lfgu$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "display_enterprise_oid"

    iget-object v2, p0, Lfgu$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lfgu$2;->c:Lfgu;

    invoke-static {v1}, Lfgu;->b(Lfgu;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 179
    return-void
.end method
