.class public Lcom/alibaba/android/search/model/MicroTemplateModel;
.super Lcom/alibaba/android/search/model/SearchLogoModel;
.source "MicroTemplateModel.java"


# static fields
.field private static final APPROVE_URL:Ljava/lang/String; = "https://aflow.dingtalk.com/dingtalk/mobile/homepage.htm#custom?corpid=%s&showmenu=true&dd_progress=false&dd_share=false&swfrom=search&TemplateManager=activate&processCode=%s&dd_from=search"

.field private static final DAILY_URL:Ljava/lang/String; = "https://landray.dingtalkapps.com/alid/app/report/createReport_new.html?id=%s&corpid=%s&showmenu=false&dd_share=false&dd_from=search"


# instance fields
.field private mCompanyName:Ljava/lang/String;

.field private mCorpId:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mLogo:Ljava/lang/String;

.field private mTemplateName:Ljava/lang/String;

.field private mTemplateType:I


# direct methods
.method public constructor <init>(Lepz;Ljava/lang/String;)V
    .locals 1
    .param p1, "searchMicroTemplateObject"    # Lepz;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/search/model/SearchLogoModel;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p1, Lepz;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mId:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lepz;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mTemplateName:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lepz;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mCorpId:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lepz;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mCompanyName:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lepz;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mLogo:Ljava/lang/String;

    .line 52
    iget v0, p1, Lepz;->f:I

    iput v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mTemplateType:I

    .line 54
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->MicroTemplate:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/MicroTemplateModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/MicroTemplateModel;->setChooseMode(I)V

    .line 56
    iput-object p2, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mKeyword:Ljava/lang/String;

    .line 57
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
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MicroTemplateModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/MicroTemplateModel;->getLogo()Ljava/lang/String;

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
    const-string/jumbo v3, "MicroTemplateModel.getAvatar"

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
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mCompanyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mTemplateName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "url":Ljava/lang/String;
    iget v1, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mTemplateType:I

    if-ne v1, v4, :cond_1

    .line 80
    const-string/jumbo v1, "https://landray.dingtalkapps.com/alid/app/report/createReport_new.html?id=%s&corpid=%s&showmenu=false&dd_share=false&dd_from=search"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mCorpId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :goto_1
    return-void

    .line 81
    :cond_1
    iget v1, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mTemplateType:I

    if-ne v1, v2, :cond_0

    .line 82
    const-string/jumbo v1, "https://aflow.dingtalk.com/dingtalk/mobile/homepage.htm#custom?corpid=%s&showmenu=true&dd_progress=false&dd_share=false&swfrom=search&TemplateManager=activate&processCode=%s&dd_from=search"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mCorpId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/alibaba/android/search/model/MicroTemplateModel;->mId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
