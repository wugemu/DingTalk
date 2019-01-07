.class public final Lrx/subjects/SubjectSubscriptionManager$b;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method public constructor <init>(Llgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$b;->b:Z

    .line 219
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$b;->a:Llgy;

    .line 220
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$b;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 232
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 227
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$b;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 228
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
    .line 223
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$b;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 224
    return-void
.end method
