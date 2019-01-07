.class final Lacg$27;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcma;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2510
    iput-object p1, p0, Lacg$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p2, p0, Lacg$27;->b:Lcma;

    iput-object p3, p0, Lacg$27;->c:Landroid/content/Context;

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
    .line 2533
    const-string/jumbo v0, "queryMailDetail:"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 2534
    iget-object v0, p0, Lacg$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2535
    iget-object v0, p0, Lacg$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2537
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2538
    iget-object v0, p0, Lacg$27;->b:Lcma;

    if-eqz v0, :cond_1

    .line 2539
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v0

    const/16 v1, 0x3ee

    if-ne v0, v1, :cond_2

    .line 2540
    iget-object v0, p0, Lacg$27;->b:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lacg$27;->c:Landroid/content/Context;

    sget v3, Laxo$i;->dt_mail_deleted_or_recalled:I

    .line 2541
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2540
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    :cond_1
    :goto_0
    return-void

    .line 2543
    :cond_2
    iget-object v0, p0, Lacg$27;->b:Lcma;

    .line 2544
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2545
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 2543
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2549
    :cond_3
    iget-object v0, p0, Lacg$27;->b:Lcma;

    if-eqz v0, :cond_1

    .line 2550
    iget-object v0, p0, Lacg$27;->b:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 2551
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 2550
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2510
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 3513
    iget-object v0, p0, Lacg$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lacg$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 3517
    :cond_0
    if-nez p1, :cond_2

    .line 3518
    iget-object v0, p0, Lacg$27;->b:Lcma;

    if-eqz v0, :cond_1

    .line 3519
    iget-object v0, p0, Lacg$27;->b:Lcma;

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 3523
    :cond_2
    iget-object v0, p0, Lacg$27;->b:Lcma;

    if-eqz v0, :cond_3

    .line 3524
    iget-object v0, p0, Lacg$27;->b:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3526
    :cond_3
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 3527
    iget-object v0, p0, Lacg$27;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v2, p0, Lacg$27;->b:Lcma;

    invoke-static {v0, v1, v3, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0
.end method
