.class public Lcom/amap/api/mapcore/util/fc;
.super Ljava/lang/Exception;
.source "AMapCoreException.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fc;->a:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    .line 61
    iput-object p1, p0, Lcom/amap/api/mapcore/util/fc;->a:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fc;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/16 v0, 0x15

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    .line 122
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/16 v0, 0x16

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const/16 v0, 0x17

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const/16 v0, 0x18

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    const/16 v0, 0x19

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 84
    :cond_4
    const-string/jumbo v0, "url\u5f02\u5e38 - MalformedURLException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const/16 v0, 0x1a

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 86
    :cond_5
    const-string/jumbo v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    const/16 v0, 0x1b

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 88
    :cond_6
    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    const/16 v0, 0x1c

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 90
    :cond_7
    const-string/jumbo v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    const/16 v0, 0x1d

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto :goto_0

    .line 92
    :cond_8
    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    const/16 v0, 0x1e

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 94
    :cond_9
    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    const/16 v0, 0x1f

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 96
    :cond_a
    const-string/jumbo v0, "key\u9274\u6743\u5931\u8d25"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 98
    :cond_b
    const-string/jumbo v0, "requeust is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 100
    :cond_c
    const-string/jumbo v0, "request url is empty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 102
    :cond_d
    const-string/jumbo v0, "response is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 104
    :cond_e
    const-string/jumbo v0, "thread pool has exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 106
    :cond_f
    const-string/jumbo v0, "sdk name is invalid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 108
    :cond_10
    const-string/jumbo v0, "sdk info is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 110
    :cond_11
    const-string/jumbo v0, "sdk packages is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 111
    const/4 v0, 0x7

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 113
    :cond_12
    const-string/jumbo v0, "\u7ebf\u7a0b\u6c60\u4e3a\u7a7a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 114
    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 116
    :cond_13
    const-string/jumbo v0, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 117
    const/16 v0, 0x65

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0

    .line 120
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/amap/api/mapcore/util/fc;->b:I

    return v0
.end method
