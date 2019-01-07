.class final Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$6;
.super Ljava/lang/Object;
.source "MailDetailCaptureActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 623
    check-cast p1, Ljava/lang/String;

    .line 1626
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 639
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 635
    return-void
.end method
