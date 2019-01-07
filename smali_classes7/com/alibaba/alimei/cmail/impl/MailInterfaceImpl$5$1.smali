.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1722
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->e:Lcma;

    if-eqz v2, :cond_0

    .line 1723
    if-nez p1, :cond_1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 1725
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "[API]nav2ChooseParticipant:queryMailDetail"

    invoke-static {v2, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->e:Lcma;

    invoke-interface {v2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 1723
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1724
    .restart local v0    # "code":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1714
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2717
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    iget-object v1, v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->e:Lcma;

    invoke-static {v0, p1, v1, v2}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Landroid/os/Bundle;Lcma;)V

    .line 1714
    return-void
.end method
