.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Z)Lxv;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->a:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->r(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CMailConfigActivity getUserSelfContact info, isNeedFromServer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 304
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 235
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 1238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    if-nez p1, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1244
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->a:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->r(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1252
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->defSendMail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->defSendMail:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1259
    :cond_2
    const/4 v0, 0x0

    .line 1261
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1262
    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1263
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1264
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    or-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 1267
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1270
    :cond_4
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1271
    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    .line 1272
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1273
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    or-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_4
    move v1, v0

    .line 1276
    goto :goto_3

    :cond_5
    move v0, v1

    .line 1279
    :cond_6
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1280
    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    .line 1281
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1282
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    or-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_6
    move v1, v0

    .line 1285
    goto :goto_5

    :cond_7
    move v0, v1

    .line 1288
    :cond_8
    if-eqz v0, :cond_9

    .line 1290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1293
    :cond_9
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->a:Z

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->r(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method
