.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$7;
.super Ljava/lang/Object;
.source "MailComposeSetttingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->o(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    .line 370
    return-void
.end method
