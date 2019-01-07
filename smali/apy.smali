.class public Lapy;
.super Ljava/lang/Object;
.source "InstanceShowObjectDataCenter.java"


# static fields
.field private static volatile a:Lapy;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Latu;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapy;->b:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapy;->c:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapy;->d:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;-><init>()V

    iput-object v0, p0, Lapy;->e:Latu;

    .line 46
    return-void
.end method

.method static synthetic a(Lapy;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lapy;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;)J
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Lapy;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Lapy;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lapy;->a:Lapy;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lapy;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lapy;->a:Lapy;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lapy;

    invoke-direct {v0}, Lapy;-><init>()V

    sput-object v0, Lapy;->a:Lapy;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lapy;->a:Lapy;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lapy;)Latu;
    .locals 1
    .param p0, "x0"    # Lapy;

    .prologue
    .line 27
    iget-object v0, p0, Lapy;->e:Latu;

    return-object v0
.end method

.method static synthetic a(Lapy;Lasl;J)V
    .locals 8
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Lasl;
    .param p2, "x2"    # J

    .prologue
    const/4 v7, 0x0

    .line 27
    .line 2217
    if-eqz p1, :cond_0

    .line 3042
    iget-object v6, p1, Lasl;->a:Ljava/lang/String;

    .line 2222
    invoke-direct {p0, v6}, Lapy;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 2223
    cmp-long v0, v4, p2

    if-lez v0, :cond_0

    .line 2227
    invoke-direct {p0, v6, p2, p3}, Lapy;->a(Ljava/lang/String;J)V

    .line 2228
    iget-object v0, p0, Lapy;->e:Latu;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Latu;->a(Lasl;JJ)Ljava/util/List;

    move-result-object v1

    .line 2229
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2234
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    :cond_2
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2237
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[tryMakeUpLeftCache] makeUpLeftCache "

    aput-object v0, v2, v7

    const/4 v0, 0x1

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "\'s new cache size: "

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, ", add instanceShowObjects.size: "

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 2238
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 2237
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lapy;Lasl;JJ)V
    .locals 8
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Lasl;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    const/4 v7, 0x0

    .line 27
    .line 1191
    if-eqz p1, :cond_0

    .line 1195
    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    .line 2042
    iget-object v6, p1, Lasl;->a:Ljava/lang/String;

    .line 1200
    invoke-direct {p0, v6, p2, p3}, Lapy;->a(Ljava/lang/String;J)V

    .line 1201
    invoke-direct {p0, v6, p4, p5}, Lapy;->b(Ljava/lang/String;J)V

    .line 1203
    iget-object v0, p0, Lapy;->e:Latu;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Latu;->a(Lasl;JJ)Ljava/util/List;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1209
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_2
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1212
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[tryMakeUpCache] makeUpCache "

    aput-object v0, v2, v7

    const/4 v0, 0x1

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "\'s new cache size: "

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, ", add instanceShowObjects.size: "

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 1213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 1212
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lapy;Ljava/lang/String;JJ)V
    .locals 12
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 27
    .line 1123
    invoke-direct {p0, p1}, Lapy;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1124
    invoke-direct {p0, p1}, Lapy;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 1126
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    cmp-long v0, p4, v2

    if-gtz v0, :cond_3

    .line 1132
    :cond_2
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v0, p0, Lapy;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Lapy;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1138
    :cond_3
    const-wide v0, 0x30479e800L

    sub-long v6, p2, v0

    .line 1139
    const-wide v0, 0x30479e800L

    add-long v8, p4, v0

    .line 1141
    cmp-long v0, v2, v6

    if-ltz v0, :cond_4

    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    .line 1146
    :cond_4
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1147
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1152
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1154
    if-eqz v0, :cond_5

    .line 1157
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-ltz v10, :cond_6

    .line 1158
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-ltz v0, :cond_5

    .line 1159
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1163
    :cond_7
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lapy;->a(Ljava/lang/String;J)V

    .line 1164
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lapy;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "beginMillis"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lapy;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method static synthetic b(Lapy;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lapy;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/lang/String;)J
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 314
    iget-object v0, p0, Lapy;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lapy;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 6
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 27
    .line 2168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2171
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 2172
    :goto_0
    return-object v0

    .line 2175
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 2176
    if-eqz v0, :cond_2

    .line 2179
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, p4

    if-gez v3, :cond_2

    .line 2180
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-ltz v3, :cond_2

    .line 2183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2186
    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[getInstancesFromCache] folderId: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", size: "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    move-object v0, v1

    .line 27
    goto :goto_0
.end method

.method static synthetic b(Lapy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lapy;

    .prologue
    .line 27
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lapy;Lasl;J)V
    .locals 8
    .param p0, "x0"    # Lapy;
    .param p1, "x1"    # Lasl;
    .param p2, "x2"    # J

    .prologue
    .line 27
    .line 3242
    if-eqz p1, :cond_0

    .line 4042
    iget-object v6, p1, Lasl;->a:Ljava/lang/String;

    .line 3247
    invoke-direct {p0, v6}, Lapy;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 3248
    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    .line 3252
    invoke-direct {p0, v6, p2, p3}, Lapy;->b(Ljava/lang/String;J)V

    .line 3253
    iget-object v0, p0, Lapy;->e:Latu;

    move-object v1, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Latu;->a(Lasl;JJ)Ljava/util/List;

    move-result-object v1

    .line 3254
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    :cond_0
    :goto_0
    return-void

    .line 3258
    :cond_1
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3259
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3261
    :cond_2
    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3262
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "[tryMakeUpRightCache] makeUpRightCache "

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "\'s new cache size: "

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lapy;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, ", add instanceShowObjects.size: "

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 3263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 3262
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;J)V
    .locals 2
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "endMillis"    # J

    .prologue
    .line 310
    iget-object v0, p0, Lapy;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method static synthetic c(Lapy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lapy;

    .prologue
    .line 27
    iget-object v0, p0, Lapy;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lapy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lapy;

    .prologue
    .line 27
    iget-object v0, p0, Lapy;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 267
    .local p1, "folderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lapy$2;

    invoke-direct {v1, p0, p1}, Lapy$2;-><init>(Lapy;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 290
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lapy$3;

    invoke-direct {v1, p0}, Lapy$3;-><init>(Lapy;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method
