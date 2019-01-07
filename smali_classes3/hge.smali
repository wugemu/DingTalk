.class public Lhge;
.super Ljava/lang/Object;
.source "BeaconStatRepo.java"

# interfaces
.implements Lhgd$a;


# static fields
.field private static volatile e:Lhge;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
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

.field private final d:Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lhge;->e:Lhge;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhge;->b:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhge;->c:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhge;->a:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhge;->f:Ljava/util/List;

    .line 47
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lhge;->g:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 61
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    iput-object v0, p0, Lhge;->d:Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    .line 62
    return-void
.end method

.method static synthetic a(Lhge;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lhge;

    .prologue
    .line 33
    iget-object v0, p0, Lhge;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lhij;)Lorg/altbeacon/beacon/Region;
    .locals 7
    .param p1, "model"    # Lhij;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 154
    if-eqz p1, :cond_2

    .line 156
    :try_start_0
    iget-object v5, p1, Lhij;->a:Ljava/lang/String;

    invoke-static {v5}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    .line 157
    .local v1, "id1":Lorg/altbeacon/beacon/Identifier;
    iget-object v5, p1, Lhij;->b:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    .line 158
    .local v2, "id2":Lorg/altbeacon/beacon/Identifier;
    iget-object v5, p1, Lhij;->c:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v3

    .line 159
    .local v3, "id3":Lorg/altbeacon/beacon/Identifier;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p1, Lhij;->a:Ljava/lang/String;

    .line 160
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p1, Lhij;->b:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p1, Lhij;->c:Ljava/lang/Integer;

    .line 161
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "uniqueId":Ljava/lang/String;
    iget-object v5, p0, Lhge;->c:Ljava/util/Map;

    iget-object v6, p1, Lhij;->d:Ljava/lang/String;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v5, p1, Lhij;->e:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, p0, Lhge;->a:Ljava/util/Map;

    iget-object v6, p1, Lhij;->e:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    new-instance v5, Lorg/altbeacon/beacon/Region;

    invoke-direct {v5, v4, v1, v2, v3}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    .line 180
    .end local v1    # "id1":Lorg/altbeacon/beacon/Identifier;
    .end local v2    # "id2":Lorg/altbeacon/beacon/Identifier;
    .end local v3    # "id3":Lorg/altbeacon/beacon/Identifier;
    .end local v4    # "uniqueId":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 166
    .restart local v1    # "id1":Lorg/altbeacon/beacon/Identifier;
    .restart local v2    # "id2":Lorg/altbeacon/beacon/Identifier;
    .restart local v3    # "id3":Lorg/altbeacon/beacon/Identifier;
    .restart local v4    # "uniqueId":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lhge;->a:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v1    # "id1":Lorg/altbeacon/beacon/Identifier;
    .end local v2    # "id2":Lorg/altbeacon/beacon/Identifier;
    .end local v3    # "id3":Lorg/altbeacon/beacon/Identifier;
    .end local v4    # "uniqueId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 173
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lhge;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lhge;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-static {p1}, Lhge;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhij;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lhij;>;"
    if-eqz p0, :cond_1

    .line 96
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhij;

    .line 99
    .local v3, "model":Lhij;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v1, "js":Lorg/json/JSONObject;
    const-string/jumbo v5, "uuid"

    iget-object v6, v3, Lhij;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v5, "major"

    iget-object v6, v3, Lhij;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v5, "minor"

    iget-object v6, v3, Lhij;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v5, "atContext"

    iget-object v6, v3, Lhij;->d:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1    # "js":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "model":Lhij;
    :cond_0
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v4

    const-string/jumbo v5, "light_monitor_list"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v4, 0x1

    .line 112
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lhge;)Lcom/alibaba/doraemon/statistics/Statistics;
    .locals 1
    .param p0, "x0"    # Lhge;

    .prologue
    .line 33
    iget-object v0, p0, Lhge;->g:Lcom/alibaba/doraemon/statistics/Statistics;

    return-object v0
