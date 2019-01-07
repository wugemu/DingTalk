.class final Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;
.super Lcmi;
.source "MailLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Labf;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->a:Z

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->c:Ljava/util/List;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;Z)Z

    .line 177
    sget v0, Laxo$i;->dt_cmail_login_get_mails_list_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->dismissLoadingDialog()V

    .line 179
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->a:Z

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->c:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    move-object v5, p1

    check-cast v5, Ljava/util/List;

    .line 1163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;Z)Z

    .line 1167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->dismissLoadingDialog()V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->d:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->a:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;->c:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 160
    :cond_0
    return-void
.end method
