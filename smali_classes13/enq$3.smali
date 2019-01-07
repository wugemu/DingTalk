.class final Lenq$3;
.super Ljava/lang/Object;
.source "SearchAssureSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lenq;


# direct methods
.method constructor <init>(Lenq;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lenq;

    .prologue
    .line 263
    .local p0, "this":Lenq$3;, "Lenq$3;"
    iput-object p1, p0, Lenq$3;->b:Lenq;

    iput-object p2, p0, Lenq$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    .local p0, "this":Lenq$3;, "Lenq$3;"
    iget-object v0, p0, Lenq$3;->b:Lenq;

    invoke-static {v0}, Lenq;->b(Lenq;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "dbName":Ljava/lang/String;
    iget-object v0, p0, Lenq$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 268
    .local v6, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    iget-object v0, p0, Lenq$3;->b:Lenq;

    invoke-static {v0}, Lenq;->c(Lenq;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lenq;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lenq;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "searchId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v6, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->searchId:Ljava/lang/String;

    aput-object v9, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v6    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    :cond_0
    return-void
.end method
