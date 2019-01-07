.class public Lcom/alibaba/alimei/sdk/push/handler/MailSendStatusHandler;
.super Ljava/lang/Object;
.source "MailSendStatusHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/push/handler/PushHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/sdk/push/handler/PushHandler",
        "<",
        "Lcom/alibaba/alimei/sdk/push/data/SendStatusData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/PushData;)V
    .locals 0

    .prologue
    .line 14
    check-cast p3, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/push/handler/MailSendStatusHandler;->handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/SendStatusData;)V

    return-void
.end method

.method public handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/SendStatusData;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "pushData"    # Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    .prologue
    .line 19
    if-nez p3, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-static {p2}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->buildPushMailSendStatusCommand(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;

    move-result-object v0

    .line 23
    .local v0, "commnad":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    goto :goto_0
.end method
