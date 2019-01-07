.class final Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;
.super Ljava/lang/Object;
.source "CMailNotificationSubscribeActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrr;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;Lrr;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->a:Lrr;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 268
    const-string/jumbo v0, "CMailNotificationSubscribeActivity"

    const-string/jumbo v1, "ItemHolder.refreshUI"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "account:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 253
    check-cast p1, Ljava/lang/String;

    .line 1256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method
