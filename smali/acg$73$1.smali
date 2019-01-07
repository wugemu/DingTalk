.class final Lacg$73$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg$73;->run()V
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
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacg$73;


# direct methods
.method constructor <init>(Lacg$73;)V
    .locals 0
    .param p1, "this$0"    # Lacg$73;

    .prologue
    .line 715
    iput-object p1, p0, Lacg$73$1;->a:Lacg$73;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 724
    const-string/jumbo v1, "alimailLoginV2,loginAllowReplace"

    invoke-static {v1, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 726
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    iget-object v1, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v1, v1, Lacg$73;->c:Lcma;

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v1

    const/16 v2, 0x45f

    if-ne v1, v2, :cond_1

    .line 731
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getExceptionData()Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getExceptionData()Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v1, v1, Lacg$73;->c:Lcma;

    const-string/jumbo v2, "1119"

    .line 735
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getExceptionData()Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;->getSessionId()Ljava/lang/String;

    move-result-object v3

    .line 733
    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v1, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v1, v1, Lacg$73;->c:Lcma;

    .line 738
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-static {v3, v4}, Laez;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v1, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v1, v1, Lacg$73;->c:Lcma;

    if-eqz v1, :cond_3

    .line 746
    iget-object v1, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v1, v1, Lacg$73;->c:Lcma;

    .line 747
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    .line 748
    invoke-static {v3, v4}, Laez;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v1, v2, :cond_0

    .line 753
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 755
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "ALMLogin"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 715
    .line 1718
    const/4 v0, 0x1

    iget-object v2, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v2, v2, Lacg$73;->a:Ljava/lang/String;

    iget-object v3, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v3, v3, Lacg$73;->b:Ljava/lang/String;

    iget-object v4, p0, Lacg$73$1;->a:Lacg$73;

    iget-object v5, v4, Lacg$73;->c:Lcma;

    move-object v4, v1

    invoke-static/range {v0 .. v5}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 715
    return-void
.end method
