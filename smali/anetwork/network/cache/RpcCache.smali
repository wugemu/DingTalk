.class public Lanetwork/network/cache/RpcCache;
.super Ljava/lang/Object;
.source "RpcCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/network/cache/RpcCache$CacheStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65f49b3e71345f7cL


# instance fields
.field public body:[B

.field public cacheCreateTime:J

.field public cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

.field public etag:Ljava/lang/String;

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public lastModified:Ljava/lang/String;

.field public maxAge:J

.field public offline:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method
