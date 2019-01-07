.class public final Larl$12;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Larl;


# direct methods
.method public constructor <init>(Larl;Lapv;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 163
    iput-object p1, p0, Larl$12;->b:Larl;

    iput-object p2, p0, Larl$12;->a:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 166
    iget-object v2, p0, Larl$12;->b:Larl;

    invoke-static {v2}, Larl;->a(Larl;)V

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Larl$12;->b:Larl;

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

    .line 169
    .local v0, "folderObject":Lasl;
    if-eqz v0, :cond_0

    .line 1106
    iget-boolean v3, v0, Lasl;->i:Z

    .line 169
    if-eqz v3, :cond_0

    .line 2042
    iget-object v3, v0, Lasl;->a:Ljava/lang/String;

    .line 170
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v0    # "folderObject":Lasl;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FolderManager]getSelectedFolderIdList="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Larl$12;->a:Lapv;

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Larl$12;->a:Lapv;

    invoke-interface {v2, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 177
    :cond_2
    return-void
.end method
