.class public final Lrx/subjects/UnicastSubject;
.super Llkv;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/UnicastSubject$State;
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
.field final b:Lrx/subjects/UnicastSubject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/UnicastSubject$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/subjects/UnicastSubject$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/UnicastSubject$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    .local p1, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    invoke-direct {p0, p1}, Llkv;-><init>(Llgs$a;)V

    .line 121
    iput-object p1, p0, Lrx/subjects/UnicastSubject;->b:Lrx/subjects/UnicastSubject$State;

    .line 122
    return-void
.end method

.method public static a(ILlhf;)Lrx/subjects/UnicastSubject;
    .locals 2
    .param p0, "capacityHint"    # I
    .param p1, "onTerminated"    # Llhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Llhf;",
            ")",
            "Lrx/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lrx/subjects/UnicastSubject$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lrx/subjects/UnicastSubject$State;-><init>(IZLlhf;)V

    .line 95
    .local v0, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    new-instance v1, Lrx/subjects/UnicastSubject;

    invoke-direct {v1, v0}, Lrx/subjects/UnicastSubject;-><init>(Lrx/subjects/UnicastSubject$State;)V

    return-object v1
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->b:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0}, Lrx/subjects/UnicastSubject$State;->onCompleted()V

    .line 137
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->b:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0, p1}, Lrx/subjects/UnicastSubject$State;->onError(Ljava/lang/Throwable;)V

    .line 132
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
    .line 126
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->b:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0, p1}, Lrx/subjects/UnicastSubject$State;->onNext(Ljava/lang/Object;)V

    .line 127
    return-void
.end method
