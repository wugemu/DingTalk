.class final Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$3;
.super Ljava/lang/Object;
.source "MailAttachmentActivity.java"

# interfaces
.implements Luk;


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
    .line 162
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lun;)V
    .locals 1
    .param p1, "menuObject"    # Lun;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Lun;)V

    .line 168
    :cond_0
    return-void
.end method
