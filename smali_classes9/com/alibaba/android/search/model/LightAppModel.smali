.class public Lcom/alibaba/android/search/model/LightAppModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "LightAppModel.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppType:I

.field private mBrief:Ljava/lang/String;

.field private mCommentScore:I

.field private mIcon:Ljava/lang/String;

.field private mJumpUrl:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProviderOrgName:Ljava/lang/String;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lepx;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Lepx;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/model/LightAppModel;->init(Lepx;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LightApp:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LightAppModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 50
    return-void
.end method

.method private init(Lepx;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Lepx;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/search/model/LightAppModel;->mKeyword:Ljava/lang/String;

    .line 60
    iget-object v1, p1, Lepx;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mIcon:Ljava/lang/String;

    .line 61
    iget-object v1, p1, Lepx;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mTags:Ljava/util/List;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mIcon:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mIcon:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    iget-object v1, p1, Lepx;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mName:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lepx;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mProviderOrgName:Ljava/lang/String;

    .line 69
    iget-object v1, p1, Lepx;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lepx;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 70
    iget-object v1, p1, Lepx;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mLabel:Ljava/lang/String;

    .line 72
    :cond_1
    iget v1, p1, Lepx;->g:I

    iput v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mCommentScore:I

    .line 73
    iget-object v1, p1, Lepx;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mJumpUrl:Ljava/lang/String;

    .line 74
    iget-object v1, p1, Lepx;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mAppId:Ljava/lang/String;

    .line 75
    iget-object v1, p1, Lepx;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mBrief:Ljava/lang/String;

    .line 76
    iget v1, p1, Lepx;->m:I

    iput v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mAppType:I

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAppType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mAppType:I

    return v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mBrief:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentScore()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mCommentScore:I

    return v0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mProviderOrgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mJumpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/search/model/LightAppModel;->mTags:Ljava/util/List;

    return-object v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mJumpUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/model/LightAppModel;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/search/model/LightAppModel;->mIcon:Ljava/lang/String;

    .line 105
    return-void
.end method
