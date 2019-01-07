.class final Lejt$2;
.super Ljava/lang/Object;
.source "HomeOADropMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lejt;


# direct methods
.method constructor <init>(Lejt;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lejt;

    .prologue
    .line 219
    iput-object p1, p0, Lejt$2;->b:Lejt;

    iput-object p2, p0, Lejt$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    iget-object v1, p0, Lejt$2;->b:Lejt;

    iget-object v2, p0, Lejt$2;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lejt;->a(Lejt;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "orgMicroAPPObjectWrappers":Ljava/util/List;, "Ljava/util/List<Lgts;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lejt$2;->b:Lejt;

    invoke-static {v1}, Lejt;->a(Lejt;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lejt$2;->b:Lejt;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lejt;->b(Lejt;Ljava/util/List;)Ljava/util/List;

    .line 227
    :cond_0
    iget-object v1, p0, Lejt$2;->b:Lejt;

    invoke-static {v1}, Lejt;->a(Lejt;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    iget-object v1, p0, Lejt$2;->b:Lejt;

    invoke-static {v1}, Lejt;->a(Lejt;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lejt$2$1;

    invoke-direct {v2, p0}, Lejt$2$1;-><init>(Lejt$2;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_1
    return-void
.end method
