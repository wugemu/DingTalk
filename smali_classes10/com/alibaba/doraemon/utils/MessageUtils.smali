.class public Lcom/alibaba/doraemon/utils/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;,
        Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageUtils"

.field private static sHandlerCallbackField:Ljava/lang/reflect/Field;

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sMessageCallbackFiled:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lcom/alibaba/doraemon/utils/MessageUtils;->sListeners:Ljava/util/List;

    .line 23
    sput-object v2, Lcom/alibaba/doraemon/utils/MessageUtils;->sHandlerCallbackField:Ljava/lang/reflect/Field;

    .line 24
    sput-object v2, Lcom/alibaba/doraemon/utils/MessageUtils;->sMessageCallbackFiled:Ljava/lang/reflect/Field;

    .line 27
    :try_start_0
    const-class v1, Landroid/os/Handler;

    const-string/jumbo v2, "mCallback"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 28
    sput-object v1, Lcom/alibaba/doraemon/utils/MessageUtils;->sHandlerCallbackField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    const-class v1, Landroid/os/Message;

    const-string/jumbo v2, "callback"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 30
    sput-object v1, Lcom/alibaba/doraemon/utils/MessageUtils;->sMessageCallbackFiled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void

    .line 31
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/doraemon/utils/MessageUtils;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/doraemon/utils/MessageUtils;->sHandlerCallbackField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/doraemon/utils/MessageUtils;->sMessageCallbackFiled:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static obtainMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    new-instance v2, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .local v2, "messageRunnable":Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 43
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->bindMessage(Landroid/os/Message;)V

    .line 44
    sget-object v3, Lcom/alibaba/doraemon/utils/MessageUtils;->sListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 45
    .local v0, "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageRecycled(Landroid/os/Message;)V

    goto :goto_0

    .line 47
    .end local v0    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_0
    sget-object v3, Lcom/alibaba/doraemon/utils/MessageUtils;->sListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 48
    .restart local v0    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageSend(Landroid/os/Message;)V

    goto :goto_1

    .line 50
    .end local v0    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_1
    return-object v1
.end method

.method public static regMessageExeListener(Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .prologue
    .line 58
    sget-object v0, Lcom/alibaba/doraemon/utils/MessageUtils;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public static unRegMessageExeListener(Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .prologue
    .line 66
    sget-object v0, Lcom/alibaba/doraemon/utils/MessageUtils;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
