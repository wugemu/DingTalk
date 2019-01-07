.class final Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;
.super Ljava/lang/Object;
.source "MailAttachmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
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
    .line 579
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 582
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v2}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v2

    .line 1238
    invoke-static {v2}, Lafv;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/io/File;

    move-result-object v0

    .line 586
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lug;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "tempUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
