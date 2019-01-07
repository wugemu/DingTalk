.class public Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "TraceRefChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/alibaba/doraemon/impl/trace/TraceImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final WEAKREFERENCE_STATE_DEFAULT:I = 0x0

.field public static final WEAKREFERENCE_STATE_END:I = 0x2

.field public static final WEAKREFERENCE_STATE_START:I = 0x1


# instance fields
.field private mState:I

.field public mTag:Ljava/lang/String;

.field public mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;Lcom/alibaba/doraemon/impl/trace/TraceImpl;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/TraceIdReference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;
    .param p2, "r"    # Lcom/alibaba/doraemon/impl/trace/TraceImpl;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "ref"    # Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/trace/TraceImpl;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/alibaba/doraemon/impl/trace/TraceImpl;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/trace/TraceIdReference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Lcom/alibaba/doraemon/impl/trace/TraceImpl;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;

    .line 74
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mState:I

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTag:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTag:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 77
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mState:I

    .line 85
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mState:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mState:I

    .line 81
    return-void
.end method
