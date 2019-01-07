.class public final Lese;
.super Ljava/lang/Object;
.source "RecommendUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()D
    .locals 6

    .prologue
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .local v2, "weak":D
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v4, "dt_search"

    const-string/jumbo v5, "search_weak"

    invoke-virtual {v1, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {v0}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v2

    .line 64
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 65
    const-wide v2, 0x417312d000000000L    # 2.0E7

    .line 68
    :cond_1
    return-wide v2
.end method

.method public static b()I
    .locals 5

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "days":I
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_search"

    const-string/jumbo v4, "intimacy_full_sync"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 98
    :cond_0
    if-gtz v0, :cond_1

    .line 99
    const/4 v0, 0x7

    .line 102
    :cond_1
    const/16 v2, 0x16d

    if-le v0, v2, :cond_2

    .line 103
    const/16 v0, 0x16d

    .line 106
    :cond_2
    return v0
.end method

.method public static c()J
    .locals 6

    .prologue
    .line 111
    const-wide/32 v0, 0xea60

    .line 112
    .local v0, "granularity":J
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_search"

    const-string/jumbo v5, "intimacy_granularity"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 117
    :cond_0
    const-wide/16 v4, 0x3e8

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 118
    const-wide/16 v0, 0x3e8

    .line 121
    :cond_1
    const-wide v4, 0x9a7ec800L

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 122
    const-wide v0, 0x9a7ec800L

    .line 125
    :cond_2
    return-wide v0
.end method
