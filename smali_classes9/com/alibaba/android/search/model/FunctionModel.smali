.class public Lcom/alibaba/android/search/model/FunctionModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "FunctionModel.java"


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mFunctionId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIconResId:I

.field private mId:Ljava/lang/String;

.field private mMediaId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/datasource/entry/FunctionEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 70
    iget v0, p1, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->id:I

    iput v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    .line 71
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mName:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mDesc:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->avatar_media:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mMediaId:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mUrl:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Function:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setChooseMode(I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/model/FunctionModel;->initData(Ljava/util/Map;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Function:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setChooseMode(I)V

    .line 67
    return-void
.end method

.method private initData(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mKeyword:Ljava/lang/String;

    .line 103
    const-string/jumbo v2, "name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mName:Ljava/lang/String;

    .line 104
    const-string/jumbo v2, "desc"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mDesc:Ljava/lang/String;

    .line 106
    :try_start_0
    const-string/jumbo v2, "funid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    iget v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    invoke-static {v2}, Lcom/alibaba/android/search/utils/FunctionLocalData;->getValue(I)Lcom/alibaba/android/search/utils/FunctionLocalData;

    move-result-object v1

    .line 111
    .local v1, "functionLocalData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    if-eqz v1, :cond_0

    .line 112
    iget v2, v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->mAvatarResId:I

    iput v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mIconResId:I

    .line 114
    :cond_0
    const-string/jumbo v2, "avatar_media"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mMediaId:Ljava/lang/String;

    .line 115
    const-string/jumbo v2, "url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/search/model/FunctionModel;->mUrl:Ljava/lang/String;

    .line 116
    return-void

    .line 107
    .end local v1    # "functionLocalData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAvatar()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v2, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v1, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 200
    .local v1, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget v3, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    invoke-static {v3}, Lcom/alibaba/android/search/utils/FunctionLocalData;->getValue(I)Lcom/alibaba/android/search/utils/FunctionLocalData;

    move-result-object v0

    .line 201
    .local v0, "functionLocalData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    if-eqz v0, :cond_0

    .line 202
    iget v3, v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mAvatarResId:I

    iput v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mAvatarResId:I

    .line 205
    :cond_0
    iget v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mAvatarResId:I

    if-gtz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/alibaba/android/search/model/FunctionModel;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 209
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-object v2
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    return v0
.end method

.method public getHighlightDesc()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mDesc:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mKeyword:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighlightName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mIconResId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FunctionModel;->markItemClick()V

    .line 92
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "function"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    invoke-static {v0, p1}, Lesx;->a(ILandroid/app/Activity;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mUrl:Ljava/lang/String;

    .line 1721
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 97
    :goto_1
    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 1725
    :cond_1
    invoke-static {}, Lesx;->a()Ljava/lang/String;

    move-result-object v0

    .line 1726
    const-string/jumbo v3, "__CORPID__"

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1728
    invoke-static {}, Lesx;->b()Ljava/lang/String;

    move-result-object v0

    .line 1729
    const-string/jumbo v3, "__STAFFID__"

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :cond_3
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    const-string/jumbo v1, "__TIMESTAMP__"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1733
    const-string/jumbo v1, "__UID__"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mDesc:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setFunctionId(I)V
    .locals 0
    .param p1, "functionId"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    .line 149
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mIconResId:I

    .line 86
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mMediaId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/search/model/FunctionModel;->mUrl:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public supportLocale()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcms;->c()Z

    move-result v0

    .line 178
    .local v0, "china":Z
    if-eqz v0, :cond_1

    .line 179
    const/4 v2, 0x1

    .line 187
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    invoke-static {}, Lcom/alibaba/android/search/utils/FunctionLocalData;->values()[Lcom/alibaba/android/search/utils/FunctionLocalData;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 182
    .local v1, "localFunctionData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    if-eqz v1, :cond_2

    iget v6, v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->mId:I

    iget v7, p0, Lcom/alibaba/android/search/model/FunctionModel;->mFunctionId:I

    if-ne v6, v7, :cond_2

    .line 183
    iget-boolean v2, v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->mSupportI18N:Z

    goto :goto_0

    .line 181
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
