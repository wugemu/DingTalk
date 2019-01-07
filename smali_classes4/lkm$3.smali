.class final Llkm$3;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhk",
        "<",
        "Llgs$b;",
        "Llgs$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    check-cast p1, Llgs$b;

    .line 1182
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->d()Llkr;

    invoke-static {p1}, Llkr;->a(Llgs$b;)Llgs$b;

    move-result-object v0

    .line 179
    return-object v0
.end method
