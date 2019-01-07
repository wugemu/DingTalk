.class final Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;
.super Ljava/lang/Object;
.source "PermissionManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

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
    const/4 v3, 0x1

    .line 223
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$c;->external_permission_menu:I

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    return-void
.end method
