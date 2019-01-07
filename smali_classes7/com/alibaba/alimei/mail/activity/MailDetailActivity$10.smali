.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$10;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;ZZ)V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    :goto_0
    return-void

    .line 1627
    :cond_0
    sget v0, Laxo$i;->dd_cmail_token_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1613
    .line 2616
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2619
    sget v0, Laxo$i;->dd_cmail_token_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1613
    :cond_0
    return-void
.end method
