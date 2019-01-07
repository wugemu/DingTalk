.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$2;
.super Ljava/lang/Object;
.source "SelectedContactsActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$2;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v0, "manage_staff_mode"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 186
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$2;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .line 188
    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getDisplayOid()J

    move-result-wide v2

    .line 187
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "SelectedContactsAddStaff"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    return-object p1
.end method
