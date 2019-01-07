.class final Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 153
    const-string/jumbo v0, "CMailSenderNickConfigActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    sget v0, Laxo$i;->dt_mail_op_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->finish()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 141
    .line 1144
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/contact/api/ContactApi;->updateUserSelf(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
