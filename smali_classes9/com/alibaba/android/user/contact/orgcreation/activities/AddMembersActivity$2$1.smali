.class final Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;
.super Ljava/lang/Object;
.source "AddMembersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->h(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->h(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    const-string/jumbo v2, "IDENTIFIY_ADD_MEMBER_ACTIVITY"

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    goto :goto_0
.end method
