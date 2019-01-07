.class final Leii$6;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leii;


# direct methods
.method constructor <init>(Leii;)V
    .locals 0
    .param p1, "this$0"    # Leii;

    .prologue
    .line 354
    iput-object p1, p0, Leii$6;->a:Leii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    iget-object v1, p0, Leii$6;->a:Leii;

    invoke-static {v1}, Leii;->d(Leii;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Leii$6;->a:Leii;

    invoke-static {v1}, Leii;->d(Leii;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    .local v0, "topicModels":Ljava/util/List;, "Ljava/util/List<Lejx;>;"
    iget-object v1, p0, Leii$6;->a:Leii;

    invoke-static {v1}, Leii;->d(Leii;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 362
    iget-object v1, p0, Leii$6;->a:Leii;

    invoke-static {v1, v0}, Leii;->b(Leii;Ljava/util/List;)V

    goto :goto_0
.end method
