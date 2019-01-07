.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 981
    :cond_0
    sget v0, Laxo$i;->dd_cmail_token_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 959
    .line 1961
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1965
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->a:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isRead:Z

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1970
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b()V

    .line 1973
    :cond_1
    sget v0, Laxo$i;->dd_cmail_token_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 959
    :cond_2
    return-void
.end method
