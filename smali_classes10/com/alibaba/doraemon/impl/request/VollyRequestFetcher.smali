.class public Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;
.super Ljava/lang/Object;
.source "VollyRequestFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher$Request;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher$Request;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher$Request;-><init>(Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->init(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getCommonByteArrayPool(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;)Lcom/alibaba/doraemon/image/memory/ByteArrayPool;

    .line 20
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    .line 21
    return-void
.end method
