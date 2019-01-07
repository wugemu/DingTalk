.class final Lbbl$1;
.super Ljava/lang/Object;
.source "DingAdsDataCenter.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lblf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbl;


# direct methods
.method constructor <init>(Lbbl;)V
    .locals 0
    .param p1, "this$0"    # Lbbl;

    .prologue
    .line 43
    iput-object p1, p0, Lbbl$1;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 43
    check-cast p1, Lblf;

    .line 1046
    iget-object v0, p0, Lbbl$1;->a:Lbbl;

    invoke-virtual {v0, v2, p1}, Lbbl;->a(ILblf;)V

    .line 1047
    iget-object v0, p0, Lbbl$1;->a:Lbbl;

    invoke-static {v0}, Lbbl;->a(Lbbl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    if-eqz p1, :cond_0

    .line 1049
    invoke-static {v2}, Lbjz;->a(I)V

    .line 1051
    :cond_0
    iget-object v0, p0, Lbbl$1;->a:Lbbl;

    invoke-static {v0, v2}, Lbbl;->a(Lbbl;I)V

    .line 43
    return-void
.end method
