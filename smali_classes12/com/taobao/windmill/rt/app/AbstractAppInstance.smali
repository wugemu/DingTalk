.class public abstract Lcom/taobao/windmill/rt/app/AbstractAppInstance;
.super Ljava/lang/Object;
.source "AbstractAppInstance.java"

# interfaces
.implements Ljrs;
.implements Ljrz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field protected c:Ljrz$a;

.field protected d:Ljse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljpk;

.field private g:Ljrz$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string/jumbo v0, "wml_"

    invoke-direct {p0, p1, v0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->b:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "x0"    # Lcom/taobao/windmill/rt/app/AbstractAppInstance;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 32
    .line 3133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3135
    const-string/jumbo v2, "lifecycle"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    const-string/jumbo v2, "options"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "LIFECYCLE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    const-string/jumbo v2, "result"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, "AppWorker"

    .line 3141
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    .line 4107
    iget-object v2, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a:Ljava/lang/String;

    .line 3141
    invoke-virtual {v1, v2, p1, v0}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljpk;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->f:Ljpk;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljry;
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljrk;)V
    .locals 3
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "event"    # Ljrk;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "EVENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "result"

    .line 2046
    iget-object v2, p2, Ljrk;->a:Ljava/util/Map;

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo p1, "AppWorker"

    .line 92
    :cond_0
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    .line 2107
    iget-object v2, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v2, p1, v0}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public final a(Ljpk;)V
    .locals 0
    .param p1, "processor"    # Ljpk;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->f:Ljpk;

    .line 54
    return-void
.end method

.method public final a(Ljrk;)V
    .locals 4
    .param p1, "event"    # Ljrk;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v0, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "EVENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v1, "result"

    .line 1046
    iget-object v2, p1, Ljrk;->a:Ljava/util/Map;

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    .line 1107
    iget-object v2, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a:Ljava/lang/String;

    .line 79
    const-string/jumbo v3, "Global"

    invoke-virtual {v1, v2, v3, v0}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public final a(Ljse;)V
    .locals 0
    .param p1, "pagePerformance"    # Ljse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    iput-object p1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->d:Ljse;

    .line 130
    return-void
.end method

.method public final a(Ljsp$a;)V
    .locals 1
    .param p1, "listener"    # Ljsp$a;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->j()Ljrj;

    move-result-object v0

    .line 122
    .local v0, "dummyInstance":Ljrj;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1}, Ljrj;->a(Ljsp$a;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljrz$a;
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->c:Ljrz$a;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;

    invoke-direct {v0, p0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;-><init>(Lcom/taobao/windmill/rt/app/AbstractAppInstance;)V

    iput-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->c:Ljrz$a;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->c:Ljrz$a;

    return-object v0
.end method

.method public final e()Ljrz$b;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g:Ljrz$b;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;

    invoke-direct {v0, p0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;-><init>(Lcom/taobao/windmill/rt/app/AbstractAppInstance;)V

    iput-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g:Ljrz$b;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g:Ljrz$b;

    return-object v0
.end method

.method protected final f()V
    .locals 10
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 3062
    iget-object v8, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->b:Landroid/content/Context;

    .line 230
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Ljri$a;->available_modules:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 238
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 240
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    new-instance v6, Lfk;

    invoke-direct {v6}, Lfk;-><init>()V

    .line 241
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "type"

    const-string/jumbo v8, "registerModules"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v7, "data"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v4, Lfk;

    invoke-direct {v4}, Lfk;-><init>()V

    .line 244
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "EVENT"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v7, "result"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v7

    .line 3107
    iget-object v8, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a:Ljava/lang/String;

    .line 248
    const-string/jumbo v9, "AppWorker"

    invoke-virtual {v7, v8, v9, v4}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 252
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public abstract g()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljry;",
            ">;"
        }
    .end annotation
.end method
