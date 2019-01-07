.class public final Lrx/internal/operators/OnSubscribeCreate;
.super Ljava/lang/Object;
.source "OnSubscribeCreate.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$DropEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Lrx/Emitter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/Emitter$BackpressureMode;


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate;, "Lrx/internal/operators/OnSubscribeCreate<TT;>;"
    check-cast p1, Llgy;

    .line 1047
    sget-object v0, Lrx/internal/operators/OnSubscribeCreate$1;->a:[I

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate;->b:Lrx/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lrx/Emitter$BackpressureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1065
    new-instance v0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;

    sget v1, Llin;->b:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;-><init>(Llgy;I)V

    .line 1070
    :goto_0
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1071
    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 1072
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate;->a:Llhg;

    invoke-interface {v1, v0}, Llhg;->call(Ljava/lang/Object;)V

    .line 32
    return-void

    .line 1049
    :pswitch_0
    new-instance v0, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;-><init>(Llgy;)V

    goto :goto_0

    .line 1053
    :pswitch_1
    new-instance v0, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;-><init>(Llgy;)V

    goto :goto_0

    .line 1057
    :pswitch_2
    new-instance v0, Lrx/internal/operators/OnSubscribeCreate$DropEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeCreate$DropEmitter;-><init>(Llgy;)V

    goto :goto_0

    .line 1061
    :pswitch_3
    new-instance v0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;-><init>(Llgy;)V

    goto :goto_0

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
