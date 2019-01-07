.class final Lrx/internal/util/InternalObservableUtils$l;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Llhj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llhj",
        "<",
        "Llkc",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$l;, "Lrx/internal/util/InternalObservableUtils$l<TT;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$l;->a:Llgs;

    .line 249
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    .line 9253
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$l;, "Lrx/internal/util/InternalObservableUtils$l<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$l;->a:Llgs;

    .line 9559
    invoke-static {v0}, Lrx/internal/operators/OperatorReplay;->a(Llgs;)Llkc;

    move-result-object v0

    .line 244
    return-object v0
.end method
