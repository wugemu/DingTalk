.class public Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;
.super Ljava/lang/Object;
.source "RevokeMailQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;
    }
.end annotation


# static fields
.field public static final STATUS_CANCELED:I = 0x4

.field public static final STATUS_FAILED:I = 0x5

.field public static final STATUS_FINISHED:I = 0x3

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUBMITTED:I = 0x1

.field public static final STATUS_UNINITED:I


# instance fields
.field public elapsedTime:J

.field public failedEmail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public failedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mailId:Ljava/lang/String;

.field public processedItems:I

.field public progress:I

.field public status:I

.field public taskId:Ljava/lang/String;

.field public totalItems:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailedEmail()Ljava/util/List;
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
    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedEmail:Ljava/util/List;

    return-object v0
.end method

.method public getFailedItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedItemList:Ljava/util/List;

    return-object v0
.end method

.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->mailId:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessedItems()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->processedItems:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->progress:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->status:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->totalItems:I

    return v0
.end method

.method public parse()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 126
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedEmail:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedEmail:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedEmail:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedItemList:Ljava/util/List;

    .line 128
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedEmail:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    const-string/jumbo v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "strArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 140
    const/4 v5, 0x0

    aget-object v0, v3, v5

    .line 141
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    const-string/jumbo v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;-><init>()V

    .line 148
    .local v1, "item":Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;
    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;->email:Ljava/lang/String;

    .line 149
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;->errCode:I

    .line 150
    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedItemList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "item":Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strArray":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setFailedEmail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "failedEmail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->failedEmail:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->mailId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setProcessedItems(I)V
    .locals 0
    .param p1, "processedItems"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->processedItems:I

    .line 87
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->progress:I

    .line 95
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->status:I

    .line 103
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->taskId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTotalItems(I)V
    .locals 0
    .param p1, "totalItems"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->totalItems:I

    .line 119
    return-void
.end method
