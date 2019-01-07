.class public final Lmd;
.super Ljava/lang/Object;
.source "CacheHelper.java"


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lmd;->a:Ljava/util/TimeZone;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    sput-object v0, Lmd;->b:Ljava/text/DateFormat;

    sget-object v1, Lmd;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 6
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-wide v2

    .line 34
    :cond_1
    :try_start_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 35
    .local v0, "position":Ljava/text/ParsePosition;
    sget-object v4, Lmd;->b:Ljava/text/DateFormat;

    invoke-virtual {v4, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 36
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .end local v0    # "position":Ljava/text/ParsePosition;
    .end local v1    # "result":Ljava/util/Date;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lanetwork/channel/cache/Cache$Entry;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 47
    .local v12, "now":J
    const-wide/16 v14, 0x0

    .line 48
    .local v14, "serverDate":J
    const-wide/16 v8, 0x0

    .line 49
    .local v8, "lastModified":J
    const-wide/16 v16, 0x0

    .line 50
    .local v16, "serverExpires":J
    const-wide/16 v20, 0x0

    .line 51
    .local v20, "ttl":J
    const-wide/16 v10, 0x0

    .line 52
    .local v10, "maxAge":J
    const/4 v4, 0x0

    .line 57
    .local v4, "hasCacheControl":Z
    const-string/jumbo v19, "Cache-Control"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "headerValue":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 59
    const/4 v4, 0x1

    .line 60
    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 61
    .local v18, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_3

    .line 62
    aget-object v19, v18, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "token":Ljava/lang/String;
    const-string/jumbo v19, "no-cache"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "no-store"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 64
    :cond_0
    const/4 v2, 0x0

    .line 104
    .end local v6    # "i":I
    .end local v7    # "token":Ljava/lang/String;
    .end local v18    # "tokens":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 65
    .restart local v6    # "i":I
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v18    # "tokens":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v19, "max-age="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 67
    const/16 v19, 0x8

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 61
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    .end local v6    # "i":I
    .end local v7    # "token":Ljava/lang/String;
    .end local v18    # "tokens":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v19, "Date"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    invoke-static {v5}, Lmd;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 79
    :cond_4
    const-string/jumbo v19, "Expires"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    invoke-static {v5}, Lmd;->a(Ljava/lang/String;)J

    move-result-wide v16

    .line 84
    :cond_5
    const-string/jumbo v19, "Last-Modified"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_6

    .line 86
    invoke-static {v5}, Lmd;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 89
    :cond_6
    const-string/jumbo v19, "ETag"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "etag":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 92
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v10

    add-long v20, v12, v22

    .line 97
    :cond_7
    :goto_3
    new-instance v2, Lanetwork/channel/cache/Cache$Entry;

    invoke-direct {v2}, Lanetwork/channel/cache/Cache$Entry;-><init>()V

    .line 98
    .local v2, "entry":Lanetwork/channel/cache/Cache$Entry;
    iput-object v3, v2, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    .line 99
    move-wide/from16 v0, v20

    iput-wide v0, v2, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    .line 100
    iput-wide v14, v2, Lanetwork/channel/cache/Cache$Entry;->serverDate:J

    .line 101
    iput-wide v8, v2, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    .line 102
    move-object/from16 v0, p0

    iput-object v0, v2, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    goto :goto_1

    .line 93
    .end local v2    # "entry":Lanetwork/channel/cache/Cache$Entry;
    :cond_8
    const-wide/16 v22, 0x0

    cmp-long v19, v14, v22

    if-lez v19, :cond_7

    cmp-long v19, v16, v14

    if-ltz v19, :cond_7

    .line 94
    sub-long v22, v16, v14

    add-long v20, v12, v22

    goto :goto_3

    .end local v3    # "etag":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v18    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v19

    goto :goto_2
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "ttl"    # J

    .prologue
    .line 25
    sget-object v0, Lmd;->b:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
