.class Lcom/laiwang/protocol/android/w$b;
.super Lcom/laiwang/protocol/android/bu$a;
.source "Transmission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/laiwang/protocol/android/w$c;

.field b:Ljava/lang/Throwable;

.field c:Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

.field final synthetic d:Lcom/laiwang/protocol/android/w;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/w;
    .param p2, "notifyType"    # Lcom/laiwang/protocol/android/w$c;
    .param p3, "info"    # Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/laiwang/protocol/android/w$b;->d:Lcom/laiwang/protocol/android/w;

    .line 265
    const-string/jumbo v0, "notify"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 266
    iput-object p4, p0, Lcom/laiwang/protocol/android/w$b;->b:Ljava/lang/Throwable;

    .line 267
    iput-object p3, p0, Lcom/laiwang/protocol/android/w$b;->c:Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    .line 268
    iput-object p2, p0, Lcom/laiwang/protocol/android/w$b;->a:Lcom/laiwang/protocol/android/w$c;

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iget-object v3, p0, Lcom/laiwang/protocol/android/w$b;->d:Lcom/laiwang/protocol/android/w;

    iget-object v3, v3, Lcom/laiwang/protocol/android/w;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/laiwang/protocol/android/NetworkListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/NetworkListener;

    .line 277
    .local v2, "listener":Lcom/laiwang/protocol/android/NetworkListener;
    :try_start_0
    sget-object v3, Lcom/laiwang/protocol/android/w$4;->a:[I

    iget-object v4, p0, Lcom/laiwang/protocol/android/w$b;->a:Lcom/laiwang/protocol/android/w$c;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/w$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    invoke-interface {v2}, Lcom/laiwang/protocol/android/NetworkListener;->onConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "[Tran] network listener notify err"

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    new-instance v3, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/laiwang/protocol/android/w$b;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/laiwang/protocol/android/NetworkListener;->onDisconnected(Ljava/lang/Exception;)V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-interface {v2}, Lcom/laiwang/protocol/android/NetworkListener;->onNetworkUnavailable()V

    goto :goto_0

    .line 288
    :pswitch_3
    new-instance v3, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/laiwang/protocol/android/w$b;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 291
    :pswitch_4
    instance-of v3, v2, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;

    if-eqz v3, :cond_0

    .line 292
    invoke-interface {v2}, Lcom/laiwang/protocol/android/NetworkListener;->onNetworkConnected()V

    goto :goto_0

    .line 295
    :pswitch_5
    iget-object v3, p0, Lcom/laiwang/protocol/android/w$b;->c:Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    invoke-interface {v2, v3}, Lcom/laiwang/protocol/android/NetworkListener;->onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    .end local v2    # "listener":Lcom/laiwang/protocol/android/NetworkListener;
    :cond_1
    return-void

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
