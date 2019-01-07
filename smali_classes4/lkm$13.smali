.class final Llkm$13;
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
        "Llgq;",
        "Llgq$a;",
        "Llgq$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, Llgq;

    check-cast p2, Llgq$a;

    .line 1147
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->e()Llkk;

    invoke-static {p2}, Llkk;->b(Llgq$a;)Llgq$a;

    move-result-object v0

    .line 144
    return-object v0
.end method
