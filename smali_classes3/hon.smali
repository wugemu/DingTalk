.class public final Lhon;
.super Ljava/lang/Object;
.source "StringHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v1, 0x1

    .line 20
    .local v1, "rs":I
    :try_start_0
    invoke-static {p0, p1}, Lhon;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 27
    :goto_0
    if-ltz v1, :cond_0

    :goto_1
    return v2

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    const-string/jumbo v4, "runtimeData"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "isVersionEqualOrGreater"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "parseVersion error: "

    aput-object v8, v7, v3

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 23
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 27
    goto :goto_1
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "versionArray"    # [Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "j":I
    :goto_1
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 114
    aget-object v3, p0, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "expectNumber":C
    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "expectNumber":C
    :cond_0
    aget-object v3, p0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "j":I
    :cond_1
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    const/4 v1, 0x1

    .line 40
    .local v1, "rs":I
    :try_start_0
    invoke-static {p0, p1}, Lhon;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    :goto_0
    if-lez v1, :cond_0

    :goto_1
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "runtimeData"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "isVersionGreater"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "parseVersion error: "

    aput-object v8, v7, v3

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 42
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 46
    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    const/4 v7, 0x0

    .line 104
    :goto_0
    return v7

    .line 63
    :cond_0
    invoke-static {p0}, Linh;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    const/4 v7, -0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Linh;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    const/4 v7, 0x1

    goto :goto_0

    .line 69
    :cond_2
    const-string/jumbo v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "version1Array":[Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "version2Array":[Ljava/lang/String;
    invoke-static {v5}, Lhon;->a([Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    invoke-static {v6}, Lhon;->a([Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Linh;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 75
    const/4 v7, -0x1

    goto :goto_0

    .line 77
    :cond_3
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Linh;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 78
    const/4 v7, 0x1

    goto :goto_0

    .line 80
    :cond_4
    const/4 v3, 0x0

    .line 81
    .local v3, "index":I
    array-length v7, v5

    array-length v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 82
    .local v4, "minLen":I
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "diff":J
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v7, v5, v3

    .line 85
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v0, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-nez v7, :cond_5

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-nez v7, :cond_a

    .line 89
    move v2, v3

    .local v2, "i":I
    :goto_2
    array-length v7, v5

    if-ge v2, v7, :cond_7

    .line 90
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 92
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 89
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    :cond_7
    move v2, v3

    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_9

    .line 96
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 98
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 95
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_a
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_b

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v7, -0x1

    goto/16 :goto_0
.end method