.end method

.method static synthetic b(Lhge;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "x0"    # Lhge;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    .line 2145
    iget-object v0, p0, Lhge;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2146
    if-eqz p1, :cond_0

    .line 2147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhij;

    .line 2148
    iget-object v2, p0, Lhge;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lhge;->a(Lhij;)Lorg/altbeacon/beacon/Region;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2150
    :cond_0
    iget-object v0, p0, Lhge;->b:Ljava/util/List;

    .line 33
    return-object v0
.end method

.method static synthetic c(Lhge;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lhge;

    .prologue
    .line 33
    invoke-static {}, Lhge;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lhge;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lhge;->e:Lhge;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lhge;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lhge;->e:Lhge;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lhge;

    invoke-direct {v0}, Lhge;-><init>()V

    sput-object v0, Lhge;->e:Lhge;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lhge;->e:Lhge;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static e()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhij;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v8

    const-string/jumbo v9, "light_monitor_list"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lcnh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "s":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v6, "models":Ljava/util/List;, "Ljava/util/List<Lhij;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 123
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 125
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 126
    .local v2, "js":Lorg/json/JSONObject;
    new-instance v5, Lhij;

    invoke-direct {v5}, Lhij;-><init>()V

    .line 127
    .local v5, "model":Lhij;
    const-string/jumbo v8, "uuid"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lhij;->a:Ljava/lang/String;

    .line 128
    const-string/jumbo v8, "major"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lhij;->b:Ljava/lang/Integer;

    .line 129
    const-string/jumbo v8, "minor"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lhij;->c:Ljava/lang/Integer;

    .line 130
    const-string/jumbo v8, "atContext"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lhij;->d:Ljava/lang/String;

    .line 131
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v2    # "js":Lorg/json/JSONObject;
    .end local v5    # "model":Lhij;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 137
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "len":I
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 213
    .local p1, "beacons":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/altbeacon/beacon/Beacon;>;"
    iget-object v3, p0, Lhge;->f:Ljava/util/List;

    monitor-enter v3

    .line 214
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "waitForAdd":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 217
    .local v0, "b":Lorg/altbeacon/beacon/Beacon;
    iget-object v4, p0, Lhge;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0    # "b":Lorg/altbeacon/beacon/Beacon;
    .end local v1    # "waitForAdd":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 222
    .restart local v1    # "waitForAdd":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lhge;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    .end local v1    # "waitForAdd":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    :cond_2
    iget-object v2, p0, Lhge;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lhge;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lhge;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 237
    iget-object v1, p0, Lhge;->f:Ljava/util/List;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lhge;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lhgd$a$a;)V
    .locals 2
    .param p1, "callback"    # Lhgd$a$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lhge;->d:Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    new-instance v1, Lhge$1;

    invoke-direct {v1, p0, p1}, Lhge$1;-><init>(Lhge;Lhgd$a$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;->listMonitorBeacon(Liyv;)V

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/String;Lcmi;)V
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcmi",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 230
    .local p2, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-object v2, p0, Lhge;->f:Ljava/util/List;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v3, p0, Lhge;->d:Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    iget-object v4, p0, Lhge;->f:Ljava/util/List;

    .line 1256
    const/4 v0, 0x0

    .line 1257
    if-eqz v4, :cond_1

    .line 1258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 1260
    const-string/jumbo v5, ""

    invoke-static {v0, p1, v5}, Lhii;->a(Lorg/altbeacon/beacon/Beacon;Ljava/lang/String;Ljava/lang/String;)Lhii;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    .line 231
    :cond_1
    :try_start_1
    invoke-interface {v3, v0, p2}, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;->bindBeacons(Ljava/util/List;Liyv;)V

    .line 232
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lhge;->f:Ljava/util/List;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lhge;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lhge;->f:Ljava/util/List;

    return-object v0
.end method
