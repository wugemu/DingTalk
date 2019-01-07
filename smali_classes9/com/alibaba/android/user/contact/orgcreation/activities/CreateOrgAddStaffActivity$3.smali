.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;
.super Ljava/lang/Object;
.source "CreateOrgAddStaffActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "saved"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    sget v0, Lezg$l;->manual_add_people_button_save_success_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 255
    :cond_0
    return-void
.end method
