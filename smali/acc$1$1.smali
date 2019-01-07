.class final Lacc$1$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacc$1;->run()V
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
.field final synthetic a:Lacc$1;


# direct methods
.method constructor <init>(Lacc$1;)V
    .locals 0
    .param p1, "this$0"    # Lacc$1;

    .prologue
    .line 47
    iput-object p1, p0, Lacc$1$1;->a:Lacc$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lacc$1$1;->a:Lacc$1;

    iget-object v0, v0, Lacc$1;->e:Lcma;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lacc$1$1;->a:Lacc$1;

    iget-object v0, v0, Lacc$1;->e:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 47
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    .line 1050
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    :cond_0
    iget-object v0, p0, Lacc$1$1;->a:Lacc$1;

    iget-object v0, v0, Lacc$1;->e:Lcma;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lacc$1$1;->a:Lacc$1;

    iget-object v0, v0, Lacc$1;->e:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    .line 1055
    :cond_2
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lacc$1$1$1;

    invoke-direct {v1, p0, p1}, Lacc$1$1$1;-><init>(Lacc$1$1;Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
