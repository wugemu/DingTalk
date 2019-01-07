.class final Leyh$1;
.super Ljava/lang/Object;
.source "UserMobileDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyh;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Leyh;


# direct methods
.method constructor <init>(Leyh;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Leyh;

    .prologue
    .line 65
    iput-object p1, p0, Leyh$1;->c:Leyh;

    iput-object p2, p0, Leyh$1;->a:Ljava/util/List;

    iput-object p3, p0, Leyh$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 70
    .local v4, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v6, p0, Leyh$1;->c:Leyh;

    invoke-virtual {v6}, Leyh;->b()Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 72
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Leyh;->d()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "size in db = "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_1

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "toDelIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 76
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    iget-wide v6, v6, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v6, p0, Leyh$1;->c:Leyh;

    invoke-virtual {v6, v5}, Leyh;->c(Ljava/util/List;)I

    .line 81
    .end local v1    # "i":I
    .end local v5    # "toDelIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    iget-object v6, p0, Leyh$1;->c:Leyh;

    invoke-static {v6}, Leyh;->b(Leyh;)Lcom/alibaba/bee/DBManager;

    move-result-object v6

    iget-object v7, p0, Leyh$1;->c:Leyh;

    invoke-static {v7}, Leyh;->a(Leyh;)Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    const-class v9, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    const-string/jumbo v10, "tbusermobile"

    invoke-static {v9, v10}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v4

    .line 82
    iget-object v6, p0, Leyh$1;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .line 83
    .local v2, "object":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    if-eqz v2, :cond_2

    .line 86
    invoke-static {v2}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->toDbEntry(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    move-result-object v0

    .line 87
    .local v0, "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 88
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 89
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 90
    iget-object v7, p0, Leyh$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 95
    .end local v0    # "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    .end local v2    # "object":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .end local v3    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    :catch_0
    move-exception v6

    if-eqz v4, :cond_3

    .line 96
    invoke-static {v4}, Leyh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 100
    :cond_3
    :goto_2
    return-void

    .line 95
    .restart local v3    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    :cond_4
    if-eqz v4, :cond_3

    .line 96
    invoke-static {v4}, Leyh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_2

    .line 95
    .end local v3    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 96
    invoke-static {v4}, Leyh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    :cond_5
    throw v6
.end method
