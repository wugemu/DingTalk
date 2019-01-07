.class public Lgan;
.super Ljava/lang/Object;
.source "FavConversationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgan$a;
    }
.end annotation


# static fields
.field public static volatile a:Lgan;


# instance fields
.field b:Landroid/os/Handler;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgan$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/wukong/im/ConversationService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgan;->c:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgan;->d:Ljava/util/HashMap;

    .line 108
    new-instance v0, Lgan$2;

    invoke-direct {v0, p0}, Lgan$2;-><init>(Lgan;)V

    iput-object v0, p0, Lgan;->b:Landroid/os/Handler;

    .line 41
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 42
    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iput-object v0, p0, Lgan;->e:Lcom/alibaba/wukong/im/ConversationService;

    .line 43
    return-void
.end method

.method public static a()Lgan;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lgan;->a:Lgan;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lgan;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lgan;->a:Lgan;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lgan;

    invoke-direct {v0}, Lgan;-><init>()V

    sput-object v0, Lgan;->a:Lgan;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lgan;->a:Lgan;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    .line 130
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 131
    .local v0, "dSbStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 132
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 133
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 134
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lgan;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgan;

    .prologue
    .line 18
    iget-object v0, p0, Lgan;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lgan;Ljava/lang/String;I)V
    .locals 2
    .param p0, "x0"    # Lgan;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 18
    .line 1102
    iget-object v0, p0, Lgan;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1103
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1104
    invoke-static {p1, p2}, Lgan;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1105
    iget-object v1, p0, Lgan;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    return-void
.end method

.method static synthetic b(Lgan;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgan;

    .prologue
    .line 18
    iget-object v0, p0, Lgan;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILgan$a;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "listener"    # Lgan$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lgan;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgan;->c:Ljava/util/HashMap;

    .line 62
    :cond_0
    iget-object v0, p0, Lgan;->d:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgan;->d:Ljava/util/HashMap;

    .line 70
    :cond_1
    iget-object v0, p0, Lgan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lgan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {p3, v0}, Lgan$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 99
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lgan;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lgan;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lgan;->e:Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lgan$1;

    invoke-direct {v1, p0, p1, p2}, Lgan$1;-><init>(Lgan;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lgan$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
