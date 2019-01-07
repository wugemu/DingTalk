.class public final Ldxq$1;
.super Lcmg;
.source "GroupBillServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldto;",
        "Ldrj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxq;


# direct methods
.method public constructor <init>(Ldxq;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxq;

    .prologue
    .line 64
    .local p2, "x0":Lcma;, "Lcma<Ldrj;>;"
    iput-object p1, p0, Ldxq$1;->a:Ldxq;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    check-cast p1, Ldto;

    .line 2019
    if-nez p1, :cond_0

    .line 2020
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2022
    :cond_0
    new-instance v0, Ldrj;

    invoke-direct {v0}, Ldrj;-><init>()V

    .line 2023
    iget-object v1, p1, Ldto;->a:Ljava/lang/String;

    iput-object v1, v0, Ldrj;->a:Ljava/lang/String;

    goto :goto_0
.end method
