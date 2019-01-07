.class public final Lelk$5;
.super Lifh;
.source "ChannelLogSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelk;


# direct methods
.method public constructor <init>(Lelk;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lelk;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lelk$5;->a:Lelk;

    invoke-direct {p0, p2}, Lifh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lifg;)V
    .locals 3
    .param p1, "command"    # Lifg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v0, "channellog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "channellog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lifg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v0, "thread"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1030
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$1;

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1036
    const-string/jumbo v0, "dump_thread"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 123
    :cond_1
    const-string/jumbo v0, "service"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1082
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$2;

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/tools/ThreadDumpUtil$2;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "dump_service"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lelk$5$1;

    invoke-direct {v1, p0}, Lelk$5$1;-><init>(Lelk$5;)V

    const-string/jumbo v2, "dump_thread_all"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
