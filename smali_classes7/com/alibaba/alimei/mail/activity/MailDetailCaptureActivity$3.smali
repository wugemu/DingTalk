.class final Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "MailDetailCaptureActivity.java"


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
    .line 511
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 514
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 515
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->g(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)V

    .line 518
    :cond_0
    return-void
.end method
