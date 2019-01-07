.class final Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;
.super Ljava/lang/Object;
.source "CMailDingtalkSettingsActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 253
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 224
    .line 1227
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;)V

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V

    .line 224
    :cond_0
    return-void
.end method
