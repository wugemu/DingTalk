.class final Llkj$2;
.super Llgy;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llkj;->a(Llgy;)Llgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgy;


# direct methods
.method constructor <init>(Llgy;Llgy;)V
    .locals 0

    .prologue
    .line 221
    .local p1, "subscriber":Llgy;, "Llgy<*>;"
    iput-object p2, p0, Llkj$2;->a:Llgy;

    invoke-direct {p0, p1}, Llgy;-><init>(Llgy;)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Llkj$2;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 226
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    iget-object v0, p0, Llkj$2;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 231
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
    .line 235
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llkj$2;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 236
    return-void
.end method
