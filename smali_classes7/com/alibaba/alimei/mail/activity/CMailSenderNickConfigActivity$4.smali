.class final Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;
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
        "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
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
    .line 206
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 222
    const-string/jumbo v0, "CMailSenderNickConfigActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 206
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 1209
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    if-nez p1, :cond_1

    .line 1213
    const-string/jumbo v0, "CMailSenderNickConfigActivity"

    const-string/jumbo v1, "data == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
