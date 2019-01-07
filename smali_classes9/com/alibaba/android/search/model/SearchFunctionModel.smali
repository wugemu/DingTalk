.class public Lcom/alibaba/android/search/model/SearchFunctionModel;
.super Lcom/alibaba/android/search/model/SearchLogoModel;
.source "SearchFunctionModel.java"


# instance fields
.field private mCompanyName:Ljava/lang/String;

.field private mCorpId:Ljava/lang/String;

.field private mFunctionDesc:Ljava/lang/String;

.field private mFunctionName:Ljava/lang/String;

.field private mFunctionNameExt:Ljava/lang/String;

.field private mFunctionType:I

.field private mId:Ljava/lang/String;

.field private mJumpUrl:Ljava/lang/String;

.field private mLogo:Ljava/lang/String;

.field private mPcJumpUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lepu;Ljava/lang/String;)V
    .locals 1
    .param p1, "searchFunctionAppObject"    # Lepu;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/search/model/SearchLogoModel;-><init>()V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p1, Lepu;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mId:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lepu;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mFunctionName:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lepu;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mFunctionNameExt:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lepu;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mCorpId:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lepu;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mCompanyName:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lepu;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mLogo:Ljava/lang/String;

    .line 57
    iget v0, p1, Lepu;->g:I

    iput v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mFunctionType:I

    .line 58
    iget-object v0, p1, Lepu;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mJumpUrl:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lepu;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mPcJumpUrl:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lepu;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mFunctionDesc:Ljava/lang/String;

    .line 63
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SearchFunction:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/SearchFunctionModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/SearchFunctionModel;->setChooseMode(I)V

    .line 65
    iput-object p2, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mKeyword:Ljava/lang/String;

    .line 66
    return-void
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
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v2, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v1, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 108
    .local v1, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchFunctionModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SearchFunctionModel;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 111
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v3, "SearchFunctionModel.getAvatar"

    invoke-static {v3, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mCompanyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mFunctionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/search/model/SearchFunctionModel;->mJumpUrl:Ljava/lang/String;

    .line 89
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v1, p1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method
