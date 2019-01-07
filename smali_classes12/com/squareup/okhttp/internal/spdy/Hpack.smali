.class final Lcom/squareup/okhttp/internal/spdy/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;,
        Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;
    }
.end annotation


# static fields
.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
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

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string/jumbo v4, "GET"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string/jumbo v4, "POST"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lokio/ByteString;

    const-string/jumbo v4, "/"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lokio/ByteString;

    const-string/jumbo v4, "/index.html"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string/jumbo v4, "http"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string/jumbo v4, "https"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "200"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "204"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "206"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "304"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "400"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "404"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "500"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "accept-charset"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "accept-encoding"

    const-string/jumbo v4, "gzip, deflate"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "accept-language"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "accept-ranges"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "accept"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "access-control-allow-origin"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "age"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "allow"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "authorization"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "cache-control"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-disposition"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-language"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-length"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-location"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "content-type"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "cookie"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "date"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "etag"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "expect"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "expires"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "from"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "host"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "if-match"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "if-modified-since"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "if-none-match"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "if-range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "if-unmodified-since"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "last-modified"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "link"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "location"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "max-forwards"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "proxy-authenticate"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "proxy-authorization"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "referer"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "refresh"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "retry-after"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "server"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "set-cookie"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "strict-transport-security"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "transfer-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "user-agent"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "vary"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "via"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string/jumbo v3, "www-authenticate"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 357
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()[Lcom/squareup/okhttp/internal/spdy/Header;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    return-object v0
.end method

.method static synthetic access$100(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p0, "x0"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-object v0
.end method

.method private static checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 6
    .param p0, "name"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 428
    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    .line 429
    .local v0, "c":B
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 430
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

    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "c":B
    :cond_1
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 361
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lokio/ByteString;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 362
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
