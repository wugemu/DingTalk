.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 2171
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 2183
    const-string/jumbo v0, "MailDetailActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 2184
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2188
    :goto_0
    return-void

    .line 2187
    :cond_0
    sget v0, Laxo$i;->dt_cmail_revoke_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2171
    check-cast p1, Ljava/lang/Boolean;

    .line 3174
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3177
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .line 4022
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 3177
    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)Z

    .line 3178
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 2171
    :cond_0
    return-void
.end method
