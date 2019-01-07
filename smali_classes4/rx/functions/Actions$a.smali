.class final Lrx/functions/Actions$a;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/functions/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llhg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhf;


# direct methods
.method public constructor <init>(Llhf;)V
    .locals 0
    .param p1, "action"    # Llhf;

    .prologue
    .line 562
    .local p0, "this":Lrx/functions/Actions$a;, "Lrx/functions/Actions$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lrx/functions/Actions$a;->a:Llhf;

    .line 564
    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lrx/functions/Actions$a;, "Lrx/functions/Actions$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/functions/Actions$a;->a:Llhf;

    invoke-interface {v0}, Llhf;->call()V

    .line 569
    return-void
.end method
