.class final Llkm$9;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Llhl;


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
        "Llhl",
        "<",
        "Llgs;",
        "Llgs$a;",
        "Llgs$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Llgs;

    check-cast p2, Llgs$a;

    .line 1111
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->c()Llkn;

    invoke-static {p2}, Llkn;->b(Llgs$a;)Llgs$a;

    move-result-object v0

    .line 108
    return-object v0
.end method
