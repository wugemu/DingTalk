.class final Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;
.super Lrq;
.source "CMailNotificationSubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    .line 247
    invoke-direct {p0, p2, p3}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 248
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 244
    check-cast p2, Ljava/lang/String;

    .line 1252
    sget v0, Laxo$f;->account_name:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1252
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;Lrr;Ljava/lang/String;)V

    .line 3071
    if-nez v0, :cond_0

    .line 3084
    :goto_0
    return-void

    .line 3074
    :cond_0
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v2

    invoke-interface {v2, p2}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4062
    invoke-static {p2}, Lajj;->a(Ljava/lang/String;)Z

    move-result v2

    .line 3076
    if-eqz v2, :cond_1

    .line 3077
    sget v2, Laxo$i;->dt_mail_notification_open_description:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3079
    :cond_1
    sget v2, Laxo$i;->dt_mail_notification_close_description:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5062
    :cond_2
    invoke-static {p2}, Lajj;->a(Ljava/lang/String;)Z

    move-result v2

    .line 3083
    if-eqz v2, :cond_3

    .line 3084
    invoke-static {p2}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v2

    new-instance v3, Lajj$1;

    invoke-direct {v3, v1, v0}, Lajj$1;-><init>(Lxv;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryAllPushFolders(Lxv;)V

    goto :goto_0

    .line 3115
    :cond_3
    sget v2, Laxo$i;->dt_mail_notification_close_description:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
