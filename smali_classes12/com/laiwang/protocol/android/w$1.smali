.class Lcom/laiwang/protocol/android/w$1;
.super Ljava/lang/Object;
.source "Transmission.java"

# interfaces
.implements Lcom/laiwang/protocol/android/bm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/w;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Landroid/content/Context;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/w;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/w;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/laiwang/protocol/android/w$1;->a:Lcom/laiwang/protocol/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "vipServer"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    new-instance v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;-><init>()V

    .line 77
    .local v0, "info":Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
    iput-object p1, v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->url:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/laiwang/protocol/android/w$1;->a:Lcom/laiwang/protocol/android/w;

    iget-object v2, v2, Lcom/laiwang/protocol/android/w;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/NetworkListener;

    .line 79
    .local v1, "listener":Lcom/laiwang/protocol/android/NetworkListener;
    invoke-interface {v1, v0}, Lcom/laiwang/protocol/android/NetworkListener;->onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V

    goto :goto_0

    .line 80
    .end local v1    # "listener":Lcom/laiwang/protocol/android/NetworkListener;
    :cond_0
    return-void
.end method
