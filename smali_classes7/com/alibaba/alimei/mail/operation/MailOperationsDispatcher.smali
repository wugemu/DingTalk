.class public Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;
.super Ljava/lang/Object;
.source "MailOperationsDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailOperationsDispatcher"

.field private static final sHandlerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/alimei/mail/operation/handle/OperationHandler",
            "<+",
            "Lcom/alibaba/alimei/mail/operation/OperationData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 34
    sput-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;->sHandlerArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    invoke-direct {v2}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;->sHandlerArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    invoke-direct {v2}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;->sHandlerArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static handleMailOperations(Ljava/lang/String;)V
    .locals 4
    .param p0, "msgJson"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string/jumbo v2, "MailOperationsDispatcher"

    const-string/jumbo v3, "handleMailOperations fail for msgJson is empty!!!"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher$1;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v2}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 75
    .local v1, "thread":Laie;
    const-string/jumbo v2, "MailOperationsDispatcher"

    invoke-interface {v1, v2, v0}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
