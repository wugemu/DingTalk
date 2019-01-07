.class final Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;
.super Ljava/lang/Object;
.source "CMailCommunicateActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;
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
        "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 380
    const-string/jumbo v0, "CMailCommunicateActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;Ljava/util/List;IZ)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v7, 0x14

    const/4 v2, 0x4

    const/4 v6, 0x1

    .line 342
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    .line 1346
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->total:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7, v6}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;Ljava/util/List;IZ)V

    .line 1359
    :cond_2
    :goto_0
    return-void

    .line 1361
    :cond_3
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    .line 1363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;

    .line 1366
    if-eqz v0, :cond_4

    .line 1369
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)Lacv;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lacv;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1372
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1374
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-static {v0, v2, v7, v6}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;Ljava/util/List;IZ)V

    .line 1375
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;I)I

    goto :goto_0
.end method
