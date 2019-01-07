.class public Lcom/alibaba/android/search/assure/model/FunctionAssureModel;
.super Lcom/alibaba/android/search/assure/model/AssureModel;
.source "FunctionAssureModel.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Leot;)V
    .locals 0
    .param p1, "pushClickResult"    # Leot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Leot;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getSearchId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    invoke-super {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-super {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_0
    return-object v2

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 61
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alibaba/android/search/model/FunctionModel;

    if-nez v2, :cond_2

    .line 62
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 65
    check-cast v1, Lcom/alibaba/android/search/model/FunctionModel;

    .line 66
    .local v1, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public parseBaseModel()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "functionId":I
    if-lez v0, :cond_1

    .line 41
    invoke-static {}, Lenn;->a()Lenn;

    move-result-object v3

    invoke-virtual {v3}, Lenn;->b()Lenm;

    move-result-object v3

    invoke-interface {v3, v0}, Lenm;->a(I)Lcom/alibaba/android/search/model/FunctionModel;

    move-result-object v2

    .line 42
    .local v2, "model":Lcom/alibaba/android/search/model/FunctionModel;
    if-eqz v2, :cond_1

    .line 44
    invoke-static {v0}, Lcom/alibaba/android/search/utils/FunctionLocalData;->getValue(I)Lcom/alibaba/android/search/utils/FunctionLocalData;

    move-result-object v1

    .line 45
    .local v1, "localData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    if-eqz v1, :cond_0

    .line 46
    iget v3, v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->mAvatarResId:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/FunctionModel;->setIconResId(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;->updateBaseModel(Lcom/alibaba/android/search/model/BaseModel;)V

    .line 52
    .end local v1    # "localData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    .end local v2    # "model":Lcom/alibaba/android/search/model/FunctionModel;
    :cond_1
    return-void
.end method
