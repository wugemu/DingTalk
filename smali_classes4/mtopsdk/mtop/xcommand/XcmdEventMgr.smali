.class public Lmtopsdk/mtop/xcommand/XcmdEventMgr;
.super Ljava/lang/Object;
.source "XcmdEventMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/xcommand/XcmdEventMgr$1;,
        Lmtopsdk/mtop/xcommand/XcmdEventMgr$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XcmdEventMgr"

.field static newListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmtopsdk/mtop/xcommand/NewXcmdListener;",
            ">;"
        }
    .end annotation
.end field

.field static oxcmdListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmtopsdk/mtop/xcommand/NewXcmdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->oxcmdListeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/mtop/xcommand/XcmdEventMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lmtopsdk/mtop/xcommand/XcmdEventMgr$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/xcommand/XcmdEventMgr;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr$SingletonHolder;->xm:Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    return-object v0
.end method


# virtual methods
.method public addNewXcmdListener(Lmtopsdk/mtop/xcommand/NewXcmdListener;)V
    .locals 1
    .param p1, "newXcmdlistener"    # Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .prologue
    .line 39
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public addOrangeXcmdListener(Lmtopsdk/mtop/xcommand/NewXcmdListener;)V
    .locals 1
    .param p1, "oXcmdlistener"    # Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .prologue
    .line 58
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->oxcmdListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    :cond_0
    return-void

    .line 76
    :cond_1
    new-instance v1, Lmtopsdk/mtop/xcommand/NewXcmdEvent;

    invoke-direct {v1, p1}, Lmtopsdk/mtop/xcommand/NewXcmdEvent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "newCmdEvent":Lmtopsdk/mtop/xcommand/NewXcmdEvent;
    sget-object v3, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .line 79
    .local v2, "newListener":Lmtopsdk/mtop/xcommand/NewXcmdListener;
    :try_start_0
    invoke-interface {v2, v1}, Lmtopsdk/mtop/xcommand/NewXcmdListener;->onEvent(Lmtopsdk/mtop/xcommand/NewXcmdEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onOrangeEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance v1, Lmtopsdk/mtop/xcommand/NewXcmdEvent;

    invoke-direct {v1, p1}, Lmtopsdk/mtop/xcommand/NewXcmdEvent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "oxcmdEvent":Lmtopsdk/mtop/xcommand/NewXcmdEvent;
    sget-object v3, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->oxcmdListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .line 95
    .local v2, "oxcmdListener":Lmtopsdk/mtop/xcommand/NewXcmdListener;
    :try_start_0
    invoke-interface {v2, v1}, Lmtopsdk/mtop/xcommand/NewXcmdListener;->onEvent(Lmtopsdk/mtop/xcommand/NewXcmdEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public removeNewXcmdListener(Lmtopsdk/mtop/xcommand/NewXcmdListener;)V
    .locals 1
    .param p1, "newXcmdlistener"    # Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .prologue
    .line 48
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public removeOrangeXcmdListener(Lmtopsdk/mtop/xcommand/NewXcmdListener;)V
    .locals 1
    .param p1, "oXcmdlistener"    # Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .prologue
    .line 63
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->oxcmdListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
