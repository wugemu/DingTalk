.class public Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBytes"
.end annotation


# instance fields
.field public mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

.field public mPiexls:J

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
