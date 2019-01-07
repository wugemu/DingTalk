.class final Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$1;
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
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$1;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$1;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 1021
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    .line 169
    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;

    .line 170
    .local v0, "info":Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Ldiz;

    if-eqz v2, :cond_0

    .line 171
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    check-cast v1, Ldiz;

    .line 172
    .local v1, "sender":Ldiz;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Z)Z

    .line 175
    .end local v1    # "sender":Ldiz;
    :cond_0
    return-void
.end method
