.class public Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final FIFTY_KB:J = 0xc800L

.field public static final FIFTY_MB:J = 0x3200000L

.field public static final FIVE_KB:J = 0x1400L

.field public static final FIVE_MB:J = 0x500000L

.field public static final FIVE_TH_KB:J = 0x7d000L

.field public static final LESS_FIFTY_KB:Ljava/lang/String; = "20KB~50KB"

.field public static final LESS_FIFTY_MB:Ljava/lang/String; = "20MB~50MB"

.field public static final LESS_FIVE_KB:Ljava/lang/String; = "1~5KB"

.field public static final LESS_FIVE_MB:Ljava/lang/String; = "2MB~5MB"

.field public static final LESS_FIVE_TH_KB:Ljava/lang/String; = "100KB~500KB"

.field public static final LESS_ONE_KB:Ljava/lang/String; = "0~1KB"

.field public static final LESS_ONE_MB:Ljava/lang/String; = "500KB~1MB"

.field public static final LESS_ONE_TH_KB:Ljava/lang/String; = "50KB~100KB"

.field public static final LESS_TEN_KB:Ljava/lang/String; = "5KB~10KB"

.field public static final LESS_TEN_MB:Ljava/lang/String; = "5MB~10MB"

.field public static final LESS_TWENTY_KB:Ljava/lang/String; = "10KB~20KB"

.field public static final LESS_TWENTY_MB:Ljava/lang/String; = "10MB~20MB"

.field public static final LESS_TWO_MB:Ljava/lang/String; = "1MB~2MB"

.field public static final MORE_FIFTY_MB:Ljava/lang/String; = "50MB~"

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_MB:J = 0x100000L

.field public static final ON_TH_KB:J = 0x19000L

.field public static final TEN_KB:J = 0x2800L

.field public static final TEN_MB:J = 0xa00000L

.field public static final TWENTY_KB:J = 0x5000L

.field public static final TWENTY_MB:J = 0x1400000L

.field public static final TWO_MB:J = 0x200000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSizeRange(J)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 152
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 153
    const-string/jumbo v0, "0~1KB"

    .line 180
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-wide/16 v0, 0x1400

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 155
    const-string/jumbo v0, "1~5KB"

    goto :goto_0

    .line 156
    :cond_1
    const-wide/16 v0, 0x2800

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 157
    const-string/jumbo v0, "5KB~10KB"

    goto :goto_0

    .line 158
    :cond_2
    const-wide/16 v0, 0x5000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 159
    const-string/jumbo v0, "10KB~20KB"

    goto :goto_0

    .line 160
    :cond_3
    const-wide/32 v0, 0xc800

    cmp-long v0, p0, v0

    if-gtz v0, :cond_4

    .line 161
    const-string/jumbo v0, "20KB~50KB"

    goto :goto_0

    .line 162
    :cond_4
    const-wide/32 v0, 0x19000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 163
    const-string/jumbo v0, "50KB~100KB"

    goto :goto_0

    .line 164
    :cond_5
    const-wide/32 v0, 0x7d000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_6

    .line 165
    const-string/jumbo v0, "100KB~500KB"

    goto :goto_0

    .line 166
    :cond_6
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    .line 167
    const-string/jumbo v0, "500KB~1MB"

    goto :goto_0

    .line 168
    :cond_7
    const-wide/32 v0, 0x200000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    .line 169
    const-string/jumbo v0, "1MB~2MB"

    goto :goto_0

    .line 170
    :cond_8
    const-wide/32 v0, 0x500000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    .line 171
    const-string/jumbo v0, "2MB~5MB"

    goto :goto_0

    .line 172
    :cond_9
    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    .line 173
    const-string/jumbo v0, "5MB~10MB"

    goto :goto_0

    .line 174
    :cond_a
    const-wide/32 v0, 0x1400000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_b

    .line 175
    const-string/jumbo v0, "10MB~20MB"

    goto/16 :goto_0

    .line 176
    :cond_b
    const-wide/32 v0, 0x3200000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_c

    .line 177
    const-string/jumbo v0, "20MB~50MB"

    goto/16 :goto_0

    .line 180
    :cond_c
    const-string/jumbo v0, "50MB~"

    goto/16 :goto_0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const-string/jumbo v3, ""

    .line 204
    :goto_0
    return-object v3

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 193
    .local v2, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 197
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 204
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_0
.end method
