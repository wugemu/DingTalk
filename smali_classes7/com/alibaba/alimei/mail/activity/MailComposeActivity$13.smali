.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$13;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;I)V

    .line 682
    return-void
.end method
