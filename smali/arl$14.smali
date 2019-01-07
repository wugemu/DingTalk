.class final Larl$14;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->a(JLapv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lapv;

.field final synthetic c:Larl;


# direct methods
.method constructor <init>(Larl;JLapv;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 207
    iput-object p1, p0, Larl$14;->c:Larl;

    iput-wide p2, p0, Larl$14;->a:J

    iput-object p4, p0, Larl$14;->b:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 210
    iget-object v2, p0, Larl$14;->c:Larl;

    invoke-static {v2}, Larl;->a(Larl;)V

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    iget-object v2, p0, Larl$14;->c:Larl;

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

    .line 213
    .local v0, "folderObject":Lasl;
    if-eqz v0, :cond_0

    .line 1058
    iget-wide v4, v0, Lasl;->c:J

    .line 213
    iget-wide v6, p0, Larl$14;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 214
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v0    # "folderObject":Lasl;
    :cond_1
    iget-object v2, p0, Larl$14;->b:Lapv;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Larl$14;->b:Lapv;

    invoke-interface {v2, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 220
    :cond_2
    return-void
.end method
