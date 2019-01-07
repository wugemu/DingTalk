.class Lcom/alibaba/sdk/android/httpdns/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:J

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/a/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/c;->c:J

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/g;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/a/g;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/a/c;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:J

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/g;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/a/g;->m:Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "host"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:Ljava/lang/String;

    const-string/jumbo v0, "ips"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ttl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->c:J

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:J

    return-wide v0
.end method

.method a()Lcom/alibaba/sdk/android/httpdns/a/e;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/a/e;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/a/e;-><init>()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/sdk/android/httpdns/a/e;->j:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/sdk/android/httpdns/a/e;->l:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/sdk/android/httpdns/a/e;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/a/g;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/httpdns/a/g;-><init>()V

    iput-object v4, v5, Lcom/alibaba/sdk/android/httpdns/a/g;->m:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/alibaba/sdk/android/httpdns/a/g;->n:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/c;->c:J

    return-wide v0
.end method

.method b()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/c;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/c;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "host: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ip cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ttl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/c;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n ip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/c;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
