.class final Larl$13;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->a(Lapv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Larl;


# direct methods
.method constructor <init>(Larl;Lapv;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 182
    iput-object p1, p0, Larl$13;->b:Larl;

    iput-object p2, p0, Larl$13;->a:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 185
    iget-object v2, p0, Larl$13;->b:Larl;

    invoke-static {v2}, Larl;->a(Larl;)V

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lasl;>;"
    iget-object v2, p0, Larl$13;->b:Larl;

    invoke-static {v2}, Larl;->b(Larl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 188
    .local v0, "folderObject":Lasl;
    if-eqz v0, :cond_0

    .line 1106
    iget-boolean v3, v0, Lasl;->i:Z

    .line 188
    if-eqz v3, :cond_0

    .line 2042
    iget-object v3, v0, Lasl;->a:Ljava/lang/String;

    .line 189
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    .end local v0    # "folderObject":Lasl;
    :cond_1
    iget-object v2, p0, Larl$13;->a:Lapv;

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Larl$13;->a:Lapv;

    invoke-interface {v2, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 195
    :cond_2
    return-void
.end method
