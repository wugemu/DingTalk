.class final Lrx/internal/util/InternalObservableUtils$a;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Llhl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llhl",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final a:Llhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhh",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhh",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$a;, "Lrx/internal/util/InternalObservableUtils$a<TT;TR;>;"
    .local p1, "collector":Llhh;, "Llhh<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$a;->a:Llhh;

    .line 374
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$a;, "Lrx/internal/util/InternalObservableUtils$a<TT;TR;>;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    return-object p1
.end method
