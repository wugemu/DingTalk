.class public final Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;
    .param p6, "lengths"    # [J

    .prologue
    .line 684
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 686
    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 687
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 688
    iput-object p6, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->lengths:[J

    .line 689
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;

    .prologue
    .line 678
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 716
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 717
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public final edit()Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 697
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$1600(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Ljava/lang/String;J)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLength(I)J
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
