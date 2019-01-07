.class final Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1$1;
.super Ljava/lang/Object;
.source "Add2OrgActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->t(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    const-string/jumbo v1, "org_invite_info"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .line 531
    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->t(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v2

    .line 530
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 533
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 534
    return-object p1
.end method
