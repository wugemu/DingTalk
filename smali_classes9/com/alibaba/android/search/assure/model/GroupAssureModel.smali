.class public Lcom/alibaba/android/search/assure/model/GroupAssureModel;
.super Lcom/alibaba/android/search/assure/model/AssureModel;
.source "GroupAssureModel.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Leot;)V
    .locals 0
    .param p1, "pushClickResult"    # Leot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Leot;)V

    .line 38
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
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 30
    return-void
.end method


# virtual methods
.method public parseBaseModel()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 42
    .local v1, "impl":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_0

    .line 43
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 44
    .local v0, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->title()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 46
    new-instance v2, Lcom/alibaba/android/search/model/GroupModel;

    invoke-direct {v2, v0}, Lcom/alibaba/android/search/model/GroupModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 48
    .local v2, "result":Lcom/alibaba/android/search/model/GroupModel;
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/GroupModel;->setKeyword(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/GroupModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/GroupModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    .end local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "result":Lcom/alibaba/android/search/model/GroupModel;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v2    # "result":Lcom/alibaba/android/search/model/GroupModel;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;->updateBaseModel(Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0
.end method
