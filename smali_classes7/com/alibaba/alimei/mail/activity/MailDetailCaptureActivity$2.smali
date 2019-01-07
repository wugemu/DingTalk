.class final Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;
.super Ljava/lang/Object;
.source "MailDetailCaptureActivity.java"

# interfaces
.implements Lsg;


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
    .line 389
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 393
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->d(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(F)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a()V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->f(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->requestLayout()V

    goto :goto_0
.end method
