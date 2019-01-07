.class Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;
.super Ljava/lang/Object;
.source "KeyLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/utils/KeyLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockInfo"
.end annotation


# instance fields
.field private final current:Ljava/util/concurrent/Semaphore;

.field private lockCount:I


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Semaphore;)V
    .locals 1
    .param p1, "current"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->current:Ljava/util/concurrent/Semaphore;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->lockCount:I

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Semaphore;Lcom/alibaba/doraemon/utils/KeyLock$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/Semaphore;
    .param p2, "x1"    # Lcom/alibaba/doraemon/utils/KeyLock$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;-><init>(Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$106(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;

    .prologue
    .line 107
    iget v0, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->lockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->lockCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;

    .prologue
    .line 107
    iget v0, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->lockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->lockCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->current:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method
