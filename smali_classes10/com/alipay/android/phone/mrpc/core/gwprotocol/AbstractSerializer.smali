.class public abstract Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;
.super Ljava/lang/Object;
.source "AbstractSerializer.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;


# instance fields
.field protected mOperationType:Ljava/lang/String;

.field protected mParams:Ljava/lang/Object;

.field protected mScene:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;->mOperationType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;->mParams:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public getScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;->mScene:Ljava/lang/String;

    return-object v0
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "mScene"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;->mScene:Ljava/lang/String;

    .line 38
    return-void
.end method
