.class final Lcom/alibaba/android/user/login/ReportLossActivity$9;
.super Ljava/lang/Object;
.source "ReportLossActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/user/login/ReportLossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ReportLossActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ReportLossActivity;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$9;->b:Lcom/alibaba/android/user/login/ReportLossActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/ReportLossActivity$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 502
    return-void
.end method