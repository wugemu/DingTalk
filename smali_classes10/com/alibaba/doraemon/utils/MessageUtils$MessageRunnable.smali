.class Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/utils/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageRunnable"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 90
    return-void
.end method


# virtual methods
.method public bindMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    .line 94
    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x12

    .line 98
    const-string/jumbo v4, "MessageUtils"

    const-string/jumbo v5, "MessageRunnable run !"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 101
    .local v3, "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageBeforeExe(Landroid/os/Message;)V

    goto :goto_0

    .line 105
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 106
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_1

    .line 107
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_2

    .line 150
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 153
    .restart local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageAfterExe(Landroid/os/Message;)V

    goto :goto_1

    .line 112
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    if-nez v4, :cond_5

    .line 113
    const-string/jumbo v4, "MessageUtils"

    const-string/jumbo v5, "message runnable is not binded with message"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_4

    .line 150
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 153
    .restart local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageAfterExe(Landroid/os/Message;)V

    goto :goto_2

    .line 117
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 118
    .local v2, "handler":Landroid/os/Handler;
    if-nez v2, :cond_7

    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_6

    .line 150
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 153
    .restart local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageAfterExe(Landroid/os/Message;)V

    goto :goto_3

    .line 122
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_7
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_8

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 126
    :cond_8
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$100()Ljava/lang/reflect/Field;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_b

    .line 128
    :try_start_4
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$100()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 129
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_a

    .line 130
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v0, v4}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    :goto_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_9

    .line 150
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    :cond_9
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 153
    .restart local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageAfterExe(Landroid/os/Message;)V

    goto :goto_5

    .line 132
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_a
    :try_start_5
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 135
    .end local v0    # "callback":Landroid/os/Handler$Callback;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 140
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_b
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$200()Ljava/lang/reflect/Field;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_c

    .line 142
    :try_start_7
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$200()Ljava/lang/reflect/Field;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iget-object v4, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 149
    :cond_c
    :goto_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_d

    .line 150
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    :cond_d
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 153
    .restart local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v5, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageAfterExe(Landroid/os/Message;)V

    goto :goto_7

    .line 144
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :catch_1
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 149
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_e

    .line 150
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    :cond_e
    invoke-static {}, Lcom/alibaba/doraemon/utils/MessageUtils;->access$000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;

    .line 153
    .restart local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    iget-object v6, p0, Lcom/alibaba/doraemon/utils/MessageUtils$MessageRunnable;->mMessage:Landroid/os/Message;

    invoke-interface {v3, v6}, Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;->onMessageAfterExe(Landroid/os/Message;)V

    goto :goto_8

    .line 154
    .end local v3    # "listener":Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
    :cond_f
    throw v4

    .line 155
    :cond_10
    return-void
.end method
