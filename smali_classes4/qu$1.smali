.class final Lqu$1;
.super Luv;
.source "MailMoveImapFolderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqu;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic b:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

.field final synthetic c:Lqu;


# direct methods
.method constructor <init>(Lqu;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V
    .locals 0
    .param p1, "this$0"    # Lqu;

    .prologue
    .line 87
    iput-object p1, p0, Lqu$1;->c:Lqu;

    iput-object p2, p0, Lqu$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iput-object p3, p0, Lqu$1;->b:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .param p5, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super/range {p0 .. p5}, Luv;->moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lqu$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MailMoveImapFolderTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "srcFolder:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", destFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public final moveMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Luv;->moveMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lqu$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v1, p0, Lqu$1;->b:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public final moveMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Luv;->moveMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 92
    return-void
.end method
