.class public final Lare$1;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Lare;


# direct methods
.method public constructor <init>(Lare;Lapv;)V
    .locals 0
    .param p1, "this$0"    # Lare;

    .prologue
    .line 68
    iput-object p1, p0, Lare$1;->b:Lare;

    iput-object p2, p0, Lare$1;->a:Lapv;

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
    .line 72
    iget-object v2, p0, Lare$1;->b:Lare;

    invoke-static {v2}, Lare;->a(Lare;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "selectedFolders":Ljava/util/List;, "Ljava/util/List<Laro;>;"
    iget-object v2, p0, Lare$1;->b:Lare;

    invoke-static {v2}, Lare;->b(Lare;)Ljava/util/Map;

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

    check-cast v0, Laro;

    .line 76
    .local v0, "folder":Laro;
    if-eqz v0, :cond_0

    .line 1075
    iget-boolean v3, v0, Laro;->g:Z

    .line 80
    if-eqz v3, :cond_0

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0    # "folder":Laro;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[AliMailFolderManager]getSelectedFolderList selectedFolders.size="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lare$1;->a:Lapv;

    invoke-static {v2, v1}, Lawg;->a(Lapv;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
