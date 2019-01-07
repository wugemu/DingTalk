.class public Lare;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"


# static fields
.field private static volatile f:Lare;


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laro;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laro;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lats;

.field private e:Latq;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lare;->a:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lare;->b:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lare;->c:Ljava/util/Map;

    .line 47
    new-instance v0, Latr;

    invoke-direct {v0}, Latr;-><init>()V

    iput-object v0, p0, Lare;->e:Latq;

    .line 48
    new-instance v0, Latt;

    invoke-direct {v0}, Latt;-><init>()V

    iput-object v0, p0, Lare;->d:Lats;

    .line 49
    return-void
.end method

.method public static a()Lare;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lare;->f:Lare;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lare;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lare;->f:Lare;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lare;

    invoke-direct {v0}, Lare;-><init>()V

    sput-object v0, Lare;->f:Lare;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lare;->f:Lare;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lare;)V
    .locals 0
    .param p0, "x0"    # Lare;

    .prologue
    .line 35
    invoke-direct {p0}, Lare;->b()V

    return-void
.end method

.method static synthetic a(Lare;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "x0"    # Lare;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 35
    .line 4250
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    new-instance v1, Lare$5;

    invoke-direct {v1, p0, p1}, Lare$5;-><init>(Lare;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcma;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lare;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lare;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-static {p1}, Lare;->a(Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laro;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "folders":Ljava/util/List;, "Ljava/util/List<Laro;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[AliMailFolderManager]traceShareFolders size:"

    aput-object v1, v2, v4

    if-nez p0, :cond_1

    const-string/jumbo v1, "0"

    .line 202
    :goto_0
    aput-object v1, v2, v5

    .line 201
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 204
    if-nez p0, :cond_2

    .line 213
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 209
    .local v0, "folderObject":Laro;
    if-eqz v0, :cond_3

    .line 210
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "[AliMailFolderManager]traceShareFolders, folder:"

    aput-object v3, v2, v4

    invoke-virtual {v0}, Laro;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lare;Z)Z
    .locals 1
    .param p0, "x0"    # Lare;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lare;->a:Z

    return v0
.end method

.method static synthetic b(Lare;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lare;

    .prologue
    .line 35
    iget-object v0, p0, Lare;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-boolean v0, p0, Lare;->a:Z

    if-eqz v0, :cond_8

    .line 1137
    iget-object v0, p0, Lare;->e:Latq;

    invoke-interface {v0}, Latq;->a()Ljava/util/List;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lare;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1140
    iget-object v1, p0, Lare;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1142
    iget-object v0, p0, Lare;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1143
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[AliMailFolderManager]load from db, size:"

    aput-object v1, v0, v4

    iget-object v1, p0, Lare;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lare;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1149
    iget-object v0, p0, Lare;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 1150
    if-eqz v0, :cond_0

    .line 1151
    iget-object v2, p0, Lare;->c:Ljava/util/Map;

    .line 2027
    iget-object v3, v0, Laro;->a:Ljava/lang/String;

    .line 1151
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2157
    :cond_1
    iget-object v0, p0, Lare;->d:Lats;

    invoke-interface {v0}, Lats;->a()Ljava/util/List;

    move-result-object v2

    .line 2186
    iget-object v0, p0, Lare;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 2188
    if-eqz v0, :cond_2

    .line 2192
    invoke-virtual {v0}, Laro;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2160
    :goto_1
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[AliMailFolderManager] fillSelectStatus mainAccountFolder="

    aput-object v1, v3, v4

    if-nez v0, :cond_6

    const-string/jumbo v1, ""

    :goto_2
    aput-object v1, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 2161
    if-eqz v0, :cond_3

    .line 3079
    iput-boolean v5, v0, Laro;->g:Z

    .line 2167
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larp;

    .line 2168
    if-eqz v0, :cond_4

    .line 2172
    iget-object v1, p0, Lare;->c:Ljava/util/Map;

    .line 4021
    iget-object v3, v0, Larp;->a:Ljava/lang/String;

    .line 2172
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laro;

    .line 2173
    if-eqz v1, :cond_4

    .line 4025
    iget-boolean v3, v0, Larp;->b:Z

    .line 4079
    iput-boolean v3, v1, Laro;->g:Z

    .line 2178
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "[AliMailFolderManager]fillSelectStatus "

    aput-object v3, v1, v4

    invoke-virtual {v0}, Larp;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_3

    .line 2197
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 2160
    :cond_6
    invoke-virtual {v0}, Laro;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 131
    :cond_7
    iget-object v0, p0, Lare;->b:Ljava/util/List;

    invoke-static {v0}, Lare;->a(Ljava/util/List;)V

    .line 132
    iput-boolean v4, p0, Lare;->a:Z

    .line 134
    :cond_8
    return-void
.end method

.method static synthetic b(Lare;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lare;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lare;->b(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic c(Lare;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lare;

    .prologue
    .line 35
    iget-object v0, p0, Lare;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lare;)Lats;
    .locals 1
    .param p0, "x0"    # Lare;

    .prologue
    .line 35
    iget-object v0, p0, Lare;->d:Lats;

    return-object v0
.end method

.method static synthetic e(Lare;)Latq;
    .locals 1
    .param p0, "x0"    # Lare;

    .prologue
    .line 35
    iget-object v0, p0, Lare;->e:Latq;

    return-object v0
.end method

.method static synthetic f(Lare;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lare;

    .prologue
    .line 35
    .line 4335
    invoke-direct {p0}, Lare;->b()V

    .line 4336
    iget-object v0, p0, Lare;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4340
    iget-object v0, p0, Lare;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 4341
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laro;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5035
    iget-object v0, v0, Laro;->b:Ljava/lang/String;

    .line 4342
    :goto_0
    return-object v0

    .line 4346
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 310
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    new-instance v1, Lare$6;

    invoke-direct {v1, p0, p1}, Lare$6;-><init>(Lare;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcma;)V

    .line 331
    return-void
.end method

.method public b(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Laro;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 381
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Laro;>;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lare$9;

    invoke-direct {v1, p0, p1}, Lare$9;-><init>(Lare;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->b(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method
