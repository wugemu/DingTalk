.class final Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;
.super Ljava/lang/Object;
.source "JoinOrgInvitationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V

    .line 135
    return-void
.end method
