.class public Lcom/alibaba/doraemon/impl/cache/CacheFetcher;
.super Ljava/lang/Object;
.source "CacheFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mCache:Lcom/alibaba/doraemon/impl/cache/CacheImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheFetcher;->mCache:Lcom/alibaba/doraemon/impl/cache/CacheImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheFetcher;->mCache:Lcom/alibaba/doraemon/impl/cache/CacheImpl;

    .line 21
    return-void
.end method
