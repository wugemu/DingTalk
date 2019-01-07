.class public final Lbjs;
.super Ljava/lang/Object;
.source "DingEventUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .locals 2
    .param p0, "dingEventsWrapperModel"    # Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "recurRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;>;"
    const/4 v5, 0x0

    .line 170
    if-nez p0, :cond_0

    .line 171
    const-string/jumbo v2, ""

    .line 180
    :goto_0
    return-object v2

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->fromRecurRuleModel(Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v0

    .line 176
    .local v0, "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v1

    .line 177
    .local v1, "frequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    sget v2, Laxp$i;->dt_ding_repeat_AT:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
    .end local v0    # "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .end local v1    # "frequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 6
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v4}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "bizObject":Ljava/lang/Object;
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    instance-of v4, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v4, v5, :cond_3

    .line 38
    invoke-static {p0}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lbkh;->t(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    .line 40
    .local v1, "shouldAdd":Z
    :goto_1
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .end local v0    # "bizObject":Ljava/lang/Object;
    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->action:Ljava/lang/Integer;

    .line 41
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    goto :goto_0

    .end local v1    # "shouldAdd":Z
    .restart local v0    # "bizObject":Ljava/lang/Object;
    :cond_3
    move v1, v3

    .line 38
    goto :goto_1

    .end local v0    # "bizObject":Ljava/lang/Object;
    .restart local v1    # "shouldAdd":Z
    :cond_4
    move v3, v2

    .line 40
    goto :goto_2
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "objectDings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 51
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0
.end method
