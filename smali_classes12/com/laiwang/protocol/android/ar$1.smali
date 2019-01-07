.class Lcom/laiwang/protocol/android/ar$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/ar;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/laiwang/protocol/android/ar;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ar;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/ar;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/laiwang/protocol/android/ar$1;->b:Lcom/laiwang/protocol/android/ar;

    iput-object p3, p0, Lcom/laiwang/protocol/android/ar$1;->a:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v2, p0, Lcom/laiwang/protocol/android/ar$1;->b:Lcom/laiwang/protocol/android/ar;

    invoke-static {v2}, Lcom/laiwang/protocol/android/ar;->a(Lcom/laiwang/protocol/android/ar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/ConfigListener;

    .line 50
    .local v1, "listener":Lcom/laiwang/protocol/android/ConfigListener;
    :try_start_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/ar$1;->a:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/laiwang/protocol/android/ConfigListener;->onConfigChanged(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[Conf] conf listener notify err"

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/laiwang/protocol/android/ConfigListener;
    :cond_0
    return-void
.end method
