.class final Lciw$a;
.super Ljava/lang/Object;
.source "RemoteSharedPreferencesProxy.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lciw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lciw;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lciw;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lciw$a;->a:Lciw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lciw$a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lciw;B)V
    .locals 0
    .param p1, "x0"    # Lciw;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lciw$a;-><init>(Lciw;)V

    return-void
.end method

.method private a()Landroid/os/Bundle;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v5

    .line 308
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v1, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 310
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    .line 1086
    .local v2, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 312
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v1    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v2    # "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 314
    .restart local v1    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v4, "key_value"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 315
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    return-object v0
.end method


# virtual methods
.method public final apply()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 293
    invoke-direct {p0}, Lciw$a;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lciw$a;->a:Lciw;

    invoke-static {v2}, Lciw;->b(Lciw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v4, "method_apply"

    iget-object v5, p0, Lciw$a;->a:Lciw;

    invoke-static {v5}, Lciw;->a(Lciw;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 296
    iget-object v3, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :try_start_1
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 298
    monitor-exit v3

    .line 303
    :goto_0
    return-void

    .line 298
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "remote sp apply failed:"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lciz;->a(Ljava/lang/String;Z)V

    .line 301
    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 268
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lciw$a;->b:Ljava/util/ArrayList;

    .line 1049
    new-instance v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_CLEAR:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;-><init>(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;)V

    .line 269
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v1

    .line 271
    return-object p0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final commit()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 276
    invoke-direct {p0}, Lciw$a;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v4, p0, Lciw$a;->a:Lciw;

    invoke-static {v4}, Lciw;->b(Lciw;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v6, "method_commit"

    iget-object v7, p0, Lciw$a;->a:Lciw;

    invoke-static {v7}, Lciw;->a(Lciw;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 279
    iget-object v5, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :try_start_1
    iget-object v4, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 281
    monitor-exit v5

    .line 287
    :goto_0
    return v2

    .line 281
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "remote sp commit failed:"

    aput-object v5, v4, v3

    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lciz;->a(Ljava/lang/String;Z)V

    .line 286
    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcja;->a(Ljava/lang/String;)V

    move v2, v3

    .line 287
    goto :goto_0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 250
    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_BOOLEAN:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v0

    .line 251
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Z)V

    .line 252
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v2

    .line 255
    return-object p0

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 240
    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_FLOAT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v0

    .line 241
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(F)V

    .line 242
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 243
    :try_start_0
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v2

    .line 245
    return-object p0

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_INTEGER:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v0

    .line 221
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(I)V

    .line 222
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v2

    .line 225
    return-object p0

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 230
    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_LONG:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v0

    .line 231
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(J)V

    .line 232
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v2

    .line 235
    return-object p0

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 200
    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v0

    .line 201
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v2

    .line 205
    return-object p0

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 210
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING_SET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v0

    .line 211
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Ljava/util/Set;)V

    .line 212
    iget-object v2, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 213
    :try_start_0
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v2

    .line 215
    return-object p0

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 260
    iget-object v1, p0, Lciw$a;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lciw$a;->b:Ljava/util/ArrayList;

    .line 1043
    new-instance v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_REMOVE:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;-><init>(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;)V

    .line 1044
    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v1

    .line 263
    return-object p0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
