.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

.field final synthetic b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .line 1717
    if-eqz v1, :cond_0

    .line 1720
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 2359
    iget-object v3, v0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    .line 1720
    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1721
    sget v3, Laxo$i;->dt_mail_event_tentative_confirm_tip:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1722
    sget v3, Laxo$i;->sure:I

    new-instance v4, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$8;

    invoke-direct {v4, v0, v1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$8;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1729
    sget v1, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$9;

    invoke-direct {v3, v0, v2}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$9;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1735
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 618
    :cond_0
    return-void
.end method
