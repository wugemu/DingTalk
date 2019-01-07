.class public final Llhs;
.super Ljava/lang/Object;
.source "OperatorDoAfterTerminate.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhf;


# direct methods
.method public constructor <init>(Llhf;)V
    .locals 2
    .param p1, "action"    # Llhf;

    .prologue
    .line 37
    .local p0, "this":Llhs;, "Llhs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Llhs;->a:Llhf;

    .line 42
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Llhs;, "Llhs<TT;>;"
    check-cast p1, Llgy;

    .line 1046
    new-instance v0, Llhs$1;

    invoke-direct {v0, p0, p1, p1}, Llhs$1;-><init>(Llhs;Llgy;Llgy;)V

    .line 34
    return-object v0
.end method
