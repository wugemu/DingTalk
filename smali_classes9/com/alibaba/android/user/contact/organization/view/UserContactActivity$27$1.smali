.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27$1;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1477
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 2480
    if-eqz p1, :cond_0

    .line 2481
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2482
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, p1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 2483
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2484
    const-string/jumbo v1, "fiter_notify_indicator_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2485
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2486
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 1477
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1496
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1492
    return-void
.end method
