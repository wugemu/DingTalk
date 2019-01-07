.class Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MailEventDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$CustomWebViewClient;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$CustomWebViewClient;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 779
    iget-object v6, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$CustomWebViewClient;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v4

    .line 783
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 786
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 787
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 790
    goto :goto_0

    .line 793
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 794
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    .line 796
    .local v1, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$CustomWebViewClient;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    move v4, v5

    .line 797
    goto :goto_0
.end method
