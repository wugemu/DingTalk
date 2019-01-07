.class public Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;
.super Ljava/lang/Exception;
.source "NotMagicNumberException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "packet is not start with magic number"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
