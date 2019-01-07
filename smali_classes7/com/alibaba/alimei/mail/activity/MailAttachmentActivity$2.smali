.class final Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$2;
.super Ljava/lang/Object;
.source "MailAttachmentActivity.java"

# interfaces
.implements Lyb;


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
    .line 138
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 1
    .param p1, "eventMessage"    # Lyc;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Lyc;)V

    goto :goto_0
.end method
