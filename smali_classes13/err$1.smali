.class final Lerr$1;
.super Ljava/lang/Object;
.source "PublicGroupSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lerr;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lerr;


# direct methods
.method constructor <init>(Lerr;)V
    .locals 0
    .param p1, "this$0"    # Lerr;

    .prologue
    .line 93
    iput-object p1, p0, Lerr$1;->a:Lerr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 93
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;

    .line 2096
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v3, v0, Lerr;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-nez v0, :cond_5

    :cond_0
    move v2, v1

    .line 2097
    :goto_0
    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 2096
    :goto_1
    invoke-static {v3, v4, v2, v0, v5}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2099
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v0, v0, Lerr;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2103
    const-string/jumbo v2, "searchPublicConversation %d"

    new-array v3, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 3050
    const-string/jumbo v0, "search"

    invoke-static {v0, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_8

    .line 2106
    :cond_1
    iget-object v0, p0, Lerr$1;->a:Lerr;

    const/4 v2, 0x0

    iput v2, v0, Lerr;->g:I

    .line 2107
    iget-object v0, p0, Lerr$1;->a:Lerr;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lerr;->f:Z

    .line 2112
    :goto_3
    if-eqz p1, :cond_2

    .line 2113
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    iget-object v3, p0, Lerr$1;->a:Lerr;

    iget-object v3, v3, Lerr;->e:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lerr;->a(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    :cond_2
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iput-boolean v1, v0, Lerr;->j:Z

    .line 2121
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-boolean v0, v0, Lerr;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget v0, v0, Lerr;->h:I

    if-le v0, v6, :cond_a

    .line 2122
    :cond_3
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iput v1, v0, Lerr;->h:I

    .line 2123
    iget-object v0, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v0}, Lerr;->o()V

    .line 2128
    :cond_4
    :goto_4
    return-void

    .line 2096
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    .line 2097
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->logMap:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move v0, v1

    .line 2103
    goto :goto_2

    .line 2109
    :cond_8
    :try_start_1
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget v2, v0, Lerr;->g:I

    add-int/lit8 v2, v2, 0x64

    iput v2, v0, Lerr;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2116
    :catch_0
    move-exception v0

    .line 2117
    :try_start_2
    const-string/jumbo v2, "searchPublicConversation"

    invoke-static {v2, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2120
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iput-boolean v1, v0, Lerr;->j:Z

    .line 2121
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-boolean v0, v0, Lerr;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget v0, v0, Lerr;->h:I

    if-le v0, v6, :cond_b

    .line 2122
    :cond_9
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iput v1, v0, Lerr;->h:I

    .line 2123
    iget-object v0, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v0}, Lerr;->o()V

    goto :goto_4

    .line 2126
    :cond_a
    iget-object v0, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v0}, Lerr;->a()V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v0}, Lerr;->a()V

    goto :goto_4

    .line 2120
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lerr$1;->a:Lerr;

    iput-boolean v1, v2, Lerr;->j:Z

    .line 2121
    iget-object v2, p0, Lerr$1;->a:Lerr;

    iget-boolean v2, v2, Lerr;->f:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lerr$1;->a:Lerr;

    iget v2, v2, Lerr;->h:I

    if-le v2, v6, :cond_d

    .line 2122
    :cond_c
    iget-object v2, p0, Lerr$1;->a:Lerr;

    iput v1, v2, Lerr;->h:I

    .line 2123
    iget-object v1, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v1}, Lerr;->o()V

    .line 2126
    :goto_5
    throw v0

    :cond_d
    iget-object v1, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v1}, Lerr;->a()V

    goto :goto_5
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v0, v0, Lerr;->c:Leoe;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v0, v0, Lerr;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v0, v0, Lerr;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v0, v0, Lerr;->c:Leoe;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v4}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 145
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34be

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 146
    const-string/jumbo v0, "searchPublicConversation exception %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lerr$1;->a:Lerr;

    iget-object v0, v0, Lerr;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lerr$1;->a:Lerr;

    invoke-virtual {v0}, Lerr;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 134
    return-void
.end method
