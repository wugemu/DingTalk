.class public final enum Lcom/alibaba/appmonitor/event/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/appmonitor/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/appmonitor/event/EventType;

.field public static final enum ALARM:Lcom/alibaba/appmonitor/event/EventType;

.field public static final enum COUNTER:Lcom/alibaba/appmonitor/event/EventType;

.field public static final enum STAT:Lcom/alibaba/appmonitor/event/EventType;

.field static TAG:Ljava/lang/String;


# instance fields
.field private aggregateEventArgsKey:Ljava/lang/String;

.field private backgroundStatisticsInterval:I

.field private cls:Ljava/lang/Class;

.field private defaultSampling:I

.field private eventId:I

.field private foregroundStatisticsInterval:I

.field private namespce:Ljava/lang/String;

.field private open:Z

.field private triggerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/appmonitor/event/EventType;

    const-string/jumbo v1, "ALARM"

    const/4 v2, 0x0

    const v3, 0xffdd

    const/16 v4, 0x1e

    const-string/jumbo v5, "alarmData"

    const/16 v6, 0x3e8

    const-string/jumbo v7, "ap_alarm"

    const-class v8, Lfzg;

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/appmonitor/event/EventType;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    .line 11
    new-instance v0, Lcom/alibaba/appmonitor/event/EventType;

    const-string/jumbo v1, "COUNTER"

    const/4 v2, 0x1

    const v3, 0xffde

    const/16 v4, 0x1e

    const-string/jumbo v5, "counterData"

    const/16 v6, 0x3e8

    const-string/jumbo v7, "ap_counter"

    const-class v8, Lfzh;

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/appmonitor/event/EventType;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    .line 13
    new-instance v0, Lcom/alibaba/appmonitor/event/EventType;

    const-string/jumbo v1, "STAT"

    const/4 v2, 0x2

    const v3, 0xffdf

    const/16 v4, 0x1e

    const-string/jumbo v5, "statData"

    const/16 v6, 0x3e8

    const-string/jumbo v7, "ap_stat"

    const-class v8, Lfzi;

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/appmonitor/event/EventType;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/appmonitor/event/EventType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/appmonitor/event/EventType;->$VALUES:[Lcom/alibaba/appmonitor/event/EventType;

    .line 45
    const-string/jumbo v0, "EventType"

    sput-object v0, Lcom/alibaba/appmonitor/event/EventType;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p3, "eventId"    # I
    .param p4, "triggerCount"    # I
    .param p5, "aggregateEventArgsKey"    # Ljava/lang/String;
    .param p6, "defaultSampling"    # I
    .param p7, "namespace"    # Ljava/lang/String;
    .param p8, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    const/16 v0, 0x19

    iput v0, p0, Lcom/alibaba/appmonitor/event/EventType;->foregroundStatisticsInterval:I

    .line 37
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alibaba/appmonitor/event/EventType;->backgroundStatisticsInterval:I

    .line 48
    iput p3, p0, Lcom/alibaba/appmonitor/event/EventType;->eventId:I

    .line 49
    iput p4, p0, Lcom/alibaba/appmonitor/event/EventType;->triggerCount:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/appmonitor/event/EventType;->open:Z

    .line 51
    iput-object p5, p0, Lcom/alibaba/appmonitor/event/EventType;->aggregateEventArgsKey:Ljava/lang/String;

    .line 52
    iput p6, p0, Lcom/alibaba/appmonitor/event/EventType;->defaultSampling:I

    .line 53
    iput-object p7, p0, Lcom/alibaba/appmonitor/event/EventType;->namespce:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/alibaba/appmonitor/event/EventType;->cls:Ljava/lang/Class;

    .line 55
    return-void
.end method

.method public static getEventType(I)Lcom/alibaba/appmonitor/event/EventType;
    .locals 4
    .param p0, "eventId"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v2

    .line 81
    .local v2, "types":[Lcom/alibaba/appmonitor/event/EventType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 82
    aget-object v1, v2, v0

    .line 83
    .local v1, "type":Lcom/alibaba/appmonitor/event/EventType;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 87
    .end local v1    # "type":Lcom/alibaba/appmonitor/event/EventType;
    :goto_1
    return-object v1

    .line 81
    .restart local v1    # "type":Lcom/alibaba/appmonitor/event/EventType;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "type":Lcom/alibaba/appmonitor/event/EventType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getEventTypeByNameSpace(Ljava/lang/String;)Lcom/alibaba/appmonitor/event/EventType;
    .locals 5
    .param p0, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 115
    if-nez p0, :cond_1

    move-object v1, v3

    .line 125
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :cond_1
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v2

    .line 119
    .local v2, "types":[Lcom/alibaba/appmonitor/event/EventType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 120
    aget-object v1, v2, v0

    .line 121
    .local v1, "type":Lcom/alibaba/appmonitor/event/EventType;
    if-eqz v1, :cond_2

    invoke-direct {v1}, Lcom/alibaba/appmonitor/event/EventType;->getNameSpace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "type":Lcom/alibaba/appmonitor/event/EventType;
    :cond_3
    move-object v1, v3

    .line 125
    goto :goto_0
.end method

.method private getNameSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/EventType;->namespce:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/appmonitor/event/EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/appmonitor/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/event/EventType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/appmonitor/event/EventType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->$VALUES:[Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, [Lcom/alibaba/appmonitor/event/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/appmonitor/event/EventType;

    return-object v0
.end method


# virtual methods
.method public final getAggregateEventArgsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/EventType;->aggregateEventArgsKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackgroundStatisticsInterval()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alibaba/appmonitor/event/EventType;->backgroundStatisticsInterval:I

    return v0
.end method

.method public final getCls()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/EventType;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public final getDefaultSampling()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/alibaba/appmonitor/event/EventType;->defaultSampling:I

    return v0
.end method

.method public final getEventId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/appmonitor/event/EventType;->eventId:I

    return v0
.end method

.method public final getForegroundStatisticsInterval()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/appmonitor/event/EventType;->foregroundStatisticsInterval:I

    return v0
.end method

.method public final getTriggerCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/appmonitor/event/EventType;->triggerCount:I

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/appmonitor/event/EventType;->open:Z

    return v0
.end method

.method public final setDefaultSampling(I)V
    .locals 0
    .param p1, "defaultSampling"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/alibaba/appmonitor/event/EventType;->defaultSampling:I

    .line 112
    return-void
.end method

.method public final setOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/appmonitor/event/EventType;->open:Z

    .line 67
    return-void
.end method

.method public final setStatisticsInterval(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/alibaba/appmonitor/event/EventType;->foregroundStatisticsInterval:I

    .line 104
    return-void
.end method

.method public final setTriggerCount(I)V
    .locals 4
    .param p1, "triggerCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[setTriggerCount]"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/appmonitor/event/EventType;->aggregateEventArgsKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iput p1, p0, Lcom/alibaba/appmonitor/event/EventType;->triggerCount:I

    .line 77
    return-void
.end method
