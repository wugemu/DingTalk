.class public final Lhgs;
.super Lhgk;
.source "UniPluginManager.java"


# instance fields
.field private a:Lhgt;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lhgk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lhgk;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Lhgt;

    invoke-direct {v0}, Lhgt;-><init>()V

    iput-object v0, p0, Lhgs;->a:Lhgt;

    .line 31
    return-void
.end method

.method static synthetic a(Lhgs;Lhgk;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/JSONObject;Lhgo;)V
    .locals 3
    .param p0, "x0"    # Lhgs;
    .param p1, "x1"    # Lhgk;
    .param p2, "x2"    # Ljava/lang/reflect/Method;
    .param p3, "x3"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "x4"    # Lhgo;

    .prologue
    const/4 v2, 0x2

    .line 17
    .line 1191
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1195
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Lhgo;->a(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lhgk;
    .locals 6
    .param p1, "pluginName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 146
    iget-object v5, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhgk;

    .line 148
    .local v4, "target":Lhgk;
    if-nez v4, :cond_3

    .line 149
    monitor-enter p0

    .line 150
    if-nez v4, :cond_2

    .line 151
    :try_start_0
    iget-object v5, p0, Lhgs;->a:Lhgt;

    .line 1019
    iget-object v5, v5, Lhgt;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 152
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    if-nez v1, :cond_0

    .line 153
    const/4 v5, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    :goto_0
    return-object v5

    .line 157
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 159
    .local v3, "pluginClass":Ljava/lang/Class;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lhgk;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :goto_1
    if-eqz v4, :cond_1

    .line 164
    :try_start_3
    invoke-virtual {v4}, Lhgk;->onInitialize()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .end local v3    # "pluginClass":Ljava/lang/Class;
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 171
    :try_start_4
    iget-object v5, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    :cond_2
    monitor-exit p0

    :cond_3
    move-object v5, v4

    .line 177
    goto :goto_0

    .line 166
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 174
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lhgk;>;"
    .restart local v3    # "pluginClass":Ljava/lang/Class;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    iget-object v1, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgk;

    .line 93
    .local v0, "p":Lhgk;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lhgk;->a()V

    goto :goto_0

    .line 97
    .end local v0    # "p":Lhgk;
    :cond_1
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 137
    iget-object v1, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgk;

    .line 138
    .local v0, "p":Lhgk;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lhgk;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 142
    .end local v0    # "p":Lhgk;
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgk;

    .line 102
    .local v0, "p":Lhgk;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lhgk;->b()V

    goto :goto_0

    .line 106
    .end local v0    # "p":Lhgk;
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 110
    iget-object v1, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgk;

    .line 111
    .local v0, "p":Lhgk;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lhgk;->c()V

    goto :goto_0

    .line 115
    .end local v0    # "p":Lhgk;
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgk;

    .line 120
    .local v0, "p":Lhgk;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lhgk;->d()V

    goto :goto_0

    .line 124
    .end local v0    # "p":Lhgk;
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Lhgs;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgk;

    .line 129
    .local v0, "p":Lhgk;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lhgk;->e()V

    goto :goto_0

    .line 133
    .end local v0    # "p":Lhgk;
    :cond_1
    return-void
.end method
