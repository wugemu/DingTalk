.class final Lido$1;
.super Ljava/lang/Object;
.source "SyncLogger.java"

# interfaces
.implements Lcom/alibaba/doraemon/crash/CrashHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lido;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lido;


# direct methods
.method constructor <init>(Lido;)V
    .locals 0
    .param p1, "this$0"    # Lido;

    .prologue
    .line 53
    iput-object p1, p0, Lido$1;->a:Lido;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaughtCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    iget-object v0, p0, Lido$1;->a:Lido;

    .line 1034
    iget-object v0, v0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lido$1;->a:Lido;

    .line 2034
    iget-object v0, v0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/doraemon/log/FileLogger;->syncforceFlush()V

    .line 59
    :cond_0
    return-void
.end method
