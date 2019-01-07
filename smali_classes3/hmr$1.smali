.class public final Lhmr$1;
.super Ljava/lang/Object;
.source "MiniAppListDataManager.java"

# interfaces
.implements Lhmd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmb;

.field final synthetic b:Lhmc;

.field final synthetic c:Lhmr;


# direct methods
.method public constructor <init>(Lhmr;Lhmb;Lhmc;)V
    .locals 0
    .param p1, "this$0"    # Lhmr;

    .prologue
    .line 74
    iput-object p1, p0, Lhmr$1;->c:Lhmr;

    iput-object p2, p0, Lhmr$1;->a:Lhmb;

    iput-object p3, p0, Lhmr$1;->b:Lhmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhoe;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    .local p1, "myMiniAppModels":Ljava/util/List;, "Ljava/util/List<Lhoe;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lhmr$1;->a:Lhmb;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lhmr$1;->a:Lhmb;

    iget-object v1, p0, Lhmr$1;->c:Lhmr;

    const-string/jumbo v2, "my_applications"

    invoke-static {v1, v2, p1}, Lhmr;->a(Lhmr;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhmb;->a(Ljava/util/List;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lhmr$1;->c:Lhmr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lhmr$1;->b:Lhmc;

    invoke-virtual {v0, v1, v2, v3}, Lhmr;->a(IZLhmc;)V

    .line 87
    return-void
.end method
