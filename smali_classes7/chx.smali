.class public Lchx;
.super Ljava/lang/Object;
.source "FeatureSwitchManager.java"


# static fields
.field private static volatile a:Lchx;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a()Lchx;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lchx;->a:Lchx;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lchx;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lchx;->a:Lchx;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lchx;

    invoke-direct {v0}, Lchx;-><init>()V

    sput-object v0, Lchx;->a:Lchx;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lchx;->a:Lchx;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3
    .param p0, "featureKeys"    # [Ljava/lang/String;

    .prologue
    .line 143
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 144
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 145
    .local v1, "modules":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 146
    const-string/jumbo v2, "dt_feature_switch"

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcmt;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    .end local v0    # "i":I
    .end local v1    # "modules":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static b()I
    .locals 6

    .prologue
    .line 134
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 135
    .local v0, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 136
    const-wide/16 v2, 0xa

    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 139
    :goto_0
    return v2

    .line 138
    :cond_0
    const-string/jumbo v2, "feature"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uid is invalid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_feature_switch"

    invoke-virtual {v7, v8, p1}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v7, "feature"

    const/4 v8, 0x0

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "isFeatureOpen: key:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " value:"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, " default:"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 93
    .restart local p2    # "defaultValue":Z
    :cond_1
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    const/4 p2, 0x0

    goto :goto_0

    .line 95
    :cond_2
    const-string/jumbo v7, "0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 96
    const/4 p2, 0x1

    goto :goto_0

    .line 99
    :cond_3
    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "values":[Ljava/lang/String;
    if-eqz v6, :cond_4

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Lcoc;->d(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Lcoc;->d(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 1150
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "start":I
    const/4 v7, 0x1

    aget-object v7, v6, v7

    .line 2150
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "end":I
    invoke-static {}, Lchx;->b()I

    move-result v1

    .line 107
    .local v1, "lastNum":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    if-gt v2, v1, :cond_4

    if-lt v0, v1, :cond_4

    .line 108
    const/4 p2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "end":I
    .end local v1    # "lastNum":I
    .end local v2    # "start":I
    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 112
    .end local v6    # "values":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    const-string/jumbo v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 115
    .restart local v6    # "values":[Ljava/lang/String;
    if-eqz v6, :cond_8

    array-length v7, v6

    if-lez v7, :cond_8

    .line 116
    invoke-static {}, Lchx;->b()I

    move-result v1

    .line 117
    .restart local v1    # "lastNum":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_6

    .line 118
    const/4 p2, 0x0

    goto/16 :goto_0

    .line 120
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "valueNum":Ljava/lang/String;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v3, v6, v7

    .line 122
    .local v3, "strValue":Ljava/lang/String;
    invoke-static {v3}, Lcoc;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 123
    const/4 p2, 0x1

    goto/16 :goto_0

    .line 121
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 127
    .end local v1    # "lastNum":I
    .end local v3    # "strValue":Ljava/lang/String;
    .end local v5    # "valueNum":Ljava/lang/String;
    :cond_8
    const/4 p2, 0x0

    goto/16 :goto_0
.end method
