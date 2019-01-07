.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$3;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$3;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$3;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 370
    check-cast p1, Ljava/lang/String;

    .line 1373
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 1374
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1379
    const-string/jumbo v1, "QQWebLoginActivity"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get qq auth code "

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->d(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1383
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1384
    const-string/jumbo v2, "mail_qq_mail_auth_code"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1385
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 1387
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->finish()V

    goto :goto_0
.end method
