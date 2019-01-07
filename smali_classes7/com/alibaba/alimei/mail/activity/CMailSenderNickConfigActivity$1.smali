.class final Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;
.super Ljava/lang/Object;
.source "CMailSenderNickConfigActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 127
    const-string/jumbo v0, "CMailSenderNickConfigActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 111
    check-cast p1, Ljava/lang/Boolean;

    .line 1115
    const-string/jumbo v0, "CMailSenderNickConfigActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDisplayName, onSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
