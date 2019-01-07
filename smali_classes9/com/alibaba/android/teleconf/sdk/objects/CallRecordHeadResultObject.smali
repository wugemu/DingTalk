.class public Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;
.super Ljava/lang/Object;
.source "CallRecordHeadResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public callRecordHeadItemResultModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;",
            ">;"
        }
    .end annotation
.end field

.field public cause:Ljava/lang/String;

.field public code:Ljava/lang/Integer;

.field public iNumber:Ljava/lang/String;

.field public iUid:Ljava/lang/Long;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 29
    if-eqz p1, :cond_1

    .line 30
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->code:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->code:Ljava/lang/Integer;

    .line 31
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->cause:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->cause:Ljava/lang/String;

    .line 32
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->msg:Ljava/lang/String;

    .line 33
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->iUid:Ljava/lang/Long;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->iUid:Ljava/lang/Long;

    .line 34
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->iNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->iNumber:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->callRecordHeadItemResultModelList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->callRecordHeadItemResultModelList:Ljava/util/List;

    .line 38
    :cond_0
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->callRecordHeadItemResultModelList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->callRecordHeadItemResultModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 40
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;-><init>()V

    .line 41
    .local v1, "obj":Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->callRecordHeadItemResultModelList:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->callRecordHeadItemResultModelList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    .end local v1    # "obj":Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;
    :cond_1
    return-object p0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;-><init>()V

    .line 50
    .local v1, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->code:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->code:Ljava/lang/Integer;

    .line 51
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->cause:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->cause:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->msg:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->msg:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->iUid:Ljava/lang/Long;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->iUid:Ljava/lang/Long;

    .line 54
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->iNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->iNumber:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->callRecordHeadItemResultModelList:Ljava/util/List;

    .line 56
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->callRecordHeadItemResultModelList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->callRecordHeadItemResultModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 58
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;->callRecordHeadItemResultModelList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadResultObject;->callRecordHeadItemResultModelList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
