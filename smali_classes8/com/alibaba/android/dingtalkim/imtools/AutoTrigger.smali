.class public final Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;
.super Ljava/lang/Object;
.source "AutoTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;,
        Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;,
        Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;",
            "Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private b(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)Ljava/util/TimerTask;
    .locals 3
    .param p1, "type"    # Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "ret":Ljava/util/TimerTask;
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    return-object v0

    .line 1165
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$1;

    .end local v0    # "ret":Ljava/util/TimerTask;
    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;)V

    .line 142
    .restart local v0    # "ret":Ljava/util/TimerTask;
    goto :goto_0

    .line 1186
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$2;

    .end local v0    # "ret":Ljava/util/TimerTask;
    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;)V

    .line 146
    .restart local v0    # "ret":Ljava/util/TimerTask;
    goto :goto_0

    .line 149
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;

    .line 93
    .local v0, "info":Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 95
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->d:Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v0    # "info":Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 105
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V
    .locals 8
    .param p1, "type"    # Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;
    .param p2, "interval"    # J
    .param p4, "delay"    # J
    .param p6, "obj"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v6, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;-><init>(B)V

    .line 69
    .local v6, "info":Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
    iput-object p6, v6, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v6, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->b(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->c:Ljava/util/TimerTask;

    .line 72
    iput-wide p2, v6, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->e:J

    .line 73
    iput-wide p4, v6, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->g:J

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v6    # "info":Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;

    .line 1114
    iget-boolean v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->d:Z

    if-nez v0, :cond_3

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->d:Z

    .line 1118
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->c:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 1119
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->b(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->c:Ljava/util/TimerTask;

    .line 1121
    :cond_1
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->c:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 1124
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 1125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    .line 1128
    :cond_2
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->c:Ljava/util/TimerTask;

    iget-wide v2, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->g:J

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->e:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 83
    :cond_3
    return-void
.end method
