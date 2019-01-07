.class final Lqt$1;
.super Luv;
.source "MailDeleteImapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqt;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic b:Lqt;


# direct methods
.method constructor <init>(Lqt;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lqt;

    .prologue
    .line 78
    iput-object p1, p0, Lqt$1;->b:Lqt;

    iput-object p2, p0, Lqt$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final deletMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
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
    .line 114
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3}, Luv;->deletMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lqt$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public final deleteMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 106
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Luv;->deleteMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lqt$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MailDeleteImapTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", folder:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", exception:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public final deleteMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3}, Luv;->deleteMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public final moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super/range {p0 .. p5}, Luv;->moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lqt$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MailDeleteImapTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", srcFolder:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", destFolder:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 91
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
    .line 95
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Luv;->moveMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lqt$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 97
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
    .line 82
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Luv;->moveMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 83
    return-void
.end method
