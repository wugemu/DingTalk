.class public Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;
.super Ljava/lang/Object;
.source "MailAddrInfoResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;,
        Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;
    }
.end annotation


# instance fields
.field public failedContainer:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "failedContainer"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;",
            ">;"
        }
    .end annotation
.end field

.field public failedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public failedNum:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "failedNum"
    .end annotation
.end field

.field public successContainer:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "successContainer"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;",
            ">;"
        }
    .end annotation
.end field

.field public successItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public successNum:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "successNum"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertItemContainerToInfoItem(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;)Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    .locals 6
    .param p0, "itemContainer"    # Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;

    .prologue
    .line 165
    if-nez p0, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 204
    :cond_0
    return-object v0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;->getItem()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/Item;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;-><init>()V

    .line 171
    .local v0, "infoItem":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/Item;

    .line 172
    .local v1, "item":Lcom/alibaba/alimei/restfulapi/response/data/Item;
    if-eqz v1, :cond_2

    .line 175
    const-string/jumbo v4, "InputEAddr"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->email:Ljava/lang/String;

    .line 179
    :cond_3
    const-string/jumbo v4, "AccountType"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 180
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->accountType:I

    .line 183
    :cond_4
    const-string/jumbo v4, "Name"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->alias:Ljava/lang/String;

    .line 187
    :cond_5
    const-string/jumbo v4, "Account"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->account:Ljava/lang/String;

    .line 191
    :cond_6
    const-string/jumbo v4, "ErrorCode"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->errCode:I

    .line 195
    :cond_7
    const-string/jumbo v4, "ErrorMsg"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->errMsg:Ljava/lang/String;

    .line 199
    :cond_8
    const-string/jumbo v4, "Status"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/Item;->getVal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->status:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getFailedContainer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    return-object v0
.end method

.method public getFailedNum()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedNum:I

    return v0
.end method

.method public getSuccessContainer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    return-object v0
.end method

.method public getSuccessNum()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successNum:I

    return v0
.end method

.method public parse()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successItems:Ljava/util/List;

    .line 41
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;

    .line 42
    .local v1, "item":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;
    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->convertItemContainerToInfoItem(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;)Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;

    move-result-object v0

    .line 43
    .local v0, "infoItem":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    if-eqz v0, :cond_0

    .line 46
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "infoItem":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    .end local v1    # "item":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedItems:Ljava/util/List;

    .line 52
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;

    .line 53
    .restart local v1    # "item":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;
    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->convertItemContainerToInfoItem(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;)Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;

    move-result-object v0

    .line 54
    .restart local v0    # "infoItem":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    if-eqz v0, :cond_2

    .line 57
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    .end local v0    # "infoItem":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    .end local v1    # "item":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;
    :cond_3
    return-void
.end method

.method public setFailedContainer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "failedContainer":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    .line 80
    return-void
.end method

.method public setFailedNum(I)V
    .locals 0
    .param p1, "failedNum"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedNum:I

    .line 64
    return-void
.end method

.method public setSuccessContainer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "successContainer":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$ItemContainer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setSuccessNum(I)V
    .locals 0
    .param p1, "successNum"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successNum:I

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailAddrInfoResult {failedNum = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",successNum = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",failedContainer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->failedContainer:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",successContainer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successContainer:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
