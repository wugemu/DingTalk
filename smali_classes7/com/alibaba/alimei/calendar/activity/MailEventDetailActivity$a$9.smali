.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$9;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$9;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 732
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 733
    return-void
.end method
