.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lfvk;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[D

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;[DLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 2889
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->a:[D

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2892
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    sget v3, Lezg$l;->dt_contact_extContact_address_navi:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    sget v3, Lezg$l;->copy_to_clipboard:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2893
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 2906
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2907
    return-void
.end method
