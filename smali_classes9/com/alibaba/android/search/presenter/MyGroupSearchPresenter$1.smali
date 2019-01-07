.class final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;
.super Ljava/lang/Object;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput-wide p2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 262
    const-string/jumbo v0, "searchClickHistoryGroups exception %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Recommend:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 1087
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    .line 266
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 233
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1236
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->a:J

    sub-long/2addr v4, v8

    .line 1237
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 1240
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 1241
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1243
    const-string/jumbo v2, "cid"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    const-string/jumbo v2, "title"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const-string/jumbo v2, "score"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string/jumbo v2, "modifyTime"

    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 1248
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 2087
    iput-object v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p:Ljava/lang/String;

    .line 1250
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "click_history"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 3087
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    .line 1251
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Recommend:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 4087
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    .line 233
    return-void

    .line 1253
    :cond_1
    const-string/jumbo v0, "searchClickHistoryGroups invalid conversation"

    new-array v1, v6, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
