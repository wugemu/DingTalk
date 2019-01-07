.class public final Lbbz$a;
.super Ljava/lang/Object;
.source "CommentDataProvider.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lbbz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    invoke-static {}, Lbbp;->d()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 81
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
