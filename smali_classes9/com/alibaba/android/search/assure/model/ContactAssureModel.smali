.class public Lcom/alibaba/android/search/assure/model/ContactAssureModel;
.super Lcom/alibaba/android/search/assure/model/AssureModel;
.source "ContactAssureModel.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Leot;)V
    .locals 0
    .param p1, "pushClickResult"    # Leot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Leot;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 33
    return-void
.end method


# virtual methods
.method public parseBaseModel()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, -0x1

    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 46
    .local v4, "uid":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 47
    new-instance v3, Lesq;

    invoke-direct {v3}, Lesq;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1218
    invoke-virtual {v3, v8, v6}, Lesq;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "pushObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    .line 50
    const-string/jumbo v3, "uid.size() > 1"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 53
    .local v1, "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v1, :cond_1

    .line 54
    new-instance v0, Lcom/alibaba/android/search/model/RecommendContactModel;

    invoke-direct {v0, v1}, Lcom/alibaba/android/search/model/RecommendContactModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 55
    .local v0, "model":Lcom/alibaba/android/search/model/RecommendContactModel;
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/RecommendContactModel;->setKeyword(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    .end local v0    # "model":Lcom/alibaba/android/search/model/RecommendContactModel;
    .end local v1    # "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .end local v2    # "pushObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_1
    :goto_0
    return-void

    .line 62
    .restart local v0    # "model":Lcom/alibaba/android/search/model/RecommendContactModel;
    .restart local v1    # "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .restart local v2    # "pushObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->updateBaseModel(Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0
.end method
