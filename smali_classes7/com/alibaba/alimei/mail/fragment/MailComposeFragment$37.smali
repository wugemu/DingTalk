.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 4262
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->e:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->d:Ljava/util/List;

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
    .line 4300
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->e:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4301
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4262
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 5265
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->e:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5270
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->e:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5271
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5272
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5273
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5274
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v3, Lcng;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-direct {v3, v4, v6, v0}, Lcng;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    goto :goto_0

    .line 5279
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5280
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    .line 5281
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5282
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v3, Lcng;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcng;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 5283
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5286
    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 5287
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    .line 5288
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5289
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v3, Lcng;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcng;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 5290
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5294
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->e:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4262
    :cond_6
    return-void
.end method
