.class final Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;
.super Ljava/lang/Object;
.source "CMailDingtalkSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;
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
        "Labx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 211
    check-cast p1, Labx;

    .line 1214
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1217
    if-eqz p1, :cond_0

    iget-object v0, p1, Labx;->a:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 1218
    :cond_0
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    const-string/jumbo v1, "getLoginModel is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    .line 1224
    :cond_2
    :goto_0
    return-void

    .line 1222
    :cond_3
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lacr;->a(Labx;)V

    .line 1223
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1224
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 271
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getLoginModel fail"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 267
    return-void
.end method
