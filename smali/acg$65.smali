.class final Lacg$65;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Lcma;ILandroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 4347
    iput-object p1, p0, Lacg$65;->a:Lcma;

    iput p2, p0, Lacg$65;->b:I

    iput-object p3, p0, Lacg$65;->c:Landroid/content/Context;

    iput-object p4, p0, Lacg$65;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4381
    const-string/jumbo v0, "queryMailDetail:"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 4382
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4383
    iget-object v0, p0, Lacg$65;->a:Lcma;

    if-eqz v0, :cond_0

    .line 4384
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v0

    const/16 v1, 0x3ee

    if-ne v0, v1, :cond_1

    .line 4385
    iget-object v0, p0, Lacg$65;->a:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lacg$65;->c:Landroid/content/Context;

    sget v3, Laxo$i;->dt_mail_deleted_or_recalled:I

    .line 4386
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4385
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    :cond_0
    :goto_0
    return-void

    .line 4388
    :cond_1
    iget-object v0, p0, Lacg$65;->a:Lcma;

    .line 4389
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4390
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 4388
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4394
    :cond_2
    iget-object v0, p0, Lacg$65;->a:Lcma;

    if-eqz v0, :cond_0

    .line 4395
    iget-object v0, p0, Lacg$65;->a:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 4396
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 4395
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4347
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 5350
    if-nez p1, :cond_1

    .line 5351
    const-string/jumbo v0, "MailNavigator"

    const-string/jumbo v1, "queryMailDetailWithoutCheckLogin fail for mailDetail is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    iget-object v0, p0, Lacg$65;->a:Lcma;

    if-eqz v0, :cond_0

    .line 5353
    iget-object v0, p0, Lacg$65;->a:Lcma;

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5369
    :cond_0
    :goto_0
    return-void

    .line 5357
    :cond_1
    iget-object v0, p0, Lacg$65;->a:Lcma;

    if-eqz v0, :cond_2

    .line 5358
    iget-object v0, p0, Lacg$65;->a:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 5360
    :cond_2
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 5361
    iget v0, p0, Lacg$65;->b:I

    if-ne v0, v4, :cond_3

    .line 5362
    iget-object v0, p0, Lacg$65;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v2, p0, Lacg$65;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v4, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 5364
    :cond_3
    iget v0, p0, Lacg$65;->b:I

    if-ne v0, v5, :cond_4

    .line 5365
    iget-object v0, p0, Lacg$65;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v2, p0, Lacg$65;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v5, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 5368
    :cond_4
    iget v0, p0, Lacg$65;->b:I

    if-ne v0, v6, :cond_5

    .line 5369
    iget-object v0, p0, Lacg$65;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v2, p0, Lacg$65;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v6, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 5372
    :cond_5
    iget v0, p0, Lacg$65;->b:I

    if-nez v0, :cond_0

    .line 5373
    iget-object v0, p0, Lacg$65;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v2, p0, Lacg$65;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 6137
    const-string/jumbo v0, "JustForStatisticActivity"

    const-string/jumbo v1, "mail_bubble_msg_click"

    invoke-static {v0, v1, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
