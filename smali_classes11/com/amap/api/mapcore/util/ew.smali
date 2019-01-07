.class public Lcom/amap/api/mapcore/util/ew;
.super Ljava/lang/Exception;
.source "AMapException.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Ljava/lang/String;

    .line 80
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Ljava/lang/String;

    .line 80
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    .line 90
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew;->a:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ew;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    .line 182
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v0, "\u7528\u6237key\u4e0d\u6b63\u786e\u6216\u8fc7\u671f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 123
    :cond_1
    const-string/jumbo v0, "\u8bf7\u6c42\u670d\u52a1\u4e0d\u5b58\u5728"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 125
    :cond_2
    const-string/jumbo v0, "\u8bbf\u95ee\u5df2\u8d85\u51fa\u65e5\u8bbf\u95ee\u91cf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v0, "\u7528\u6237\u8bbf\u95ee\u8fc7\u4e8e\u9891\u7e41"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 129
    :cond_4
    const-string/jumbo v0, "\u7528\u6237IP\u65e0\u6548"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 131
    :cond_5
    const-string/jumbo v0, "\u7528\u6237\u57df\u540d\u65e0\u6548"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 133
    :cond_6
    const-string/jumbo v0, "\u7528\u6237MD5\u5b89\u5168\u7801\u672a\u901a\u8fc7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 135
    :cond_7
    const-string/jumbo v0, "\u8bf7\u6c42key\u4e0e\u7ed1\u5b9a\u5e73\u53f0\u4e0d\u7b26"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto :goto_0

    .line 137
    :cond_8
    const-string/jumbo v0, "IP\u8bbf\u95ee\u8d85\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 139
    :cond_9
    const-string/jumbo v0, "\u670d\u52a1\u4e0d\u652f\u6301https\u8bf7\u6c42"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    const/16 v0, 0x3f3

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 141
    :cond_a
    const-string/jumbo v0, "\u6743\u9650\u4e0d\u8db3\uff0c\u670d\u52a1\u8bf7\u6c42\u88ab\u62d2\u7edd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 142
    const/16 v0, 0x3f4

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string/jumbo v0, "\u5f00\u53d1\u8005\u5220\u9664\u4e86key\uff0ckey\u88ab\u5220\u9664\u540e\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 145
    :cond_c
    const-string/jumbo v0, "\u8bf7\u6c42\u670d\u52a1\u54cd\u5e94\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 146
    const/16 v0, 0x44c

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 147
    :cond_d
    const-string/jumbo v0, "\u5f15\u64ce\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 148
    const/16 v0, 0x44d

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 149
    :cond_e
    const-string/jumbo v0, "\u670d\u52a1\u7aef\u8bf7\u6c42\u94fe\u63a5\u8d85\u65f6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 150
    const/16 v0, 0x44e

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 151
    :cond_f
    const-string/jumbo v0, "\u8bfb\u53d6\u670d\u52a1\u7ed3\u679c\u8d85\u65f6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 152
    const/16 v0, 0x44f

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 153
    :cond_10
    const-string/jumbo v0, "\u8bf7\u6c42\u53c2\u6570\u975e\u6cd5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 154
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 155
    :cond_11
    const-string/jumbo v0, "\u7f3a\u5c11\u5fc5\u586b\u53c2\u6570"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    const/16 v0, 0x4b1

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 157
    :cond_12
    const-string/jumbo v0, "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    const/16 v0, 0x4b2

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 159
    :cond_13
    const-string/jumbo v0, "\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 160
    const/16 v0, 0x4b3

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 161
    :cond_14
    const-string/jumbo v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 162
    const/16 v0, 0x709

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 163
    :cond_15
    const-string/jumbo v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 164
    const/16 v0, 0x70a

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 165
    :cond_16
    const-string/jumbo v0, "url\u5f02\u5e38 - MalformedURLException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 166
    const/16 v0, 0x70b

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 167
    :cond_17
    const-string/jumbo v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 168
    const/16 v0, 0x70c

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 169
    :cond_18
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 170
    const/16 v0, 0x76c

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 171
    :cond_19
    const-string/jumbo v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 172
    const/16 v0, 0x76d

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 173
    :cond_1a
    const-string/jumbo v0, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 174
    const/16 v0, 0x70e

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 175
    :cond_1b
    const-string/jumbo v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 176
    const/16 v0, 0x76e

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 177
    :cond_1c
    const-string/jumbo v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 178
    const/16 v0, 0x76f

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0

    .line 180
    :cond_1d
    const/16 v0, 0x708

    iput v0, p0, Lcom/amap/api/mapcore/util/ew;->b:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Ljava/lang/String;

    return-object v0
.end method
