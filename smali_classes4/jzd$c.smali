.class final Ljzd$c;
.super Ljzd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/io/File;

.field f:I

.field g:Z

.field h:Z

.field final synthetic i:Ljzd;


# direct methods
.method constructor <init>(Ljzd;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    iput-object p1, p0, Ljzd$c;->i:Ljzd;

    invoke-direct {p0, p1}, Ljzd$b;-><init>(Ljzd;)V

    iput-object p2, p0, Ljzd$c;->a:Ljava/lang/String;

    iput-object p3, p0, Ljzd$c;->d:Ljava/lang/String;

    iput-object p4, p0, Ljzd$c;->e:Ljava/io/File;

    iput-boolean p5, p0, Ljzd$c;->h:Z

    return-void
.end method

.method private d()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    iget-object v0, p0, Ljzd$c;->i:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "log.timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v0, "log.requst"

    const-string/jumbo v2, ""

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v0, "times"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const/16 v5, 0xa

    if-le v0, v5, :cond_1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v5, "time"

    invoke-virtual {v1, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "times"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "log.requst"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JSONException on put "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    invoke-direct {p0}, Ljzd$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-static {}, Lkbd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Ljzd$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "net"

    iget-object v2, p0, Ljzd$c;->i:Ljzd;

    invoke-static {v2}, Ljzd;->a(Ljzd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljzd$c;->a:Ljava/lang/String;

    iget-object v2, p0, Ljzd$c;->e:Ljava/io/File;

    const-string/jumbo v3, "file"

    invoke-static {v1, v0, v2, v3}, Ljvn;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzd$c;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x3

    iget-boolean v0, p0, Ljzd$c;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Ljzd$c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljzd$c;->f:I

    iget v0, p0, Ljzd$c;->f:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljzd$c;->i:Ljzd;

    invoke-static {v0}, Ljzd;->b(Ljzd;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Ljzd$c;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Ljzd$c;->f:I

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Ljzd$c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Ljzd$c;->i:Ljzd;

    const/4 v1, 0x1

    iget v2, p0, Ljzd$c;->f:I

    shl-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Ljzd;->a(Ljzd;J)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Ljzd$c;->i:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljvn;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljzd$c;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljzd$c;->i:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
