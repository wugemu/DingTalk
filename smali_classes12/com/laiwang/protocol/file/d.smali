.class public abstract Lcom/laiwang/protocol/file/d;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/laiwang/protocol/file/c;

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/laiwang/protocol/file/download/FileItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/laiwang/protocol/file/c;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/laiwang/protocol/file/c;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/file/d;->c:Ljava/util/Set;

    .line 27
    iput-object p1, p0, Lcom/laiwang/protocol/file/d;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/laiwang/protocol/file/d;->b:Lcom/laiwang/protocol/file/c;

    .line 29
    return-void
.end method

.method static a(Lcom/laiwang/protocol/file/f;)Lcom/laiwang/protocol/file/download/FileSegment;
    .locals 4
    .param p0, "response"    # Lcom/laiwang/protocol/file/f;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-direct {v0}, Lcom/laiwang/protocol/file/download/FileSegment;-><init>()V

    .line 57
    .local v0, "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    iget-object v1, p0, Lcom/laiwang/protocol/file/f;->a:Ljava/lang/Long;

    invoke-static {v1}, Lcom/laiwang/protocol/file/h;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/file/download/FileSegment;->setStart(J)V

    .line 58
    iget-object v1, p0, Lcom/laiwang/protocol/file/f;->b:Ljava/lang/Long;

    invoke-static {v1}, Lcom/laiwang/protocol/file/h;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/file/download/FileSegment;->setEnd(J)V

    .line 59
    iget-object v1, p0, Lcom/laiwang/protocol/file/f;->c:[B

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/file/download/FileSegment;->setData([B)V

    .line 60
    iget-object v1, p0, Lcom/laiwang/protocol/file/f;->d:Ljava/lang/Long;

    invoke-static {v1}, Lcom/laiwang/protocol/file/h;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/file/download/FileSegment;->setTotalLength(J)V

    .line 61
    iget-object v1, p0, Lcom/laiwang/protocol/file/f;->e:Ljava/lang/Long;

    invoke-static {v1}, Lcom/laiwang/protocol/file/h;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/file/download/FileSegment;->setRangeLength(J)V

    .line 62
    iget-object v1, p0, Lcom/laiwang/protocol/file/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/file/download/FileSegment;->setUpdateAuthCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Lcom/laiwang/protocol/file/download/FileItem;)Lcom/laiwang/protocol/file/g;
    .locals 4
    .param p0, "item"    # Lcom/laiwang/protocol/file/download/FileItem;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/file/g;

    invoke-direct {v0}, Lcom/laiwang/protocol/file/g;-><init>()V

    .line 45
    .local v0, "request":Lcom/laiwang/protocol/file/g;
    invoke-virtual {p0}, Lcom/laiwang/protocol/file/download/FileItem;->getUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/file/g;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/laiwang/protocol/file/download/FileItem;->getStart()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/file/g;->b:Ljava/lang/Long;

    .line 47
    invoke-virtual {p0}, Lcom/laiwang/protocol/file/download/FileItem;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/file/g;->c:Ljava/lang/Long;

    .line 48
    invoke-virtual {p0}, Lcom/laiwang/protocol/file/download/FileItem;->getAuthInfo()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/file/g;->e:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/laiwang/protocol/file/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public abstract a(Lcom/laiwang/protocol/file/download/FileItem;)V
.end method
