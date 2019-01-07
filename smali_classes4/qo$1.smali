.class final Lqo$1;
.super Luv;
.source "ChangeImapReadStatusTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqo;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic b:Lqo;


# direct methods
.method constructor <init>(Lqo;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lqo;

    .prologue
    .line 93
    iput-object p1, p0, Lqo$1;->b:Lqo;

    iput-object p2, p0, Lqo$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeReadStatusFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z
    .param p6, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-super/range {p0 .. p6}, Luv;->changeReadStatusFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/String;)V

    .line 102
    iget-object v0, p0, Lqo$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ChangeImapReadStatusTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "folder:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isRead:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public final changeReadStatusFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z

    .prologue
    .line 109
    invoke-super/range {p0 .. p5}, Luv;->changeReadStatusFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V

    .line 110
    iget-object v0, p0, Lqo$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public final changeReadStatusStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z

    .prologue
    .line 96
    invoke-super/range {p0 .. p5}, Luv;->changeReadStatusStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V

    .line 97
    return-void
.end method
