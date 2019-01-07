.class public Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "RecallSearchTipModel.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;->mKeyword:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecallSearchTip:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 13
    return-void
.end method
