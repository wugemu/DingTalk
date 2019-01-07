.class final Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$1;
.super Landroid/os/Handler;
.source "MailAttachmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
