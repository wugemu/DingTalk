.class public final Lrx/subjects/PublishSubject;
.super Llkv;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/PublishSubject$PublishSubjectProducer;,
        Lrx/subjects/PublishSubject$PublishSubjectState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llkv",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/subjects/PublishSubject$PublishSubjectState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/subjects/PublishSubject$PublishSubjectState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "state":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    invoke-direct {p0, p1}, Llkv;-><init>(Llgs$a;)V

    .line 67
    iput-object p1, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/PublishSubject$PublishSubjectState;

    .line 68
    return-void
.end method

.method public static a()Lrx/subjects/PublishSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/PublishSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/subjects/PublishSubject;

    new-instance v1, Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-direct {v1}, Lrx/subjects/PublishSubject$PublishSubjectState;-><init>()V

    invoke-direct {v0, v1}, Lrx/subjects/PublishSubject;-><init>(Lrx/subjects/PublishSubject$PublishSubjectState;)V

    return-object v0
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->onCompleted()V

    .line 83
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p1}, Lrx/subjects/PublishSubject$PublishSubjectState;->onError(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p1}, Lrx/subjects/PublishSubject$PublishSubjectState;->onNext(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
