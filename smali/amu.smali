.class public Lamu;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Lams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "Analytics"

    sput-object v0, Lamu;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lamu;->b:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lamu;->c:Lams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method public static a(Lams;)V
    .locals 0
    .param p0, "logger"    # Lams;

    .prologue
    .line 31
    sput-object p0, Lamu;->c:Lams;

    .line 32
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lams;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 5051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x4

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lamu;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    invoke-static {p0, p1}, Lamu;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v0, 0x4

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 3051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lamu;->b:Z

    .line 40
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lamu;->b:Z

    return v0
.end method

.method private static a(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 43
    sget-object v0, Lamu;->c:Lams;

    if-eqz v0, :cond_0

    sget-object v0, Lamu;->c:Lams;

    invoke-interface {v0}, Lams;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lamu;->c:Lams;

    invoke-interface {v0}, Lams;->getLogLevel()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 219
    const-string/jumbo v5, ""

    .line 233
    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 221
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "[%s] "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez p0, :cond_1

    const-string/jumbo p0, "-"

    .end local p0    # "msg":Ljava/lang/String;
    :cond_1
    aput-object p0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 225
    .local v1, "count":I
    const/4 v4, 0x0

    .line 226
    .local v4, "index":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v4, v4, 0x1

    .line 229
    if-ge v4, v1, :cond_2

    .line 230
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 233
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x4

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lams;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 10051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 4051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x3

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 6051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 127
    const/4 v0, 0x3

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 7051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 8051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Lamu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lamu;->c:Lams;

    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lams;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 9051
    :cond_1
    sget-boolean v0, Lamu;->b:Z

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lamu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lamu;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 7

    .prologue
    .line 174
    sget-boolean v5, Lamu;->b:Z

    if-nez v5, :cond_0

    .line 175
    sget-object v5, Lamu;->a:Ljava/lang/String;

    .line 190
    .local v0, "className":Ljava/lang/String;
    .local v1, "element":Ljava/lang/StackTraceElement;
    .local v3, "method":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 178
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v3    # "method":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lamu;->f()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 179
    .restart local v1    # "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v0, ""

    .line 180
    .restart local v0    # "className":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 181
    .restart local v3    # "method":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 185
    .local v2, "index":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 190
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Analytics."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 194
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 195
    const-string/jumbo v3, ""

    .line 214
    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 198
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[%s] "

    new-array v4, v8, [Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string/jumbo p0, "-"

    .end local p0    # "msg":Ljava/lang/String;
    :cond_1
    aput-object p0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz p1, :cond_6

    .line 201
    array-length v2, p1

    .line 203
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 204
    aget-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v4, p1, v1

    .line 10170
    const-string/jumbo v5, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :cond_2
    aput-object v3, v6, v7

    if-nez v4, :cond_4

    const-string/jumbo v3, ""

    :goto_2
    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_3

    .line 207
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 10170
    goto :goto_2

    .line 210
    :cond_5
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_6

    .line 211
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static f()Ljava/lang/StackTraceElement;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 240
    sget-boolean v6, Lamu;->b:Z

    if-nez v6, :cond_1

    move-object v3, v5

    .line 260
    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    .local v4, "sts":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_0
    return-object v3

    .line 245
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v4    # "sts":[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 246
    .restart local v4    # "sts":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v4

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 247
    .local v3, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    if-nez v6, :cond_2

    .line 250
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 253
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lamu;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "st":Ljava/lang/StackTraceElement;
    :cond_3
    move-object v3, v5

    .line 258
    goto :goto_0

    .line 260
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catch_0
    move-exception v6

    move-object v3, v5

    goto :goto_0
.end method
