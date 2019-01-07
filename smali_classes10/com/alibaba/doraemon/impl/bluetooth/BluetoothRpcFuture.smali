.class public Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;
.super Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
.source "BluetoothRpcFuture.java"


# instance fields
.field private mResultType:Ljava/lang/reflect/Type;

.field private mTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "resultType"    # Ljava/lang/reflect/Type;
    .param p2, "timeoutTask"    # Ljava/lang/Runnable;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->mResultType:Ljava/lang/reflect/Type;

    .line 16
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->mTimeoutTask:Ljava/lang/Runnable;

    .line 17
    return-void
.end method


# virtual methods
.method public getResultType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->mResultType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getTimeoutTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->mTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method
