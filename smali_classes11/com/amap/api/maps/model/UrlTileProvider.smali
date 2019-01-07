.class public abstract Lcom/amap/api/maps/model/UrlTileProvider;
.super Ljava/lang/Object;
.source "UrlTileProvider.java"

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/amap/api/maps/model/UrlTileProvider;->a:I

    .line 31
    iput p2, p0, Lcom/amap/api/maps/model/UrlTileProvider;->b:I

    .line 32
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 82
    const-wide/16 v0, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 84
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 86
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_0

    .line 88
    :cond_0
    return-wide v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    invoke-static {p0, v0}, Lcom/amap/api/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    sget-object v0, Lcom/amap/api/maps/model/UrlTileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    .line 68
    :goto_0
    return-object v0

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Tile;

    iget v2, p0, Lcom/amap/api/maps/model/UrlTileProvider;->a:I

    iget v3, p0, Lcom/amap/api/maps/model/UrlTileProvider;->b:I

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/amap/api/maps/model/Tile;-><init>(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    sget-object v0, Lcom/amap/api/maps/model/UrlTileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    goto :goto_0
.end method

.method public getTileHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/amap/api/maps/model/UrlTileProvider;->b:I

    return v0
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method

.method public getTileWidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/amap/api/maps/model/UrlTileProvider;->a:I

    return v0
.end method
