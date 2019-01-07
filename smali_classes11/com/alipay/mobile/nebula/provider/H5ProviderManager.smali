.class public abstract Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.super Ljava/lang/Object;
.source "H5ProviderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getProvider(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract removeProvider(Ljava/lang/String;)Z
.end method

.method public abstract setProvider(Ljava/lang/String;Ljava/lang/Object;)V
.end method
