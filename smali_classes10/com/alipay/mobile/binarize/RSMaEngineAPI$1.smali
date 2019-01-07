.class Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;
.super Ljava/lang/Object;
.source "RSMaEngineAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/binarize/RSMaEngineAPI;->init(Landroid/content/Context;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v2}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)I

    move-result v1

    .line 79
    .local v1, "previousException":I
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;I)V

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    new-instance v3, Lcom/alipay/mobile/binarize/BinarizeHandler;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v4}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/binarize/BinarizeHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Lcom/alipay/mobile/binarize/BinarizeHandler;)Lcom/alipay/mobile/binarize/BinarizeHandler;

    .line 82
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z

    .line 83
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    iget-wide v6, v3, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsInitStartTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsInitCost:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v2}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v2}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Lcom/alipay/mobile/binarize/BinarizeHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v2}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Lcom/alipay/mobile/binarize/BinarizeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/binarize/BinarizeHandler;->destroy()V

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;->a:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v2, v1}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;I)V

    .line 98
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RSMaEngineAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init binarizer exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v2, Liir;->a:Liir$a;

    .line 86
    const-string/jumbo v2, "init"

    invoke-static {v2}, Liiq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RSMaEngineAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "release binarizer exception1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2029
    sget-object v2, Liir;->a:Liir$a;

    .line 94
    const-string/jumbo v2, "release"

    invoke-static {v2}, Liiq;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
