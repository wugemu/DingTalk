.class final Llkm$11;
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
        "Llgw;",
        "Llgw$a;",
        "Llgw$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    check-cast p1, Llgw;

    check-cast p2, Llgw$a;

    .line 1126
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->d()Llkr;

    move-result-object v0

    .line 1128
    invoke-static {}, Llks;->a()Llkr;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1129
    :goto_0
    return-object p2

    .line 1132
    :cond_0
    new-instance v0, Llhw;

    new-instance v1, Llhy;

    invoke-direct {v1, p2}, Llhy;-><init>(Llgw$a;)V

    invoke-static {v1}, Llkr;->a(Llgs$a;)Llgs$a;

    move-result-object v1

    invoke-direct {v0, v1}, Llhw;-><init>(Llgs$a;)V

    move-object p2, v0

    .line 122
    goto :goto_0
.end method
