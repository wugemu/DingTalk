.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;
.super Ljava/lang/Object;
.source "CMailDistributeOrgEmailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 317
    return-void
.end method
