.class public Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;
.super Ljava/lang/Object;
.source "UrlBeaconUrlCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;
    }
.end annotation


# static fields
.field private static final EDDYSTONE_URL_BIZ:B = 0xct

.field private static final EDDYSTONE_URL_BIZ_SLASH:B = 0x5t

.field private static final EDDYSTONE_URL_COM:B = 0x7t

.field private static final EDDYSTONE_URL_COM_SLASH:B = 0x0t

.field private static final EDDYSTONE_URL_EDU:B = 0x9t

.field private static final EDDYSTONE_URL_EDU_SLASH:B = 0x2t

.field private static final EDDYSTONE_URL_FQDN_GROUP:I = 0x3

.field private static final EDDYSTONE_URL_GOV:B = 0xdt

.field private static final EDDYSTONE_URL_GOV_SLASH:B = 0x6t

.field private static final EDDYSTONE_URL_INFO:B = 0xbt

.field private static final EDDYSTONE_URL_INFO_SLASH:B = 0x4t

.field private static final EDDYSTONE_URL_NET:B = 0xat

.field private static final EDDYSTONE_URL_NET_SLASH:B = 0x3t

.field private static final EDDYSTONE_URL_ORG:B = 0x8t

.field private static final EDDYSTONE_URL_ORG_SLASH:B = 0x1t

.field private static final EDDYSTONE_URL_PATH_GROUP:I = 0x5

.field private static final EDDYSTONE_URL_PROTOCOL_GROUP:I = 0x1

.field private static final EDDYSTONE_URL_PROTOCOL_HTTP:B = 0x2t

.field private static final EDDYSTONE_URL_PROTOCOL_HTTPS:B = 0x3t

.field private static final EDDYSTONE_URL_PROTOCOL_HTTPS_WWW:B = 0x1t

.field private static final EDDYSTONE_URL_PROTOCOL_HTTP_WWW:B = 0x0t

.field private static final EDDYSTONE_URL_REGEX:Ljava/lang/String; = "^((?i)http|https):\\/\\/((?i)www\\.)?((?:[0-9a-zA-Z_-]+\\.?)+)(/?)([./0-9a-zA-Z_-]*)"

.field private static final EDDYSTONE_URL_SLASH_GROUP:I = 0x4

.field private static final EDDYSTONE_URL_WWW_GROUP:I = 0x2

.field private static final TLD_NOT_ENCODABLE:B = -0x1t

.field private static final URL_HOST_WWW:Ljava/lang/String; = "www."

.field private static final URL_PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field private static final URL_PROTOCOL_HTTPS_COLON_SLASH_SLASH:Ljava/lang/String; = "https://"

.field private static final URL_PROTOCOL_HTTPS_WWW_DOT:Ljava/lang/String; = "https://www."

.field private static final URL_PROTOCOL_HTTP_COLON_SLASH_SLASH:Ljava/lang/String; = "http://"

.field private static final URL_PROTOCOL_HTTP_WWW_DOT:Ljava/lang/String; = "http://www."

.field private static final URL_TLD_DOT_BIZ:Ljava/lang/String; = ".biz"

.field private static final URL_TLD_DOT_BIZ_SLASH:Ljava/lang/String; = ".biz/"

.field private static final URL_TLD_DOT_COM:Ljava/lang/String; = ".com"

.field private static final URL_TLD_DOT_COM_SLASH:Ljava/lang/String; = ".com/"

.field private static final URL_TLD_DOT_EDU:Ljava/lang/String; = ".edu"

.field private static final URL_TLD_DOT_EDU_SLASH:Ljava/lang/String; = ".edu/"

.field private static final URL_TLD_DOT_GOV:Ljava/lang/String; = ".gov"

.field private static final URL_TLD_DOT_GOV_SLASH:Ljava/lang/String; = ".gov/"

.field private static final URL_TLD_DOT_INFO:Ljava/lang/String; = ".info"

.field private static final URL_TLD_DOT_INFO_SLASH:Ljava/lang/String; = ".info/"

.field private static final URL_TLD_DOT_NET:Ljava/lang/String; = ".net"

.field private static final URL_TLD_DOT_NET_SLASH:Ljava/lang/String; = ".net/"

.field private static final URL_TLD_DOT_ORG:Ljava/lang/String; = ".org"

.field private static final URL_TLD_DOT_ORG_SLASH:Ljava/lang/String; = ".org/"

