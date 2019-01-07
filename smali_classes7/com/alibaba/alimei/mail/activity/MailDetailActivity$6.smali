.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k()V
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

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1150
    const-string/jumbo v0, "MailDetailActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1151
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1116
    .line 2119
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    const-string/jumbo v0, "not origin serverId, so do nothing"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->tags:Ljava/util/List;

    .line 2129
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->b:Z

    if-eqz v1, :cond_3

    .line 2130
    if-eqz v0, :cond_2

    const-string/jumbo v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2131
    const-string/jumbo v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2133
    :cond_2
    sget v0, Laxo$i;->dt_mail_unfollow_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2143
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    invoke-static {v1}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Z)V

    goto :goto_0

    .line 2135
    :cond_3
    if-nez v0, :cond_4

    .line 2136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2137
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;->c:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->tags:Ljava/util/List;

    .line 2139
    :cond_4
    const-string/jumbo v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2140
    sget v0, Laxo$i;->dt_mail_follow_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1
.end method
