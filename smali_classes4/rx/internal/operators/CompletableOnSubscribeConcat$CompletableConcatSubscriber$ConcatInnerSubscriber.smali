.class final Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Llgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConcatInnerSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x646290c7e039ac74L


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    .prologue
    .line 137
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->b()V

    .line 155
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    .line 1098
    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->unsubscribe()V

    .line 1099
    invoke-virtual {v0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public final onSubscribe(Llgz;)V
    .locals 1
    .param p1, "d"    # Llgz;

    .prologue
    .line 144
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->b:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->set(Ljava/lang/Object;)V

    .line 145
    return-void
.end method
