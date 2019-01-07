.class final Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;
.super Ljava/lang/Object;
.source "JoinOrgInvitationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    iput p2, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->a:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->a:I

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;ILcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V

    .line 69
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    return-void
.end method
