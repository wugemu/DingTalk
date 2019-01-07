.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iput-object p2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 436
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 437
    .local v0, "orgDeptSelected":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;J)J

    .line 439
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1, p2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)I

    .line 441
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 442
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 443
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V

    .line 445
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 446
    return-void
.end method
