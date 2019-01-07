.class final Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;
.super Lgqq;
.source "CMailDingtalkSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 242
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tryLogin, ticketLogin code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method