.field private static tldMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    sput-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".com/"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".org/"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".edu/"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".net/"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".info/"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".biz/"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".gov/"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".com"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".org"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".edu"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".net"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".info"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".biz"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string/jumbo v2, ".gov"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 35
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p0, :cond_d

    .line 171
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    new-array v3, v0, [B

    .line 172
    .local v3, "byteBuffer":[B
    const/4 v4, 0x0

    .line 173
    .local v4, "byteBufferIndex":I
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 175
    const-string/jumbo v32, "^((?i)http|https):\\/\\/((?i)www\\.)?((?:[0-9a-zA-Z_-]+\\.?)+)(/?)([./0-9a-zA-Z_-]*)"

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v29

    .line 176
    .local v29, "urlPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 177
    .local v28, "urlMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->matches()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 179
    const/16 v32, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v31

    .line 180
    .local v31, "wwwdot":Ljava/lang/String;
    if-eqz v31, :cond_0

    const/4 v14, 0x1

    .line 183
    .local v14, "haswww":Z
    :goto_0
    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 184
    .local v22, "rawProtocol":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 185
    .local v20, "protocol":Ljava/lang/String;
    const-string/jumbo v32, "http"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 186
    const/16 v33, 0x0

    if-eqz v14, :cond_1

    const/16 v32, 0x0

    :goto_1
    aput-byte v32, v3, v33

    .line 191
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 195
    const/16 v32, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 196
    .local v16, "hostnameBytes":[B
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 197
    .local v21, "rawHostname":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 198
    .local v15, "hostname":Ljava/lang/String;
    const-string/jumbo v32, "."

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, "domains":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 201
    .local v7, "consumedSlash":Z
    if-eqz v11, :cond_6

    .line 204
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v32, 0x0

    const/16 v33, 0x2e

    aput-byte v33, v19, v32

    .line 205
    .local v19, "periodBytes":[B
    array-length v0, v11

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const/16 v30, 0x1

    .line 206
    .local v30, "writableDomainsCount":I
    :goto_3
    const/4 v9, 0x0

    .local v9, "domainIndex":I
    move v5, v4

    .end local v4    # "byteBufferIndex":I
    .local v5, "byteBufferIndex":I
    :goto_4
    move/from16 v0, v30

    if-ge v9, v0, :cond_5

    .line 208
    if-lez v9, :cond_f

    .line 209
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    add-int/lit8 v4, v5, 0x1

    .line 213
    .end local v5    # "byteBufferIndex":I
    .restart local v4    # "byteBufferIndex":I
    :goto_5
    aget-object v32, v11, v9

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 214
    .local v8, "domainBytes":[B
    array-length v10, v8

    .line 215
    .local v10, "domainLength":I
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-static {v8, v0, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    add-int/2addr v4, v10

    .line 206
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "byteBufferIndex":I
    .restart local v5    # "byteBufferIndex":I
    goto :goto_4

    .line 180
    .end local v5    # "byteBufferIndex":I
    .end local v7    # "consumedSlash":Z
    .end local v8    # "domainBytes":[B
    .end local v9    # "domainIndex":I
    .end local v10    # "domainLength":I
    .end local v11    # "domains":[Ljava/lang/String;
    .end local v14    # "haswww":Z
    .end local v15    # "hostname":Ljava/lang/String;
    .end local v16    # "hostnameBytes":[B
    .end local v19    # "periodBytes":[B
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v21    # "rawHostname":Ljava/lang/String;
    .end local v22    # "rawProtocol":Ljava/lang/String;
    .end local v30    # "writableDomainsCount":I
    .restart local v4    # "byteBufferIndex":I
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 186
    .restart local v14    # "haswww":Z
    .restart local v20    # "protocol":Ljava/lang/String;
    .restart local v22    # "rawProtocol":Ljava/lang/String;
    :cond_1
    const/16 v32, 0x2

    goto :goto_1

    .line 189
    :cond_2
    const/16 v33, 0x0

    if-eqz v14, :cond_3

    const/16 v32, 0x1

    :goto_6
    aput-byte v32, v3, v33

    goto/16 :goto_2

    :cond_3
    const/16 v32, 0x3

    goto :goto_6

    .line 205
    .restart local v7    # "consumedSlash":Z
    .restart local v11    # "domains":[Ljava/lang/String;
    .restart local v15    # "hostname":Ljava/lang/String;
    .restart local v16    # "hostnameBytes":[B
    .restart local v19    # "periodBytes":[B
    .restart local v21    # "rawHostname":Ljava/lang/String;
    :cond_4
    array-length v0, v11

    move/from16 v32, v0

    add-int/lit8 v30, v32, -0x1

    goto :goto_3

    .line 220
    .end local v4    # "byteBufferIndex":I
    .restart local v5    # "byteBufferIndex":I
    .restart local v9    # "domainIndex":I
    .restart local v30    # "writableDomainsCount":I
    :cond_5
    array-length v0, v11

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_e

    .line 221
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "."

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v11

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    aget-object v33, v11, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 222
    .local v25, "tld":Ljava/lang/String;
    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    .line 223
    .local v23, "slash":Ljava/lang/String;
    if-nez v23, :cond_9

    move-object/from16 v12, v25

    .line 224
    .local v12, "encodableTLDCandidate":Ljava/lang/String;
    :goto_7
    invoke-static {v12}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->encodedByteForTopLevelDomain(Ljava/lang/String;)B

    move-result v13

    .line 225
    .local v13, "encodedTLDByte":B
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v13, v0, :cond_b

    .line 226
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "byteBufferIndex":I
    .restart local v4    # "byteBufferIndex":I
    aput-byte v13, v3, v5

    .line 227
    if-eqz v23, :cond_a

    const/4 v7, 0x1

    .line 238
    .end local v9    # "domainIndex":I
    .end local v12    # "encodableTLDCandidate":Ljava/lang/String;
    .end local v13    # "encodedTLDByte":B
    .end local v19    # "periodBytes":[B
    .end local v23    # "slash":Ljava/lang/String;
    .end local v25    # "tld":Ljava/lang/String;
    .end local v30    # "writableDomainsCount":I
    :cond_6
    :goto_8
    if-nez v7, :cond_7

    .line 239
    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    .line 240
    .restart local v23    # "slash":Ljava/lang/String;
    if-eqz v23, :cond_7

    .line 241
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    .line 242
    .local v24, "slashLength":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v24

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    add-int v4, v4, v24

    .line 248
    .end local v23    # "slash":Ljava/lang/String;
    .end local v24    # "slashLength":I
    :cond_7
    const/16 v32, 0x5

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, "path":Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 250
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 251
    .local v18, "pathLength":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v18

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    add-int v4, v4, v18

    .line 256
    .end local v18    # "pathLength":I
    :cond_8
    new-array v6, v4, [B

    .line 257
    .local v6, "compressedBytes":[B
    const/16 v32, 0x0

    const/16 v33, 0x0

    array-length v0, v6

    move/from16 v34, v0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v3, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-object v6

    .line 223
    .end local v4    # "byteBufferIndex":I
    .end local v6    # "compressedBytes":[B
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "byteBufferIndex":I
    .restart local v9    # "domainIndex":I
    .restart local v19    # "periodBytes":[B
    .restart local v23    # "slash":Ljava/lang/String;
    .restart local v25    # "tld":Ljava/lang/String;
    .restart local v30    # "writableDomainsCount":I
    :cond_9
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_7

    .line 227
    .end local v5    # "byteBufferIndex":I
    .restart local v4    # "byteBufferIndex":I
    .restart local v12    # "encodableTLDCandidate":Ljava/lang/String;
    .restart local v13    # "encodedTLDByte":B
    :cond_a
    const/4 v7, 0x0

    goto :goto_8

    .line 229
    .end local v4    # "byteBufferIndex":I
    .restart local v5    # "byteBufferIndex":I
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    .line 230
    .local v26, "tldBytes":[B
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    .line 231
    .local v27, "tldLength":I
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-static {v0, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    add-int v4, v5, v27

    .end local v5    # "byteBufferIndex":I
    .restart local v4    # "byteBufferIndex":I
    goto/16 :goto_8

    .line 260
    .end local v7    # "consumedSlash":Z
    .end local v9    # "domainIndex":I
    .end local v11    # "domains":[Ljava/lang/String;
    .end local v12    # "encodableTLDCandidate":Ljava/lang/String;
    .end local v13    # "encodedTLDByte":B
    .end local v14    # "haswww":Z
    .end local v15    # "hostname":Ljava/lang/String;
    .end local v16    # "hostnameBytes":[B
    .end local v19    # "periodBytes":[B
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v21    # "rawHostname":Ljava/lang/String;
    .end local v22    # "rawProtocol":Ljava/lang/String;
    .end local v23    # "slash":Ljava/lang/String;
    .end local v25    # "tld":Ljava/lang/String;
    .end local v26    # "tldBytes":[B
    .end local v27    # "tldLength":I
    .end local v30    # "writableDomainsCount":I
    .end local v31    # "wwwdot":Ljava/lang/String;
    :cond_c
    new-instance v32, Ljava/net/MalformedURLException;

    invoke-direct/range {v32 .. v32}, Ljava/net/MalformedURLException;-><init>()V

    throw v32

    .line 264
    .end local v3    # "byteBuffer":[B
    .end local v4    # "byteBufferIndex":I
    .end local v28    # "urlMatcher":Ljava/util/regex/Matcher;
    .end local v29    # "urlPattern":Ljava/util/regex/Pattern;
    :cond_d
    new-instance v32, Ljava/net/MalformedURLException;

    invoke-direct/range {v32 .. v32}, Ljava/net/MalformedURLException;-><init>()V

    throw v32

    .restart local v3    # "byteBuffer":[B
    .restart local v5    # "byteBufferIndex":I
    .restart local v7    # "consumedSlash":Z
    .restart local v9    # "domainIndex":I
    .restart local v11    # "domains":[Ljava/lang/String;
    .restart local v14    # "haswww":Z
    .restart local v15    # "hostname":Ljava/lang/String;
    .restart local v16    # "hostnameBytes":[B
    .restart local v19    # "periodBytes":[B
    .restart local v20    # "protocol":Ljava/lang/String;
    .restart local v21    # "rawHostname":Ljava/lang/String;
    .restart local v22    # "rawProtocol":Ljava/lang/String;
    .restart local v28    # "urlMatcher":Ljava/util/regex/Matcher;
    .restart local v29    # "urlPattern":Ljava/util/regex/Pattern;
    .restart local v30    # "writableDomainsCount":I
    .restart local v31    # "wwwdot":Ljava/lang/String;
    :cond_e
    move v4, v5

    .end local v5    # "byteBufferIndex":I
    .restart local v4    # "byteBufferIndex":I
    goto/16 :goto_8

    .end local v4    # "byteBufferIndex":I
    .restart local v5    # "byteBufferIndex":I
    :cond_f
    move v4, v5

    .end local v5    # "byteBufferIndex":I
    .restart local v4    # "byteBufferIndex":I
    goto/16 :goto_5
.end method

.method private static encodedByteForTopLevelDomain(Ljava/lang/String;)B
    .locals 5
    .param p0, "tld"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, "encodedByte":B
    const/4 v3, 0x0

    .line 101
    .local v3, "tldFound":Z
    sget-object v4, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;>;"
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    .line 104
    .local v1, "entry":Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;
    iget-object v4, v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->tld:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 105
    if-eqz v3, :cond_0

    .line 106
    iget-byte v0, v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->encodedByte:B

    goto :goto_0

    .line 109
    .end local v1    # "entry":Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;
    :cond_1
    return v0
.end method

.method private static topLevelDomainForByte(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 6
    .param p0, "encodedByte"    # Ljava/lang/Byte;

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "tld":Ljava/lang/String;
    const/4 v3, 0x0

    .line 115
    .local v3, "tldFound":Z
    sget-object v4, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;>;"
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    .line 118
    .local v0, "entry":Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;
    iget-byte v4, v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->encodedByte:B

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 119
    :goto_1
    if-eqz v3, :cond_0

    .line 120
    iget-object v2, v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->tld:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 123
    .end local v0    # "entry":Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;
    :cond_2
    return-object v2
.end method

.method public static uncompress([B)Ljava/lang/String;
    .locals 6
    .param p0, "compressedURL"    # [B

    .prologue
    .line 270
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v4, "url":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    packed-switch v5, :pswitch_data_0

    .line 287
    :goto_0
    const/4 v2, -0x1

    .line 288
    .local v2, "lastByte":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_2

    .line 289
    aget-byte v0, p0, v1

    .line 290
    .local v0, "b":B
    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 293
    :cond_0
    move v2, v0

    .line 294
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v5}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->topLevelDomainForByte(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "tld":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "b":B
    .end local v1    # "i":I
    .end local v2    # "lastByte":B
    .end local v3    # "tld":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v5, "http://www."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 276
    :pswitch_1
    const-string/jumbo v5, "https://www."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 279
    :pswitch_2
    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 282
    :pswitch_3
    const-string/jumbo v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
    .restart local v0    # "b":B
    .restart local v1    # "i":I
    .restart local v2    # "lastByte":B
    .restart local v3    # "tld":Ljava/lang/String;
    :cond_1
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 303
    .end local v0    # "b":B
    .end local v3    # "tld":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
