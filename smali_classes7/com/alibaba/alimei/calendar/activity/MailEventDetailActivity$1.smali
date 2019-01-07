.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Lsg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

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
    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    invoke-interface {v0}, Lrh$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(F)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a()V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->d(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->requestLayout()V

    goto :goto_0
.end method
