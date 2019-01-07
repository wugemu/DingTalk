.class final Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1$1;
.super Ljava/lang/Object;
.source "MailDetailCaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->b(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)V

    .line 312
    return-void
.end method
