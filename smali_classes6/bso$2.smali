.class public final Lbso$2;
.super Lcmg;
.source "DeviceRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lbsi;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lbsi;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbso;


# direct methods
.method public constructor <init>(Lbso;Lcma;I)V
    .locals 0
    .param p1, "this$0"    # Lbso;

    .prologue
    .line 193
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lbsi;>;>;"
    iput-object p1, p0, Lbso$2;->b:Lbso;

    iput p3, p0, Lbso$2;->a:I

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 193
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 202
    invoke-super {p0}, Lcmg;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 203
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    iget v1, p0, Lbso$2;->a:I

    if-lez v1, :cond_0

    .line 204
    iget v1, p0, Lbso$2;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 206
    :cond_0
    return-object v0
.end method
