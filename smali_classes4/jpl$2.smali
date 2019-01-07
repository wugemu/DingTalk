.class public final Ljpl$2;
.super Ljava/lang/Object;
.source "WMLBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljpl$a;

.field final synthetic e:Ljpl;


# direct methods
.method public constructor <init>(Ljpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljpl$a;)V
    .locals 0
    .param p1, "this$0"    # Ljpl;

    .prologue
    .line 82
    iput-object p1, p0, Ljpl$2;->e:Ljpl;

    iput-object p2, p0, Ljpl$2;->a:Ljava/lang/String;

    iput-object p3, p0, Ljpl$2;->b:Ljava/lang/String;

    iput-object p4, p0, Ljpl$2;->c:Ljava/util/Map;

    iput-object p5, p0, Ljpl$2;->d:Ljpl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 86
    .local v4, "start":J
    iget-object v6, p0, Ljpl$2;->e:Ljpl;

    invoke-static {v6}, Ljpl;->a(Ljpl;)Lcom/taobao/windmill/bridge/WMLBridge;

    move-result-object v6

    iget-object v7, p0, Ljpl$2;->a:Ljava/lang/String;

    iget-object v8, p0, Ljpl$2;->b:Ljava/lang/String;

    iget-object v9, p0, Ljpl$2;->c:Ljava/util/Map;

    invoke-virtual {v6, v7, v8, v9}, Lcom/taobao/windmill/bridge/WMLBridge;->createAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v2

    .line 87
    .local v2, "ret":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    .local v0, "end":J
    const-string/jumbo v6, "windmill"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createContext time:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v6, p0, Ljpl$2;->d:Ljpl$a;

    if-eqz v6, :cond_0

    .line 90
    iget-object v6, p0, Ljpl$2;->d:Ljpl$a;

    if-ne v2, v3, :cond_1

    :goto_0
    const-string/jumbo v7, "appActivated"

    invoke-interface {v6, v3, v7}, Ljpl$a;->a(ZLjava/lang/String;)V

    .line 92
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
