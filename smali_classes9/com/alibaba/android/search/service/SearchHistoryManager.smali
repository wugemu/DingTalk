.class public Lcom/alibaba/android/search/service/SearchHistoryManager;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;

.field private static volatile k:Lcom/alibaba/android/search/service/SearchHistoryManager;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel$ModelType;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lcom/alibaba/wukong/im/ConversationService;

.field public f:J

.field public g:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field public h:Lcom/alibaba/wukong/im/ConversationListener;

.field public i:Ljava/util/Comparator;

.field private l:I

.field private m:F

.field private n:D

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    .line 69
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    .line 71
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    .line 72
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    .line 77
    const/16 v4, 0x12c

    iput v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->l:I

    .line 82
    new-instance v4, Lcom/alibaba/android/search/service/SearchHistoryManager$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/search/service/SearchHistoryManager$1;-><init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->g:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 89
    new-instance v4, Lcom/alibaba/android/search/service/SearchHistoryManager$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/search/service/SearchHistoryManager$2;-><init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->h:Lcom/alibaba/wukong/im/ConversationListener;

    .line 106
    new-instance v4, Lcom/alibaba/android/search/service/SearchHistoryManager$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/search/service/SearchHistoryManager$3;-><init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->i:Ljava/util/Comparator;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "contactTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Friend:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployee:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "groupTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->PublicGroup:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v3, "msgTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_search_function_history"

    .line 1450
    invoke-virtual {v4, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 138
    if-eqz v4, :cond_0

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v1, "functionTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Function:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v1    # "functionTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SuggestionGuide:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    const-class v4, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/ConversationService;

    iput-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->e:Lcom/alibaba/wukong/im/ConversationService;

    .line 154
    return-void
.end method

.method public static a()Lcom/alibaba/android/search/service/SearchHistoryManager;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->k:Lcom/alibaba/android/search/service/SearchHistoryManager;

    if-nez v0, :cond_1

    .line 158
    const-class v1, Lcom/alibaba/android/search/service/SearchHistoryManager;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-object v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->k:Lcom/alibaba/android/search/service/SearchHistoryManager;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-direct {v0}, Lcom/alibaba/android/search/service/SearchHistoryManager;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->k:Lcom/alibaba/android/search/service/SearchHistoryManager;

    .line 162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    sget-object v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->k:Lcom/alibaba/android/search/service/SearchHistoryManager;

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/service/SearchHistoryManager;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    .line 4168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4197
    :cond_0
    :goto_0
    return-void

    .line 4172
    :cond_1
    const/4 v2, 0x0

    .line 4173
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v3

    .line 4174
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 4175
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4179
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4180
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4181
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 4182
    invoke-static {v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4186
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4187
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    sget-object v6, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v1, v6, :cond_6

    .line 4188
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 4189
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 4191
    goto :goto_1

    .line 4194
    :cond_4
    if-eqz v2, :cond_5

    .line 4195
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 4197
    :cond_5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;
    .param p1, "x1"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/service/SearchHistoryManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;
    .param p1, "x1"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/service/SearchHistoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 609
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "recent_search_history"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 54
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Ljava/util/List;
    .locals 6
    .param p1, "typeFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(I)Ljava/util/List;

    move-result-object v2

    .line 503
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v0, "histories":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 505
    .local v1, "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    invoke-static {v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v5}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 518
    .end local v1    # "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    :cond_2
    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;
    .param p1, "x1"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .prologue
    .line 54
    .line 4298
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->e:Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/search/service/SearchHistoryManager$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager$5;-><init>(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    iget-object v2, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 4320
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 4298
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z
    .locals 4
    .param p0, "historyItem"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .prologue
    .line 522
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 523
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->cid:Ljava/lang/String;

    .line 524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 614
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "recent_search_click_history"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V
    .locals 4
    .param p1, "historyItem"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 555
    invoke-static {p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const/4 v0, 0x0

    .line 560
    .local v0, "foundDuplicate":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 561
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-static {v2}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    iget-object v2, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->keyword:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->keyword:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v0, 0x1

    .line 560
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_3
    if-nez v0, :cond_4

    .line 572
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->i:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 577
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->l:I

    if-le v2, v3, :cond_0

    .line 579
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->l:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/search/service/SearchHistoryManager;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 54
    .line 5284
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5288
    invoke-static {}, Lcjf;->a()Lcjf;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcjf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5289
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5290
    check-cast v0, Ljava/util/List;

    .line 5291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 5292
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/service/SearchHistoryManager;->d(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/search/model/BaseModel$ModelType;)I
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 640
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/16 v0, 0x14

    .line 643
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    .locals 15
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 391
    iget-boolean v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-nez v2, :cond_0

    move-object v2, v13

    .line 395
    :goto_0
    return-object v2

    .line 394
    :cond_0
    iget-object v14, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v14

    .line 3400
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    move-object v12, v0

    .line 3401
    if-eqz v12, :cond_1

    iget-object v2, v12, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->keyword:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3402
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iget-wide v4, v12, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    iget-wide v6, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->n:D

    iget-wide v8, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->o:J

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v11}, Lesc;->a(JJDJD)D

    move-result-wide v2

    .line 3404
    iget v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->m:F

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    move-object v2, v12

    .line 395
    :goto_1
    monitor-exit v14

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    move-object v2, v13

    .line 3411
    goto :goto_1
.end method

.method public final a(I)Ljava/util/List;
    .locals 2
    .param p1, "typeFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    :goto_0
    return-object v0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v1

    .line 458
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 324
    iget-boolean v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->isDemissionColleague()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 2342
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2381
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Friend:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v3, :cond_3

    .line 2382
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v3, :cond_3

    .line 2383
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v3, :cond_3

    .line 2384
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v3, :cond_3

    .line 2385
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v3, :cond_3

    .line 2386
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployee:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v3, :cond_3

    .line 2387
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-ne v1, v3, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 2343
    :goto_1
    if-nez v1, :cond_6

    .line 330
    .local v0, "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 334
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v2

    .line 335
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/service/SearchHistoryManager;->d(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    .line 336
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .end local v0    # "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    :cond_5
    move v1, v2

    .line 2387
    goto :goto_1

    .line 2347
    :cond_6
    instance-of v1, p1, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v1, :cond_7

    .line 2348
    new-instance v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2352
    :cond_7
    instance-of v1, p1, Lcom/alibaba/android/search/model/RecommendContactModel;

    if-eqz v1, :cond_8

    move-object v1, p1

    .line 2353
    check-cast v1, Lcom/alibaba/android/search/model/RecommendContactModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUserIntimacyPushObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v1

    .line 2354
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 2355
    sget-wide v4, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->MAX_SCORE:D

    double-to-int v3, v4

    int-to-double v4, v3

    iput-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 2364
    :goto_3
    if-eqz v1, :cond_4

    .line 2366
    iget-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 2367
    iget-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 2368
    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 2370
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->matchHightlightKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2371
    new-instance v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;-><init>(Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_2

    .line 2356
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getOrgNodeItemObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2358
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getOrgNodeItemObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    sget-wide v4, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->MAX_SCORE:D

    double-to-int v3, v4

    .line 2357
    invoke-static {v1, v3}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->fromOrgNodeItemObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;I)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v1

    goto :goto_3

    .line 2359
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2361
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    const-string/jumbo v3, ""

    sget-wide v4, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->MAX_SCORE:D

    double-to-int v4, v4

    .line 2360
    invoke-static {v1, v3, v4}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->fromUserIdentity(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;I)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v1

    goto :goto_3

    .line 2373
    :cond_a
    const-string/jumbo v1, "keyword mismatch, wont commit click history"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 336
    .restart local v0    # "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .end local v0    # "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    :cond_b
    move-object v1, v0

    goto :goto_3
.end method

.method public a(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V
    .locals 5
    .param p1, "historyItem"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 584
    invoke-static {p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 606
    :goto_0
    return-void

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 589
    .local v0, "foundDuplicate":Z
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "identity":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-static {v3}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 595
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 597
    const/4 v0, 0x1

    .line 590
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 601
    :cond_2
    if-nez v0, :cond_3

    .line 602
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->i:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 474
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 475
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    sget-object v1, Lcom/alibaba/android/search/service/SearchHistoryManager;->j:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/service/SearchHistoryManager$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/search/service/SearchHistoryManager$6;-><init>(Lcom/alibaba/android/search/service/SearchHistoryManager;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method public final b()J
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 218
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_search_click_history_limit"

    const/16 v2, 0x12c

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 218
    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->l:I

    .line 221
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_click_history_intimacy_min"

    const/high16 v2, 0x3f000000    # 0.5f

    .line 220
    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->m:F

    .line 223
    invoke-static {}, Lese;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->n:D

    .line 224
    invoke-static {}, Lese;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->o:J

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->f:J

    .line 227
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-nez v0, :cond_0

    .line 2243
    sget-object v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->j:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/search/service/SearchHistoryManager$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/service/SearchHistoryManager$4;-><init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->e:Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->g:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->e:Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->h:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 234
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-wide v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->f:J

    return-wide v0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Ljava/lang/String;
    .locals 7
    .param p1, "historyItem"    # Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 652
    invoke-static {p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    .line 676
    :goto_0
    return-object v2

    .line 657
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 658
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 659
    .local v3, "types":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    if-eqz v3, :cond_1

    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v6}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    instance-of v6, v6, Lcom/alibaba/android/search/model/MsgModel;

    if-nez v6, :cond_2

    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    instance-of v6, v6, Lcom/alibaba/android/search/model/SuggestionGuideModel;

    if-eqz v6, :cond_3

    .line 661
    :cond_2
    iget-object v5, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v5}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 662
    :cond_3
    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    instance-of v6, v6, Lcom/alibaba/android/search/model/FunctionModel;

    if-eqz v6, :cond_4

    .line 663
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v6}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v6}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 665
    :cond_4
    iget-object v6, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v6}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "modelId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 672
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;>;"
    .end local v2    # "modelId":Ljava/lang/String;
    .end local v3    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SearchHistoryManager.getIdentity"

    invoke-static {v5, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v2, v4

    .line 676
    goto :goto_0
.end method

.method public b(I)Ljava/util/List;
    .locals 8
    .param p1, "typeFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel$ModelType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel$ModelType;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    .line 532
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    .line 536
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    .line 540
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    .line 544
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 545
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    .line 548
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    iget-object v1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 551
    :cond_4
    return-object v0
.end method
