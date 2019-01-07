.class final Ljwm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:D

.field private final f:D

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:J

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljwk;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v0, p1, Ljwk;->a:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->a:Ljava/lang/String;

    .line 2000
    iget-object v0, p1, Ljwk;->b:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->b:Ljava/lang/String;

    .line 3000
    iget-object v0, p1, Ljwk;->c:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->c:Ljava/lang/String;

    .line 4000
    iget-object v0, p1, Ljwk;->d:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->d:Ljava/lang/String;

    iput-wide v2, p0, Ljwm;->e:D

    iput-wide v2, p0, Ljwm;->f:D

    .line 7000
    iget-object v0, p1, Ljwk;->e:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->g:Ljava/lang/String;

    .line 8000
    iget-object v0, p1, Ljwk;->f:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->h:Ljava/lang/String;

    .line 9000
    iget-wide v0, p1, Ljwk;->g:J

    .line 0
    iput-wide v0, p0, Ljwm;->i:J

    .line 10000
    iget-wide v0, p1, Ljwk;->h:J

    .line 0
    iput-wide v0, p0, Ljwm;->j:J

    .line 11000
    iget-object v0, p1, Ljwk;->i:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->k:Ljava/lang/String;

    .line 12000
    iget-object v0, p1, Ljwk;->j:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Ljwm;->l:Ljava/lang/String;

    .line 13000
    iget-object v0, p1, Ljwk;->k:Ljava/util/List;

    .line 0
    iput-object v0, p0, Ljwm;->m:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljwk;B)V
    .locals 0

    invoke-direct {p0, p1}, Ljwm;-><init>(Ljwk;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "m"

    iget-object v2, p0, Ljwm;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "i"

    iget-object v2, p0, Ljwm;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "a"

    iget-object v2, p0, Ljwm;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "o"

    iget-object v2, p0, Ljwm;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "lg"

    iget-wide v2, p0, Ljwm;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "lt"

    iget-wide v2, p0, Ljwm;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "am"

    iget-object v2, p0, Ljwm;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "as"

    iget-object v2, p0, Ljwm;->h:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ast"

    iget-wide v2, p0, Ljwm;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ad"

    iget-wide v2, p0, Ljwm;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ds"

    iget-object v2, p0, Ljwm;->k:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "dm"

    iget-object v2, p0, Ljwm;->l:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Ljwm;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "devices"

    invoke-static {v1, v0, v2}, Ljwm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
