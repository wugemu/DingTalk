.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iput-object p2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->a:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 432
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->a:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)I

    move-result v2

    new-instance v3, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12$1;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 449
    return-void
.end method
