.class final Lgxa$1;
.super Ljava/lang/Object;
.source "TrackContentManager.java"

# interfaces
.implements Lpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgxa;


# direct methods
.method constructor <init>(Lgxa;)V
    .locals 0
    .param p1, "this$0"    # Lgxa;

    .prologue
    .line 128
    iput-object p1, p0, Lgxa$1;->a:Lgxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 131
    if-nez p2, :cond_0

    .line 132
    iget-object v4, p0, Lgxa$1;->a:Lgxa;

    .line 1025
    iget-object v5, v4, Lgxa;->d:Ljava/util/Map;

    .line 132
    monitor-enter v5

    .line 133
    :try_start_0
    iget-object v4, p0, Lgxa$1;->a:Lgxa;

    .line 2025
    iget-object v4, v4, Lgxa;->d:Ljava/util/Map;

    .line 133
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v5

    .line 157
    :goto_0
    return-void

    .line 134
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 140
    :cond_0
    :try_start_1
    const-string/jumbo v4, "success"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 141
    .local v2, "success":Z
    const-string/jumbo v4, "result"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 142
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v4, "width"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 143
    .local v3, "width":I
    const-string/jumbo v4, "height"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "height":I
    iget-object v4, p0, Lgxa$1;->a:Lgxa;

    .line 3025
    iget-object v5, v4, Lgxa;->d:Ljava/util/Map;

    .line 145
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    if-eqz v2, :cond_1

    :try_start_2
    iget-object v4, p0, Lgxa$1;->a:Lgxa;

    .line 4025
    iget-object v4, v4, Lgxa;->d:Ljava/util/Map;

    .line 146
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 147
    iget-object v4, p0, Lgxa$1;->a:Lgxa;

    .line 5025
    iget-object v4, v4, Lgxa;->d:Ljava/util/Map;

    .line 147
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgwz;

    .line 6016
    iput v3, v4, Lgwz;->c:I

    .line 6017
    iput v0, v4, Lgwz;->d:I

    .line 6018
    iput-object v1, v4, Lgwz;->a:Lorg/json/JSONObject;

    .line 151
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v0    # "height":I
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "success":Z
    .end local v3    # "width":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 149
    .restart local v0    # "height":I
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "success":Z
    .restart local v3    # "width":I
    :cond_1
    :try_start_4
    iget-object v4, p0, Lgxa$1;->a:Lgxa;

    .line 6025
    iget-object v4, v4, Lgxa;->d:Ljava/util/Map;

    .line 149
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
