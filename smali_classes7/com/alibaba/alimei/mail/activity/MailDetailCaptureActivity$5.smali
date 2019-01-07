.class final Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$5;
.super Ljava/lang/Object;
.source "MailDetailCaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->h(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)V

    .line 546
    return-void
.end method
