.class public Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;
.super Ljava/lang/Object;
.source "CacheEntityImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/cache/CacheEntity;


# instance fields
.field private mDataInputStream:Ljava/io/InputStream;

.field private mDescription:[B

.field private mIntegrity:Z

.field private mLength:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BJZ)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "description"    # [B
    .param p3, "length"    # J
    .param p5, "isIntegrity"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mDataInputStream:Ljava/io/InputStream;

    .line 42
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mDescription:[B

    .line 43
    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mLength:J

    .line 44
    iput-boolean p5, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mIntegrity:Z

    .line 45
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "description"    # [B

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mDataInputStream:Ljava/io/InputStream;

    .line 34
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mDescription:[B

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mIntegrity:Z

    .line 36
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mLength:J

    .line 38
    return-void
.end method


# virtual methods
.method public getCacheData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mDataInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCacheDescription()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mDescription:[B

    return-object v0
.end method

.method public isIntegrity()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mIntegrity:Z

    return v0
.end method

.method public length()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;->mLength:J

    return-wide v0
.end method
