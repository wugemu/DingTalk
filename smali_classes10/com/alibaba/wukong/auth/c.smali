.class public Lcom/alibaba/wukong/auth/c;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "TraceHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/auth/ai;",
        ">;"
    }
.end annotation


# static fields
.field private static o:I

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/wukong/auth/c;->o:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/wukong/auth/c;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "logup"

    const-class v1, Lcom/alibaba/wukong/auth/ai;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method private a(Lcom/alibaba/wukong/auth/ai;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/wukong/auth/ai;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v2, p1, Lcom/alibaba/wukong/auth/ai;->aK:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 81
    .local v0, "expire":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    :cond_0
    iget-object v2, p1, Lcom/alibaba/wukong/auth/ai;->X:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/alibaba/wukong/auth/ai;->X:Ljava/lang/String;

    const-string/jumbo v3, "force"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lifz;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/ai;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 11
    .param p1, "model"    # Lcom/alibaba/wukong/auth/ai;
    .param p2, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lhzr;->c()Lhzr;

    invoke-static {}, Lhzr;->b()Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    const-string/jumbo v5, "WKLog"

    const-string/jumbo v6, "not allow usage statistics"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v5, "not allow"

    invoke-interface {p2, v5}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v9, 0x0

    .line 50
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[TAG] TraceHandler"

    const-string/jumbo v6, "base"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 51
    iget-object v5, p1, Lcom/alibaba/wukong/auth/ai;->aH:Ljava/lang/Long;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 52
    .local v0, "start":J
    iget-object v5, p1, Lcom/alibaba/wukong/auth/ai;->aI:Ljava/lang/Long;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 53
    .local v2, "end":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    .line 54
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, v2

    .line 1014
    :cond_3
    const/4 v5, 0x0

    invoke-static {p2, v5}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 58
    iget-object v5, p1, Lcom/alibaba/wukong/auth/ai;->ad:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v10

    .line 59
    .local v10, "type":I
    sget v5, Lcom/alibaba/wukong/auth/c;->p:I

    if-ne v10, v5, :cond_5

    .line 60
    new-instance v8, Lifg;

    invoke-direct {v8}, Lifg;-><init>()V

    .line 61
    .local v8, "cmd":Lifg;
    iget-object v5, p1, Lcom/alibaba/wukong/auth/ai;->X:Ljava/lang/String;

    iput-object v5, v8, Lifg;->a:Ljava/lang/String;

    .line 62
    iget-object v5, p1, Lcom/alibaba/wukong/auth/ai;->aJ:Ljava/lang/String;

    iput-object v5, v8, Lifg;->b:Ljava/lang/String;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[BASE] recv cmd "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/alibaba/wukong/auth/ai;->X:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {v8}, Lcom/alibaba/wukong/auth/al;->a(Lifg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v8    # "cmd":Lifg;
    :cond_4
    :goto_1
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 66
    :cond_5
    :try_start_1
    const-string/jumbo v5, "[BASE] recv trace"

    invoke-virtual {v9, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 67
    iget-object v5, p1, Lcom/alibaba/wukong/auth/ai;->aG:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v4, 0x1

    .line 68
    .local v4, "level":I
    :goto_2
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/c;->a(Lcom/alibaba/wukong/auth/ai;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/wukong/auth/ai;->bizType:Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/wukong/auth/ai;->callbackParams:Ljava/util/Map;

    invoke-static/range {v0 .. v7}, Lhzt;->a(JJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 74
    .end local v0    # "start":J
    .end local v2    # "end":J
    .end local v4    # "level":I
    .end local v10    # "type":I
    :catchall_0
    move-exception v5

    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    throw v5

    .line 67
    .restart local v0    # "start":J
    .restart local v2    # "end":J
    .restart local v10    # "type":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/alibaba/wukong/auth/ai;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/c;->a(Lcom/alibaba/wukong/auth/ai;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    return-void
.end method
