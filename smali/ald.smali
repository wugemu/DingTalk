.class public Lald;
.super Lakp;
.source "Log.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "log"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "eventId"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "priority"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "streamId"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "time"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "_index"
    .end annotation
.end field

.field public g:I
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "content"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lakp;-><init>()V

    .line 38
    const-string/jumbo v0, "3"

    iput-object v0, p0, Lald;->b:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lald;->d:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lald;->f:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lald;->g:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lakp;-><init>()V

    .line 38
    const-string/jumbo v0, "3"

    iput-object v0, p0, Lald;->b:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lald;->d:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lald;->f:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lald;->g:I

    .line 86
    iput-object p2, p0, Lald;->a:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lald;->i:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lald;->j:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lald;->k:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lald;->l:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lald;->m:Ljava/util/Map;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lald;->d:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lald;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lald;->f:Ljava/lang/String;

    .line 94
    invoke-static {}, Lala;->a()Lala;

    move-result-object v0

    .line 2037
    invoke-virtual {v0, p2}, Lala;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2038
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :goto_0
    iput-object v0, p0, Lald;->b:Ljava/lang/String;

    .line 2164
    iget-object v0, p0, Lald;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lald;->d:Ljava/lang/String;

    .line 2167
    :cond_0
    iget-object v0, p0, Lald;->i:Ljava/lang/String;

    iget-object v1, p0, Lald;->a:Ljava/lang/String;

    iget-object v2, p0, Lald;->j:Ljava/lang/String;

    iget-object v3, p0, Lald;->k:Ljava/lang/String;

    iget-object v4, p0, Lald;->l:Ljava/lang/String;

    iget-object v5, p0, Lald;->m:Ljava/util/Map;

    iget-object v6, p0, Lald;->f:Ljava/lang/String;

    iget-object v7, p0, Lald;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Laky;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2168
    invoke-direct {p0, v0}, Lald;->a(Ljava/lang/String;)V

    .line 96
    return-void

    .line 2041
    :cond_1
    const-string/jumbo v0, "3"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "priority"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "streamId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lakp;-><init>()V

    .line 38
    const-string/jumbo v2, "3"

    iput-object v2, p0, Lald;->b:Ljava/lang/String;

    .line 47
    iput-object v4, p0, Lald;->d:Ljava/lang/String;

    .line 49
    const-string/jumbo v2, ""

    iput-object v2, p0, Lald;->f:Ljava/lang/String;

    .line 62
    iput v1, p0, Lald;->g:I

    .line 75
    iput-object p1, p0, Lald;->b:Ljava/lang/String;

    .line 1172
    if-eqz v4, :cond_3

    .line 1173
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1174
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    :goto_0
    iput-object v1, p0, Lald;->c:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lald;->a:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lald;->d:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lald;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lald;->f:Ljava/lang/String;

    .line 80
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lald;->f:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p4}, Laky;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "content":Ljava/lang/String;
    invoke-direct {p0, v0}, Lald;->a(Ljava/lang/String;)V

    .line 83
    return-void

    .line 1176
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 1177
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1178
    if-ltz v2, :cond_1

    .line 1179
    const-string/jumbo v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1183
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1186
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lanb;->a([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lamm;->c([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lald;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 190
    const-string/jumbo v1, ""

    .line 191
    .local v1, "startTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v3

    .line 3044
    iget-wide v4, v3, Lalb;->a:J

    .line 191
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "sesstionTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_0
    :goto_0
    const-string/jumbo v2, "2202"

    iget-object v3, p0, Lald;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    const-string/jumbo v2, "%s%06d,2202_%06d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v4

    invoke-virtual {v4}, Lalb;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v4

    .line 3070
    iget-object v4, v4, Lalb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    int-to-long v4, v4

    .line 200
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_1
    return-object v2

    .line 196
    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 202
    :cond_2
    const-string/jumbo v2, "%s%06d"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v4

    invoke-virtual {v4}, Lalb;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, "temp":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lald;->h:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lamm;->a([BI)[B

    move-result-object v0

    .line 105
    .local v0, "lBContent":[B
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lanb;->a([B)[B

    move-result-object v1

    .line 107
    .local v1, "lBRc4":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "temp":Ljava/lang/String;
    .local v3, "temp":Ljava/lang/String;
    move-object v2, v3

    .line 112
    .end local v0    # "lBContent":[B
    .end local v1    # "lBRc4":[B
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Log [eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lald;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lald;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
