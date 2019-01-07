.class final Lrx/internal/operators/OnSubscribeCreate$DropEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


# direct methods
.method public constructor <init>(Llgy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$DropEmitter;, "Lrx/internal/operators/OnSubscribeCreate$DropEmitter<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;-><init>(Llgy;)V

    .line 218
    return-void
.end method


# virtual methods
.method final onOverflow()V
    .locals 0

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$DropEmitter;, "Lrx/internal/operators/OnSubscribeCreate$DropEmitter<TT;>;"
    return-void
.end method
