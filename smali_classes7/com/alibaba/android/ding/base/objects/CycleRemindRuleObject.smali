.class public Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
.super Ljava/lang/Object;
.source "CycleRemindRuleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5d07f038cf354c6cL


# instance fields
.field public alarmType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "alarmType"
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "count"
    .end annotation
.end field

.field public freq:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "freq"
    .end annotation
.end field

.field public hasCount:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hasCount"
    .end annotation
.end field

.field public hasUntil:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hasUntil"
    .end annotation
.end field

.field public interval:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "interval"
    .end annotation
.end field

.field public until:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "until"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lazj;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .locals 5
    .param p0, "model"    # Lazj;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;-><init>()V

    .line 68
    .local v0, "object":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    iget-object v1, p0, Lazj;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lazj;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 69
    iput v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    .line 70
    iget-object v1, p0, Lazj;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 71
    iput-boolean v2, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasCount:Z

    .line 72
    iget-object v1, p0, Lazj;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 72
    iput v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    .line 74
    :cond_1
    iget-object v1, p0, Lazj;->d:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 75
    iput-boolean v2, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasUntil:Z

    .line 76
    iget-object v1, p0, Lazj;->d:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 76
    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    .line 78
    :cond_2
    iget-object v1, p0, Lazj;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 78
    iput v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->alarmType:I

    goto :goto_0
.end method

.method public static fromRecurRuleModel(Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;-><init>()V

    .line 103
    .local v0, "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->freq:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->interval:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 104
    iput v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->count:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 105
    iput v1, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 106
    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    .line 118
    .local v0, "that":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    iget v3, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    iget v4, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 119
    :cond_3
    iget v3, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    iget v4, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 120
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasCount:Z

    iget-boolean v4, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasCount:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 121
    :cond_5
    iget-wide v4, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    iget-wide v6, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 122
    :cond_6
    iget-boolean v3, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasUntil:Z

    iget-boolean v4, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasUntil:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 123
    :cond_7
    iget v3, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->alarmType:I

    iget v4, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->alarmType:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 124
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 131
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    add-int v0, v2, v4

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    add-int v0, v2, v4

    .line 133
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasCount:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 134
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    iget-wide v6, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasUntil:Z

    if-eqz v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 136
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->alarmType:I

    add-int v0, v1, v2

    .line 137
    return v0

    .end local v0    # "result":I
    :cond_0
    move v0, v1

    .line 130
    goto :goto_0

    .restart local v0    # "result":I
    :cond_1
    move v2, v1

    .line 133
    goto :goto_1

    :cond_2
    move v3, v1

    .line 135
    goto :goto_2
.end method

.method public toIdlModel()Lazj;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    new-instance v0, Lazj;

    invoke-direct {v0}, Lazj;-><init>()V

    .line 51
    .local v0, "model":Lazj;
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    iput-object v1, v0, Lazj;->a:Ljava/lang/String;

    .line 52
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lazj;->b:Ljava/lang/Integer;

    .line 53
    iget-boolean v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasCount:Z

    if-eqz v1, :cond_0

    .line 54
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lazj;->c:Ljava/lang/Integer;

    .line 56
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->hasUntil:Z

    if-eqz v1, :cond_1

    .line 57
    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lazj;->d:Ljava/lang/Long;

    .line 59
    :cond_1
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->alarmType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lazj;->e:Ljava/lang/Integer;

    .line 60
    return-object v0
.end method

.method public toRecurRuleModel()Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;-><init>()V

    .line 90
    .local v0, "recurRuleModel":Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->freq:Ljava/lang/String;

    .line 91
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->interval:Ljava/lang/Integer;

    .line 92
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->count:Ljava/lang/Integer;

    .line 93
    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;

    .line 94
    return-object v0
.end method
