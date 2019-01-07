.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1709
    const-string/jumbo v0, "intent_key_mail_name"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    :cond_0
    const-string/jumbo v0, "intent_key_mail_domain"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1712
    return-object p1
.end method
