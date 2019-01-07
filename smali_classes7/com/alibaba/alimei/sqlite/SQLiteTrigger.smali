.class public Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
.super Ljava/lang/Object;
.source "SQLiteTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;,
        Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    }
.end annotation


# instance fields
.field private final mOfColumnName:Ljava/lang/String;

.field private final mOnTableName:Ljava/lang/String;

.field private final mTriggerName:Ljava/lang/String;

.field private final mTriggerOperation:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

.field private mTriggerStatements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTriggerType:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

.field private mWhenExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "triggerName"    # Ljava/lang/String;
    .param p2, "onTableName"    # Ljava/lang/String;
    .param p3, "triggerType"    # Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    .param p4, "triggerOperation"    # Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    .param p5, "ofColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;",
            "Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p6, "triggerStatement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p6, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerStatements:Ljava/util/List;

    .line 89
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerType:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    .line 91
    iput-object p4, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerOperation:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    .line 92
    iput-object p5, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mOfColumnName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mOnTableName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;Ljava/util/List;)V
    .locals 7
    .param p1, "triggerName"    # Ljava/lang/String;
    .param p2, "onTableName"    # Ljava/lang/String;
    .param p3, "triggerType"    # Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    .param p4, "triggerOperation"    # Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;",
            "Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p5, "triggerStatement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 79
    sget-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    if-ne p4, v0, :cond_0

    .line 80
    new-instance v0, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    const-string/jumbo v1, "Cannot new SQLiteTrigger with current constructor for TriggerType.UpdateOf"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public addTriggerStatement(Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerStatements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerStatements:Ljava/util/List;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerStatements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public getOfColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mOfColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mOnTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerOperation()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerOperation:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    return-object v0
.end method

.method public getTriggerStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerStatements:Ljava/util/List;

    return-object v0
.end method

.method public getTriggerType()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mTriggerType:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    return-object v0
.end method

.method public getWhenExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mWhenExpression:Ljava/lang/String;

    return-object v0
.end method

.method public setWhenExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "whenExpression"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->mWhenExpression:Ljava/lang/String;

    .line 102
    return-void
.end method
