.class public final Lhte;
.super Ljava/lang/Object;
.source "CrashReport.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lhtn;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/io/File;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lhtl;

.field i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lhtl;

    invoke-direct {v0}, Lhtl;-><init>()V

    iput-object v0, p0, Lhte;->h:Lhtl;

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Lhtn;Z)Lhte;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportFile"    # Ljava/io/File;
    .param p2, "reporterContext"    # Lhtn;
    .param p3, "currentTrigger"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0xb

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "reportName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1072
    .local v5, "reportPath":Ljava/lang/String;
    invoke-static {v4}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, ".log"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1073
    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1074
    array-length v6, v3

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 1075
    aget-object v6, v3, v10

    const-string/jumbo v7, ".log"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 1076
    const-string/jumbo v6, "java"

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "native"

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "anr"

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    .local v3, "parts":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 128
    :goto_1
    return-object v1

    .end local v3    # "parts":[Ljava/lang/String;
    :cond_1
    move-object v3, v1

    .line 1081
    goto :goto_0

    .line 94
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_2
    new-instance v1, Lhte;

    invoke-direct {v1}, Lhte;-><init>()V

    .line 95
    .local v1, "crashReport":Lhte;
    iput-object p0, v1, Lhte;->a:Landroid/content/Context;

    .line 96
    iput-object p2, v1, Lhte;->b:Lhtn;

    .line 97
    iput-object p1, v1, Lhte;->e:Ljava/io/File;

    .line 98
    iput-object v4, v1, Lhte;->c:Ljava/lang/String;

    .line 99
    iput-object v5, v1, Lhte;->f:Ljava/lang/String;

    .line 100
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "CRASH_SDK_NAME"

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 101
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "CRASH_SDK_VERSION"

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 102
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "CRASH_SDK_BUILD"

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 103
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "BRAND"

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 104
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "DEVICE_MODEL"

    const/4 v9, 0x4

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 105
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "UTDID"

    const/4 v9, 0x5

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 106
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "APP_KEY"

    const/4 v9, 0x6

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 108
    const/4 v6, 0x7

    aget-object v6, v3, v6

    invoke-static {v6}, Lhte;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lhtr;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "currentAppVersion":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 114
    move-object v0, v2

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "crashreporter update appversion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "currentAppVersion":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "APP_VERSION"

    invoke-direct {v7, v8, v0}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 122
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "REPORT_CREATE_TIMESTAMP"

    const/16 v9, 0x8

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 123
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "REPORT_CREATE_TIME"

    const/16 v9, 0x9

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 124
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "REPORT_TAG"

    const/16 v9, 0xa

    aget-object v9, v3, v9

    invoke-static {v9}, Lhte;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 125
    iget-object v6, v1, Lhte;->h:Lhtl;

    new-instance v7, Lhtl$a;

    const-string/jumbo v8, "REPORT_TYPE"

    aget-object v9, v3, v10

    invoke-direct {v7, v8, v9}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhtl;->a(Lhtk$a;)V

    .line 126
    aget-object v6, v3, v10

    iput-object v6, v1, Lhte;->d:Ljava/lang/String;

    .line 127
    iput-boolean p3, v1, Lhte;->i:Z

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    const-string/jumbo v0, "_"

    const-string/jumbo v1, "&#95;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "reportType"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lhte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p4}, Lhte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CrashSDK_1.0.0.0__df_df_df_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-static {p2, p3}, Lhtr;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "df"

    .line 53
    invoke-static {p4, v1}, Lhua;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    const-string/jumbo v0, "&#95;"

    const-string/jumbo v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lhte;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lhte;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 160
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lhte;->g:Ljava/lang/String;

    invoke-static {v0}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhte;->e:Ljava/io/File;

    invoke-static {v0}, Lhtr;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhte;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhte;->g:Ljava/lang/String;

    goto :goto_0
.end method
