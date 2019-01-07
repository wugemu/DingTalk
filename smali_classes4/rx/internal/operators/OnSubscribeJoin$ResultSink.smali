.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.super Ljava/util/HashMap;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;,
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "TT",
        "Left;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074e6f3404b26c4L


# instance fields
.field final group:Llkx;

.field leftDone:Z

.field leftId:I

.field rightDone:Z

.field rightId:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final subscriber:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin;Llgy;)V
    .locals 1
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeJoin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    .local p2, "subscriber":Llgy;, "Llgy<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    .line 83
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 84
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    .line 85
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    .line 88
    return-void
.end method


# virtual methods
.method final leftMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    return-object p0
.end method

.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v2, v3}, Llgy;->a(Llgz;)V

    .line 97
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V

    .line 98
    .local v0, "s1":Llgy;, "Llgy<TTLeft;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V

    .line 100
    .local v1, "s2":Llgy;, "Llgy<TTRight;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v2, v0}, Llkx;->a(Llgz;)V

    .line 101
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v2, v1}, Llkx;->a(Llgz;)V

    .line 103
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin;->a:Llgs;

    invoke-virtual {v2, v0}, Llgs;->a(Llgy;)Llgz;

    .line 104
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin;->b:Llgs;

    invoke-virtual {v2, v1}, Llgs;->a(Llgy;)Llgz;

    .line 105
    return-void
.end method
