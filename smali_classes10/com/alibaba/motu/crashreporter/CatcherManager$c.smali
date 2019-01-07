.class public final Lcom/alibaba/motu/crashreporter/CatcherManager$c;
.super Ljava/lang/Object;
.source "CatcherManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/crashreporter/CatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field volatile a:Z

.field b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lhtu;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

.field d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field e:Landroid/content/Context;

.field final synthetic f:Lcom/alibaba/motu/crashreporter/CatcherManager;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/alibaba/motu/crashreporter/CatcherManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/motu/crashreporter/CatcherManager;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 167
    new-instance v0, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    invoke-direct {v0, v1}, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager;)V

    iput-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->c:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 26
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "ignore"    # Z

    .prologue
    .line 216
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v19, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 218
    const-string/jumbo v4, "REPORT_IGNORE"

    const-string/jumbo v5, "true"

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v4, v4, Lcom/alibaba/motu/crashreporter/CatcherManager;->d:Lhtd;

    const-string/jumbo v5, "Configuration.enableExternalLinster"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->c:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    invoke-virtual {v4}, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/motu/crashreporter/CatcherManager$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    .local v24, "linster":Lcom/alibaba/motu/crashreporter/CatcherManager$d;
    :try_start_1
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/motu/crashreporter/CatcherManager$d;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v21

    .line 227
    .local v21, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "call linster onUncaughtException"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 250
    .end local v21    # "e":Ljava/lang/Throwable;
    .end local v24    # "linster":Lcom/alibaba/motu/crashreporter/CatcherManager$d;
    :catch_1
    move-exception v21

    .line 251
    .restart local v21    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "externalData"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .end local v21    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v0, v4, Lcom/alibaba/motu/crashreporter/CatcherManager;->f:Lhtm;

    move-object/from16 v25, v0

    .line 1053
    invoke-virtual/range {v25 .. v25}, Lhtm;->c()V

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1055
    const-string/jumbo v8, "catch"

    .line 1056
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "REPORT_IGNORE"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1057
    const-string/jumbo v8, "ignore"

    .line 1059
    :cond_2
    move-object/from16 v0, v25

    iget-object v4, v0, Lhtm;->b:Lhtn;

    const-string/jumbo v5, "UTDID"

    invoke-virtual {v4, v5}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lhtm;->b:Lhtn;

    const-string/jumbo v5, "APP_KEY"

    .line 1060
    invoke-virtual {v4, v5}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lhtm;->b:Lhtn;

    const-string/jumbo v9, "APP_VERSION"

    .line 1061
    invoke-virtual {v5, v9}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "java"

    .line 1059
    invoke-static/range {v4 .. v9}, Lhte;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1063
    move-object/from16 v0, v25

    iget-object v4, v0, Lhtm;->d:Lhtq;

    invoke-virtual {v4, v13}, Lhtq;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 1065
    new-instance v8, Lhtm$d;

    move-object/from16 v0, v25

    iget-object v10, v0, Lhtm;->a:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v11, v0, Lhtm;->b:Lhtn;

    move-object/from16 v0, v25

    iget-object v12, v0, Lhtm;->c:Lhtd;

    move-object/from16 v9, v25

    move-wide v14, v6

    move-object/from16 v17, p2

    move-object/from16 v18, p1

    invoke-direct/range {v8 .. v19}, Lhtm$d;-><init>(Lhtm;Landroid/content/Context;Lhtn;Lhtd;Ljava/lang/String;JLjava/io/File;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)V

    .line 1070
    invoke-virtual {v8}, Lhtm$d;->b()V

    .line 1071
    move-object/from16 v0, v25

    iget-object v4, v0, Lhtm;->a:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v5, v0, Lhtm;->b:Lhtn;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5, v6}, Lhte;->a(Landroid/content/Context;Ljava/io/File;Lhtn;Z)Lhte;

    move-result-object v20

    .line 254
    .local v20, "crashReport":Lhte;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v4, v4, Lcom/alibaba/motu/crashreporter/CatcherManager;->g:Lhtp;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lhtp;->a(Lhte;)V

    .line 255
    return-void

    .line 232
    .end local v20    # "crashReport":Lhte;
    :cond_3
    :try_start_3
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v4, v4, Lcom/alibaba/motu/crashreporter/CatcherManager;->d:Lhtd;

    const-string/jumbo v5, "Configuration.enableDumpHprof"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lhtd;->a(Ljava/lang/String;Z)Z

    .line 242
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->e:Landroid/content/Context;

    invoke-static {v4}, Lhtr;->a(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v22

    .line 243
    .local v22, "firstInstallTime":Ljava/lang/Long;
    if-eqz v22, :cond_5

    .line 244
    const-string/jumbo v4, "FIRST_INSTALL_TIME"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->e:Landroid/content/Context;

    invoke-static {v4}, Lhtr;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v23

    .line 247
    .local v23, "lastUpdateTime":Ljava/lang/Long;
    if-eqz v23, :cond_1

    .line 248
    const-string/jumbo v4, "LAST_UPDATE_TIME"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lhtu;)Z
    .locals 1
    .param p1, "ignore"    # Lhtu;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lhtu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 262
    .local v6, "start":J
    :try_start_0
    const-string/jumbo v8, "catch uncaught exception:%s on thread:%s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 263
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 262
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    invoke-static {p1}, Lhtr;->a(Ljava/lang/Thread;)Ljava/lang/Boolean;

    move-result-object v4

    .line 266
    .local v4, "isMainThread":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->f:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v8, v8, Lcom/alibaba/motu/crashreporter/CatcherManager;->d:Lhtd;

    const-string/jumbo v9, "Configuration.enableUncaughtExceptionIgnore"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    .line 267
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    .line 268
    iget-object v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhtu;

    .line 269
    .local v1, "ignore":Lhtu;
    invoke-interface {v1, p1, p2}, Lhtu;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 271
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v1    # "ignore":Lhtu;
    .end local v4    # "isMainThread":Ljava/lang/Boolean;
    :cond_1
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "ignore uncaught exception."

    invoke-static {v8, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v8

    if-ne v12, v8, :cond_3

    .line 283
    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, v8}, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 292
    .local v2, "end":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "catch uncaught exception complete elapsed time:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v8, :cond_1

    .line 295
    iget-object v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v8, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    .end local v2    # "end":J
    :cond_3
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "uncaught exception count: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 287
    :catch_1
    move-exception v5

    .line 288
    .local v5, "tw":Ljava/lang/Throwable;
    const-string/jumbo v8, "uncaught exception."

    invoke-static {v8, v5}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
