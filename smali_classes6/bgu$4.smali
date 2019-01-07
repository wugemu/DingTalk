.class final Lbgu$4;
.super Ljava/lang/Object;
.source "DataSourceDingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgu;->b(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lbgu;


# direct methods
.method constructor <init>(Lbgu;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbgu;

    .prologue
    .line 1202
    iput-object p1, p0, Lbgu$4;->c:Lbgu;

    iput-object p2, p0, Lbgu$4;->a:Ljava/util/List;

    iput-object p3, p0, Lbgu$4;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1206
    :try_start_0
    iget-object v0, p0, Lbgu$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1207
    .local v7, "id":Ljava/lang/Long;
    iget-object v0, p0, Lbgu$4;->c:Lbgu;

    invoke-static {v0}, Lbgu;->d(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDing;

    const-string/jumbo v3, "tbdinglist"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "dingId"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v9, "=?"

    aput-object v9, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lbgu$4;->c:Lbgu;

    invoke-static {v0}, Lbgu;->e(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    const-string/jumbo v3, "tbdingcontent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "dingId"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v9, "=?"

    aput-object v9, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lbgu$4;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1211
    .end local v7    # "id":Ljava/lang/Long;
    :catch_0
    move-exception v6

    .line 1212
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "remove dings failed"

    invoke-static {v0, v6}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1214
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method
