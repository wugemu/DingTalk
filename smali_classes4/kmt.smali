.class public final Lkmt;
.super Lknd;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkmt$a;
    }
.end annotation


# static fields
.field private static final a:Lkmy;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lkmy;->a(Ljava/lang/String;)Lkmy;

    move-result-object v0

    sput-object v0, Lkmt;->a:Lkmy;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "encodedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "encodedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lknd;-><init>()V

    .line 37
    invoke-static {p1}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkmt;->b:Ljava/util/List;

    .line 38
    invoke-static {p2}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkmt;->c:Ljava/util/List;

    .line 39
    return-void
.end method

.method private a(Lokio/BufferedSink;Z)J
    .locals 6
    .param p1, "sink"    # Lokio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "countBytes"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "byteCount":J
    if-eqz p2, :cond_1

    .line 85
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 90
    .local v0, "buffer":Lokio/Buffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lkmt;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 91
    if-lez v1, :cond_0

    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 92
    :cond_0
    iget-object v5, p0, Lkmt;->b:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 93
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 94
    iget-object v5, p0, Lkmt;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_1
    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    .restart local v0    # "buffer":Lokio/Buffer;
    goto :goto_0

    .line 97
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_2
    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 99
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 102
    :cond_3
    return-wide v2
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkmt;->a(Lokio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lkmy;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lkmt;->a:Lkmy;

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkmt;->a(Lokio/BufferedSink;Z)J

    .line 72
    return-void
.end method
