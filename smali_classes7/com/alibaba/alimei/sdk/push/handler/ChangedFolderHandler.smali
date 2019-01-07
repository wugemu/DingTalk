.class public Lcom/alibaba/alimei/sdk/push/handler/ChangedFolderHandler;
.super Ljava/lang/Object;
.source "ChangedFolderHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/push/handler/PushHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/sdk/push/handler/PushHandler",
        "<",
        "Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "pushData"    # Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    if-nez p3, :cond_0

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->buildPushCommand(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;)Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;

    move-result-object v0

    .line 28
    .local v0, "commnad":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v1, "ChangedFolderHandler ignore ChangedFolderHandler data, command is null"

    invoke-static {v1}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/PushData;)V
    .locals 0

    .prologue
    .line 19
    check-cast p3, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/push/handler/ChangedFolderHandler;->handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;)V

    return-void
.end method
