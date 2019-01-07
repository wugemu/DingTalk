.class final Leqw$1;
.super Ljava/lang/Object;
.source "DingSearchPresenter.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leqw;


# direct methods
.method constructor <init>(Leqw;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leqw;

    .prologue
    .line 74
    iput-object p1, p0, Leqw$1;->b:Leqw;

    iput-object p2, p0, Leqw$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leqw$1$1;

    invoke-direct {v1, p0, p2, p1}, Leqw$1$1;-><init>(Leqw$1;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 126
    return-void
.end method
