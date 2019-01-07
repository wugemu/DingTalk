.class public Lcom/alibaba/android/search/model/SearchClickLogModel;
.super Ljava/lang/Object;
.source "SearchClickLogModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mDe:Z

.field private mEntry:I

.field private mPositionCode:I

.field private mPositionType:I

.field private mPositionValue:I

.field private mTab:I

.field private mType:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mUUID:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mTab:I

    .line 32
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionCode:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionValue:I

    .line 42
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mType:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntry()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mEntry:I

    return v0
.end method

.method public getPositionCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionCode:I

    return v0
.end method

.method public getPositionType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionType:I

    return v0
.end method

.method public getPositionValue()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionValue:I

    return v0
.end method

.method public getTab()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mTab:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isDe()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mDe:Z

    return v0
.end method

.method public setDe(Z)V
    .locals 0
    .param p1, "de"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mDe:Z

    .line 119
    return-void
.end method

.method public setEntry(I)V
    .locals 0
    .param p1, "entry"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mEntry:I

    .line 95
    return-void
.end method

.method public setPositionCode(I)V
    .locals 0
    .param p1, "positionCode"    # I

    .prologue
    .line 67
    if-gez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iput p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionCode:I

    goto :goto_0
.end method

.method public setPositionType(I)V
    .locals 0
    .param p1, "positionType"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionType:I

    .line 87
    return-void
.end method

.method public setPositionValue(I)V
    .locals 0
    .param p1, "positionValue"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mPositionValue:I

    .line 79
    return-void
.end method

.method public setTab(I)V
    .locals 0
    .param p1, "tab"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mTab:I

    .line 60
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mType:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->mUUID:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/search/model/SearchClickLogModel;->value:Ljava/lang/String;

    .line 111
    return-void
.end method
