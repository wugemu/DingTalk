.class public final Ljpl$4;
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

.field final synthetic b:Ljpl;


# direct methods
.method public constructor <init>(Ljpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljpl;

    .prologue
    .line 136
    iput-object p1, p0, Ljpl$4;->b:Ljpl;

    iput-object p2, p0, Ljpl$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "start":J
    iget-object v4, p0, Ljpl$4;->b:Ljpl;

    invoke-static {v4}, Ljpl;->a(Ljpl;)Lcom/taobao/windmill/bridge/WMLBridge;

    move-result-object v4

    iget-object v5, p0, Ljpl$4;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/taobao/windmill/bridge/WMLBridge;->destoryAppContext(Ljava/lang/String;)I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "end":J
    const-string/jumbo v4, "windmill"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "destroyAppContext time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
