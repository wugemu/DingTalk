.class final Lrx/internal/util/InternalObservableUtils$j;
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
    name = "j"
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

.field private final b:I


# direct methods
.method constructor <init>(Llgs;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$j;, "Lrx/internal/util/InternalObservableUtils$j<TT;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$j;->a:Llgs;

    .line 274
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$j;->b:I

    .line 275
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 268
    .line 9279
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$j;, "Lrx/internal/util/InternalObservableUtils$j<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$j;->a:Llgs;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$j;->b:I

    .line 9858
    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->a(Llgs;I)Llkc;

    move-result-object v0

    .line 268
    return-object v0
.end method
