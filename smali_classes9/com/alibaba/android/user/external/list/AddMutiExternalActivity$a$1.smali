.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 929
    const-string/jumbo v1, "exter_list_add_mobile_lotscontact_edit"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 931
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    const-class v2, Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 932
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "employee_info"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 933
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 934
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-result-object v1

    instance-of v1, v1, Lfno;

    if-eqz v1, :cond_1

    .line 937
    const-string/jumbo v2, "intent_key_ext_contact_fields_object"

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-result-object v1

    check-cast v1, Lfno;

    .line 1049
    iget-object v1, v1, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 937
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 940
    return-void
.end method
