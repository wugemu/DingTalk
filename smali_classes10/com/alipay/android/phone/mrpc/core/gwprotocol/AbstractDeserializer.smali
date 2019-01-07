.class public abstract Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;
.super Ljava/lang/Object;
.source "AbstractDeserializer.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;


# instance fields
.field protected mData:[B

.field protected mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;->mType:Ljava/lang/reflect/Type;

    .line 24
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;->mData:[B

    .line 25
    return-void
.end method
