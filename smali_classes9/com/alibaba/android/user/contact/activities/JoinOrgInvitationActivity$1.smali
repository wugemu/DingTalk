.class final Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;
.super Ljava/lang/Object;
.source "JoinOrgInvitationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 61
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    sget v4, Lezg$l;->dt_common_delete:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;I)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 72
    return v5
.end method
