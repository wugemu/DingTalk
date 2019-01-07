.class final Laex$1;
.super Ljava/lang/Object;
.source "MailBizHelper.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laex;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;ZLcma;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Laex$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 110
    if-nez p1, :cond_1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "forwardMailByAddress send"

    invoke-static {v2, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Laex$1;->a:Lcma;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Laex$1;->a:Lcma;

    invoke-interface {v2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void

    .line 110
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    .restart local v0    # "code":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 99
    .line 1102
    const-string/jumbo v0, "forwardMailByAddress:"

    const-string/jumbo v1, "success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Laex$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Laex$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method
