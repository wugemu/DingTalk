.class public final Lfzj;
.super Ljava/lang/Object;
.source "UTUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyp;)V
    .locals 10
    .param p0, "utDimensionValue"    # Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .param p1, "event"    # Lfyp;

    .prologue
    const/4 v9, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v1

    .line 88
    .local v1, "eventId":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    .line 90
    .local v3, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v6

    const-class v7, Lfys;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v5

    check-cast v5, Lfys;

    .line 91
    .local v5, "utEvent":Lfys;
    const/16 v6, 0x1a2b

    iput v6, v5, Lfys;->b:I

    .line 92
    iget-object v6, p1, Lfyp;->e:Ljava/lang/String;

    iput-object v6, v5, Lfys;->c:Ljava/lang/String;

    .line 93
    iget-object v6, p1, Lfyp;->f:Ljava/lang/String;

    iput-object v6, v5, Lfys;->d:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 96
    iget-object v6, v5, Lfys;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    iget-object v6, v5, Lfys;->f:Ljava/util/Map;

    const-string/jumbo v7, "commitDay"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "meta"

    invoke-static {}, Lfyk;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v6, "_event_id"

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v6

    const-class v7, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 103
    .local v0, "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    invoke-virtual {p1}, Lfyp;->a()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 104
    .local v4, "jobject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, v4}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v6

    invoke-virtual {v6, p1}, Lfzb;->a(Lfzc;)V

    .line 107
    const-string/jumbo v6, "data"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v6, v5, Lfys;->f:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v6, v5, Lfys;->f:Ljava/util/Map;

    sget-object v7, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v7}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "6699"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v5}, Lfzj;->a(Lfys;)V

    .line 112
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v6

    invoke-virtual {v6, v0}, Lfzb;->a(Lfzc;)V

    .line 114
    .end local v0    # "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    .end local v2    # "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .end local v4    # "jobject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "utEvent":Lfys;
    :cond_1
    return-void
.end method

.method public static a(Lfys;)V
    .locals 7
    .param p0, "utEvent"    # Lfys;

    .prologue
    const/4 v1, 0x0

    .line 127
    new-instance v0, Lald;

    iget v2, p0, Lfys;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfys;->c:Ljava/lang/String;

    iget-object v4, p0, Lfys;->d:Ljava/lang/String;

    iget-object v6, p0, Lfys;->f:Ljava/util/Map;

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lald;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    .local v0, "log":Lald;
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lalu;->a(Lald;)V

    .line 129
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v1

    invoke-virtual {v1, p0}, Lfzb;->a(Lfzc;)V

    .line 130
    return-void
.end method
