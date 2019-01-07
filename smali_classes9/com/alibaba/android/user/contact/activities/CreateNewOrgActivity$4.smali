.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    .line 617
    return-void
.end method
