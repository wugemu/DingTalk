.class public Lcom/alibaba/android/search/model/SuggestionGuideModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "SuggestionGuideModel.java"


# static fields
.field private static final serialVersionUID:J = 0x48f17c79c41a5c95L


# instance fields
.field private mId:J

.field private mJumpUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SuggestionGuide:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/SuggestionGuideModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 41
    iget-wide v0, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->id:J

    iput-wide v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mId:J

    .line 42
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mTitle:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->jumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mJumpUrl:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mKeyword:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getJumpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mJumpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/SuggestionGuideModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/search/model/BaseModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V

    .line 71
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "suggestion_guide"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mJumpUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/model/SuggestionGuideModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
