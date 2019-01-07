.class Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;
.super Ljava/lang/Object;
.source "CommonEmailApiImpl.java"

# interfaces
.implements Luu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUnsyncedMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/List;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

.field final synthetic val$account:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$listener:Luv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;Luv;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->this$0:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$listener:Luv;

    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p4, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$folder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    .prologue
    .line 1110
    return-void
.end method

.method public messageProgress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 1147
    return-void
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$listener:Luv;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$listener:Luv;

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$folder:Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v1, v2, v3, p3}, Luv;->synchronizeMailboxHeadersProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V

    .line 1142
    :cond_0
    return-void
.end method

.method public messagesFinished(Ljava/util/List;II)V
    .locals 8
    .param p2, "number"    # I
    .param p3, "ofTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1115
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    if-eqz p1, :cond_1

    .line 1116
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .local v2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1118
    .local v1, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1119
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    .end local v1    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v2    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "buildSyncMailResult"

    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v3, "CommonEmailApiImpl"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "CommonEmailApiImpl"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "fetchUnsyncedMessages err folder "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$folder:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1130
    invoke-static {v0}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1129
    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 1123
    .restart local v2    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$listener:Luv;

    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$account:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;->val$folder:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Luv;->synchronizeMailboxHeadersProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
