.class final Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher$1;
.super Ljava/lang/Object;
.source "MailOperationsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;->handleMailOperations(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msgJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher$1;->val$msgJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher$1;->val$msgJson:Ljava/lang/String;

    const-class v6, Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {v5, v6}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/mail/operation/OperationData;

    .line 53
    .local v3, "opData":Lcom/alibaba/alimei/mail/operation/OperationData;
    if-nez v3, :cond_0

    .line 54
    const-string/jumbo v5, "MailOperationsDispatcher"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "handleMailOperations fail for parse json fail, msgJson: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher$1;->val$msgJson:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v3    # "opData":Lcom/alibaba/alimei/mail/operation/OperationData;
    :goto_0
    return-void

    .line 58
    .restart local v3    # "opData":Lcom/alibaba/alimei/mail/operation/OperationData;
    :cond_0
    iget v0, v3, Lcom/alibaba/alimei/mail/operation/OperationData;->action:I

    .line 59
    .local v0, "action":I
    iget-object v1, v3, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 60
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 65
    :goto_1
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;->access$000()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/operation/handle/OperationHandler;

    .line 66
    .local v2, "handler":Lcom/alibaba/alimei/mail/operation/handle/OperationHandler;, "Lcom/alibaba/alimei/mail/operation/handle/OperationHandler<+Lcom/alibaba/alimei/mail/operation/OperationData;>;"
    invoke-interface {v2, v3}, Lcom/alibaba/alimei/mail/operation/handle/OperationHandler;->handle(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0    # "action":I
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "handler":Lcom/alibaba/alimei/mail/operation/handle/OperationHandler;, "Lcom/alibaba/alimei/mail/operation/handle/OperationHandler<+Lcom/alibaba/alimei/mail/operation/OperationData;>;"
    .end local v3    # "opData":Lcom/alibaba/alimei/mail/operation/OperationData;
    :catch_0
    move-exception v4

    .line 68
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "MailOperationsDispatcher"

    invoke-static {v5, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const-string/jumbo v5, "MailOperationsDispatcher"

    const-string/jumbo v6, "-1"

    invoke-static {v4}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "action":I
    .restart local v1    # "email":Ljava/lang/String;
    .restart local v3    # "opData":Lcom/alibaba/alimei/mail/operation/OperationData;
    :cond_1
    :try_start_1
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->l()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
