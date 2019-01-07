.class public final Lhib;
.super Ljava/lang/Object;
.source "HpmDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhib$a;
    }
.end annotation


# instance fields
.field a:Lhif;

.field public b:Lhib$a;

.field c:Ljava/util/concurrent/Executor;

.field d:J

.field private e:Landroid/content/Context;

.field private f:Lcom/alibaba/lightapp/runtime/idl/HpmIService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhib;->d:J

    .line 53
    iput-object p1, p0, Lhib;->e:Landroid/content/Context;

    .line 54
    new-instance v0, Lhib$a;

    iget-object v1, p0, Lhib;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lhib$a;-><init>(Lhib;Landroid/content/Context;)V

    iput-object v0, p0, Lhib;->b:Lhib$a;

    .line 55
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    iput-object v0, p0, Lhib;->f:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    .line 56
    iput-object p2, p0, Lhib;->c:Ljava/util/concurrent/Executor;

    .line 57
    return-void
.end method

.method public static a(JLjava/lang/String;)Lhjd;
    .locals 2
    .param p0, "hpmVersion"    # J
    .param p2, "testAppId"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lhjd;

    invoke-direct {v0}, Lhjd;-><init>()V

    .line 249
    .local v0, "model":Lhjd;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lhjd;->a:Ljava/lang/Long;

    .line 250
    const-string/jumbo v1, "hpm_user"

    iput-object v1, v0, Lhjd;->b:Ljava/lang/String;

    .line 251
    iput-object p2, v0, Lhjd;->c:Ljava/lang/String;

    .line 252
    return-object v0
.end method

.method static synthetic a(Lhib;Lhjc;Z)V
    .locals 11
    .param p0, "x0"    # Lhib;
    .param p1, "x1"    # Lhjc;
    .param p2, "x2"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    .line 1183
    if-eqz p1, :cond_6

    .line 1184
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v3, "getHpmConf success: new version - "

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lhjc;->a:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string/jumbo v3, ", local version - "

    aput-object v3, v0, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lhib;->b:Lhib$a;

    .line 1276
    iget-wide v4, v4, Lhib$a;->a:J

    .line 1185
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 1193
    iget-object v0, p1, Lhjc;->a:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 1194
    iget-object v0, p0, Lhib;->b:Lhib$a;

    .line 2276
    iget-wide v4, v0, Lhib$a;->a:J

    .line 1194
    iget-object v0, p1, Lhjc;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    .line 1195
    iget-object v0, p0, Lhib;->b:Lhib$a;

    iget-object v3, p1, Lhjc;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3276
    iput-wide v4, v0, Lhib$a;->a:J

    move v0, v1

    .line 1199
    :goto_0
    iget-object v3, p1, Lhjc;->b:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lhjc;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1200
    iget-object v0, p1, Lhjc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjb;

    .line 1201
    if-eqz v0, :cond_0

    iget-object v4, v0, Lhjb;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1202
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "getHpmConf success: hpminfo - "

    aput-object v5, v4, v2

    iget-object v5, v0, Lhjb;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string/jumbo v5, ", "

    aput-object v5, v4, v8

    iget-object v5, v0, Lhjb;->i:Ljava/lang/String;

    aput-object v5, v4, v9

    .line 1203
    if-eqz p2, :cond_1

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "app["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lhjb;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lhjb;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lhjb;->l:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1206
    :cond_1
    iget-object v4, p0, Lhib;->b:Lhib$a;

    .line 4276
    iget-object v4, v4, Lhib$a;->b:Ljava/util/Map;

    .line 1206
    iget-object v5, v0, Lhjb;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1212
    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1213
    iget-object v0, p0, Lhib;->b:Lhib$a;

    .line 5276
    iget-object v0, v0, Lhib$a;->b:Ljava/util/Map;

    .line 1213
    if-eqz v0, :cond_4

    .line 1214
    iget-object v0, p0, Lhib;->b:Lhib$a;

    .line 6276
    iget-object v0, v0, Lhib$a;->b:Ljava/util/Map;

    .line 1214
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1215
    sget-object v6, Lhhz;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1216
    iget-object v6, p0, Lhib;->b:Lhib$a;

    .line 7276
    iget-object v6, v6, Lhib$a;->b:Ljava/util/Map;

    .line 1216
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjb;

    .line 1217
    new-instance v6, Lhic;

    invoke-direct {v6, v0}, Lhic;-><init>(Lhjb;)V

    .line 1218
    invoke-virtual {v6}, Lhic;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 1223
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 1229
    :cond_4
    iget-object v0, p0, Lhib;->a:Lhif;

    if-eqz v0, :cond_5

    .line 1230
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "sync: "

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    .line 1232
    iget-object v1, p0, Lhib;->a:Lhif;

    invoke-interface {v1, v0}, Lhif;->g(Ljava/lang/String;)V

    .line 1235
    :cond_5
    if-eqz v3, :cond_6

    .line 1236
    iget-object v0, p0, Lhib;->b:Lhib$a;

    .line 8276
    invoke-virtual {v0}, Lhib$a;->a()V

    .line 37
    :cond_6
    return-void

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lhjd;Z)V
    .locals 2
    .param p1, "topicModel"    # Lhjd;
    .param p2, "toast"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lhib;->f:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lhib;->f:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    new-instance v1, Lhib$1;

    invoke-direct {v1, p0, p2}, Lhib$1;-><init>(Lhib;Z)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/idl/HpmIService;->getHpmConf(Lhjd;Liyv;)V

    .line 179
    :cond_0
    return-void
.end method
