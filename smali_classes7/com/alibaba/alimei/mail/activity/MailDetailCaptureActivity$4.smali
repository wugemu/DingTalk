.class Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$4;
.super Landroid/webkit/WebViewClient;
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
    .line 520
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->g(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)V

    .line 528
    return-void
.end method
