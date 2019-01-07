.class public final Ldjw;
.super Ljava/lang/Object;
.source "InitializeHelper.java"


# static fields
.field private static h:Ldjw;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;

.field public c:Lcom/alibaba/wukong/im/MessageChangeListener;

.field public d:Lcom/alibaba/wukong/im/MessageListener;

.field public e:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field public f:Lcom/alibaba/wukong/im/ConversationListener;

.field public g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjw;->a:Ljava/util/HashMap;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Ldjw;->b:Ljava/lang/Boolean;

    .line 140
    new-instance v0, Ldjw$1;

    invoke-direct {v0, p0}, Ldjw$1;-><init>(Ldjw;)V

    iput-object v0, p0, Ldjw;->c:Lcom/alibaba/wukong/im/MessageChangeListener;

    .line 154
    new-instance v0, Ldjw$2;

    invoke-direct {v0, p0}, Ldjw$2;-><init>(Ldjw;)V

    iput-object v0, p0, Ldjw;->d:Lcom/alibaba/wukong/im/MessageListener;

    .line 714
    new-instance v0, Ldjw$3;

    invoke-direct {v0, p0}, Ldjw$3;-><init>(Ldjw;)V

    iput-object v0, p0, Ldjw;->e:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 932
    new-instance v0, Ldjw$5;

    invoke-direct {v0, p0}, Ldjw$5;-><init>(Ldjw;)V

    iput-object v0, p0, Ldjw;->f:Lcom/alibaba/wukong/im/ConversationListener;

    .line 114
    return-void
.end method

.method public static declared-synchronized a()Ldjw;
    .locals 2

    .prologue
    .line 117
    const-class v1, Ldjw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldjw;->h:Ldjw;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ldjw;

    invoke-direct {v0}, Ldjw;-><init>()V

    sput-object v0, Ldjw;->h:Ldjw;

    .line 120
    :cond_0
    sget-object v0, Ldjw;->h:Ldjw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldjw;Ljava/util/List;Z)V
    .locals 3
    .param p0, "x0"    # Ldjw;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 103
    .line 1898
    if-eqz p1, :cond_2

    .line 1899
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1900
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1901
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1902
    if-eqz v0, :cond_0

    .line 1903
    if-nez p2, :cond_1

    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1904
    :cond_1
    invoke-static {}, Ldbq;->a()Ldbq;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldbq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    return-void
.end method
