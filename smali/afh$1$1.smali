.class final Lafh$1$1;
.super Ljava/lang/Object;
.source "MailUtils.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lafh$1;


# direct methods
.method constructor <init>(Lafh$1;)V
    .locals 0
    .param p1, "this$0"    # Lafh$1;

    .prologue
    .line 827
    iput-object p1, p0, Lafh$1$1;->a:Lafh$1;

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
    .line 837
    iget-object v0, p0, Lafh$1$1;->a:Lafh$1;

    iget-object v0, v0, Lafh$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lafh$1$1;->a:Lafh$1;

    iget-object v0, v0, Lafh$1;->a:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 827
    .line 1830
    iget-object v0, p0, Lafh$1$1;->a:Lafh$1;

    iget-object v0, v0, Lafh$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lafh$1$1;->a:Lafh$1;

    iget-object v0, v0, Lafh$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 827
    :cond_0
    return-void
.end method
