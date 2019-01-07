.class public final Ldjc;
.super Ljava/lang/Object;
.source "ChatWindowManager.java"


# static fields
.field private static c:Ldjc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Ldjc;->a:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjc;->b:Z

    return-void
.end method

.method public static declared-synchronized c()Ldjc;
    .locals 2

    .prologue
    .line 56
    const-class v1, Ldjc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldjc;->c:Ldjc;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ldjc;

    invoke-direct {v0}, Ldjc;-><init>()V

    sput-object v0, Ldjc;->c:Ldjc;

    .line 59
    :cond_0
    sget-object v0, Ldjc;->c:Ldjc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjc;->b:Z

    .line 43
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldjc;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->setCurrentConversationId(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Ldjc;->a:Ljava/lang/String;

    .line 26
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/ConversationService;->setCurrentConversationId(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjc;->b:Z

    .line 48
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->setCurrentConversationId(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "windowCid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldjc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-object v1, p0, Ldjc;->a:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->setCurrentConversationId(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
