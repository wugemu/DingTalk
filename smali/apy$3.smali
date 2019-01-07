.class final Lapy$3;
.super Ljava/lang/Object;
.source "InstanceShowObjectDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapy;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapy;


# direct methods
.method constructor <init>(Lapy;)V
    .locals 0
    .param p1, "this$0"    # Lapy;

    .prologue
    .line 290
    iput-object p1, p0, Lapy$3;->a:Lapy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 293
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[InstanceShowObjectDataCenter]clearAllCache"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lapy$3;->a:Lapy;

    invoke-static {v0}, Lapy;->b(Lapy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 295
    iget-object v0, p0, Lapy$3;->a:Lapy;

    invoke-static {v0}, Lapy;->c(Lapy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 296
    iget-object v0, p0, Lapy$3;->a:Lapy;

    invoke-static {v0}, Lapy;->d(Lapy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 297
    return-void
.end method
