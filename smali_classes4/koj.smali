.class final Lkoj;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkoj$b;,
        Lkoj$a;
    }
.end annotation


# static fields
.field static final a:[Lkoi;

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x3d

    .line 47
    new-array v1, v6, [Lkoi;

    new-instance v2, Lkoi;

    sget-object v3, Lkoi;->f:Lokio/ByteString;

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->c:Lokio/ByteString;

    const-string/jumbo v5, "GET"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->c:Lokio/ByteString;

    const-string/jumbo v5, "POST"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->d:Lokio/ByteString;

    const-string/jumbo v5, "/"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->d:Lokio/ByteString;

    const-string/jumbo v5, "/index.html"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->e:Lokio/ByteString;

    const-string/jumbo v5, "http"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->e:Lokio/ByteString;

    const-string/jumbo v5, "https"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "200"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "204"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "206"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "304"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "400"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "404"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lkoi;

    sget-object v4, Lkoi;->b:Lokio/ByteString;

    const-string/jumbo v5, "500"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lkoi;

    const-string/jumbo v4, "accept-charset"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lkoi;

    const-string/jumbo v4, "accept-encoding"

    const-string/jumbo v5, "gzip, deflate"

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lkoi;

    const-string/jumbo v4, "accept-language"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lkoi;

    const-string/jumbo v4, "accept-ranges"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lkoi;

    const-string/jumbo v4, "accept"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lkoi;

    const-string/jumbo v4, "access-control-allow-origin"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lkoi;

    const-string/jumbo v4, "age"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lkoi;

    const-string/jumbo v4, "allow"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lkoi;

    const-string/jumbo v4, "authorization"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lkoi;

    const-string/jumbo v4, "cache-control"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-disposition"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-encoding"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-language"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-length"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-location"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-range"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lkoi;

    const-string/jumbo v4, "content-type"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lkoi;

    const-string/jumbo v4, "cookie"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lkoi;

    const-string/jumbo v4, "date"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lkoi;

    const-string/jumbo v4, "etag"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lkoi;

    const-string/jumbo v4, "expect"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lkoi;

    const-string/jumbo v4, "expires"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lkoi;

    const-string/jumbo v4, "from"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lkoi;

    const-string/jumbo v4, "host"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lkoi;

    const-string/jumbo v4, "if-match"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lkoi;

    const-string/jumbo v4, "if-modified-since"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lkoi;

    const-string/jumbo v4, "if-none-match"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lkoi;

    const-string/jumbo v4, "if-range"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lkoi;

    const-string/jumbo v4, "if-unmodified-since"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lkoi;

    const-string/jumbo v4, "last-modified"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lkoi;

    const-string/jumbo v4, "link"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Lkoi;

    const-string/jumbo v4, "location"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Lkoi;

    const-string/jumbo v4, "max-forwards"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Lkoi;

    const-string/jumbo v4, "proxy-authenticate"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Lkoi;

    const-string/jumbo v4, "proxy-authorization"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Lkoi;

    const-string/jumbo v4, "range"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Lkoi;

    const-string/jumbo v4, "referer"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Lkoi;

    const-string/jumbo v4, "refresh"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Lkoi;

    const-string/jumbo v4, "retry-after"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-instance v3, Lkoi;

    const-string/jumbo v4, "server"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-instance v3, Lkoi;

    const-string/jumbo v4, "set-cookie"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-instance v3, Lkoi;

    const-string/jumbo v4, "strict-transport-security"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-instance v3, Lkoi;

    const-string/jumbo v4, "transfer-encoding"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-instance v3, Lkoi;

    const-string/jumbo v4, "user-agent"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-instance v3, Lkoi;

    const-string/jumbo v4, "vary"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-instance v3, Lkoi;

    const-string/jumbo v4, "via"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-instance v3, Lkoi;

    const-string/jumbo v4, "www-authenticate"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lkoi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    sput-object v1, Lkoj;->a:[Lkoi;

    .line 1357
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1358
    :goto_0
    if-ge v0, v6, :cond_1

    .line 1359
    sget-object v2, Lkoj;->a:[Lkoi;

    aget-object v2, v2, v0

    iget-object v2, v2, Lkoi;->g:Lokio/ByteString;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    sget-object v2, Lkoj;->a:[Lkoi;

    aget-object v2, v2, v0

    iget-object v2, v2, Lkoi;->g:Lokio/ByteString;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 354
    sput-object v0, Lkoj;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static a(Lokio/ByteString;)Lokio/ByteString;
    .locals 6
    .param p0, "name"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 597
    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    .line 598
    .local v0, "c":B
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 599
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 596
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "c":B
    :cond_1
    return-object p0
.end method
