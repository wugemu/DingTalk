.class final Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$2;
.super Ljava/util/TimerTask;
.source "AutoTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$2;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x1

    const/4 v6, 0x1

    .line 190
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$2;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 1021
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    .line 190
    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;

    .line 191
    .local v0, "info":Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Ldiz;

    if-eqz v2, :cond_0

    .line 192
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    check-cast v1, Ldiz;

    .line 193
    .local v1, "sender":Ldiz;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   LWP.disConnect() +++++++++++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3, v6}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Z)Z

    .line 196
    .end local v1    # "sender":Ldiz;
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->disConnect()V

    .line 198
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Ldiz;

    if-eqz v2, :cond_1

    .line 199
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    check-cast v1, Ldiz;

    .line 200
    .restart local v1    # "sender":Ldiz;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   LWP.disConnect() ------------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3, v6}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Z)Z

    .line 202
    .end local v1    # "sender":Ldiz;
    :cond_1
    return-void
.end method
