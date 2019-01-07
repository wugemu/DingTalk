.class public final Llht;
.super Ljava/lang/Object;
.source "OperatorDoOnSubscribe.java"

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
.field private final a:Llhf;


# direct methods
.method public constructor <init>(Llhf;)V
    .locals 0
    .param p1, "subscribe"    # Llhf;

    .prologue
    .line 34
    .local p0, "this":Llht;, "Llht<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Llht;->a:Llhf;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Llht;, "Llht<TT;>;"
    check-cast p1, Llgy;

    .line 1040
    iget-object v0, p0, Llht;->a:Llhf;

    invoke-interface {v0}, Llhf;->call()V

    .line 1043
    invoke-static {p1}, Llkj;->a(Llgy;)Llgy;

    move-result-object v0

    .line 27
    return-object v0
.end method
