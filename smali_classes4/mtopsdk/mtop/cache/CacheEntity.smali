.class public Lmtopsdk/mtop/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field public apiCacheSwitchOpen:Z

.field public responseSource:Lmtopsdk/mtop/domain/ResponseSource;


# direct methods
.method public constructor <init>(ZLmtopsdk/mtop/domain/ResponseSource;)V
    .locals 0
    .param p1, "apiCacheSwitchOpen"    # Z
    .param p2, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lmtopsdk/mtop/cache/CacheEntity;->apiCacheSwitchOpen:Z

    .line 15
    iput-object p2, p0, Lmtopsdk/mtop/cache/CacheEntity;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    .line 17
    return-void
.end method
