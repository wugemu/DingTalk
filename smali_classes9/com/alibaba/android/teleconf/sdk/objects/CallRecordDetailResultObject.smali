.class public Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;
.super Ljava/lang/Object;
.source "CallRecordDetailResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public callRecordDetailItemResultModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;",
            ">;"
        }
    .end annotation
.end field

.field public cause:Ljava/lang/String;

.field public code:Ljava/lang/Integer;

.field public iNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;
    .locals 5
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->code:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->code:Ljava/lang/Integer;

    .line 27
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->cause:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->cause:Ljava/lang/String;

    .line 28
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->iNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->iNumber:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->callRecordDetailItemResultModelList:Ljava/util/List;

    .line 30
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->callRecordDetailItemResultModelList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->callRecordDetailItemResultModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;

    .line 32
    .local v0, "model1":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;-><init>()V

    .line 33
    .local v1, "obj":Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->callRecordDetailItemResultModelList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v0    # "model1":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;
    .end local v1    # "obj":Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;
    :cond_0
    return-object p0
.end method

.method toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;-><init>()V

    .line 42
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->code:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->code:Ljava/lang/Integer;

    .line 43
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->cause:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->cause:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->callRecordDetailItemResultModelList:Ljava/util/List;

    .line 45
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->callRecordDetailItemResultModelList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailResultObject;->callRecordDetailItemResultModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;

    .line 47
    .local v1, "obj":Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;
    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;->callRecordDetailItemResultModelList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v1    # "obj":Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;
    :cond_0
    return-object v0
.end method
