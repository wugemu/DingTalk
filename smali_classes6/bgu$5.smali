.class final Lbgu$5;
.super Ljava/lang/Object;
.source "DataSourceDingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgu;->g()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lbgu;


# direct methods
.method constructor <init>(Lbgu;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbgu;

    .prologue
    .line 1227
    iput-object p1, p0, Lbgu$5;->b:Lbgu;

    iput-object p2, p0, Lbgu$5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1231
    :try_start_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1232
    .local v6, "deleted":Ljava/lang/String;
    iget-object v0, p0, Lbgu$5;->b:Lbgu;

    invoke-static {v0}, Lbgu;->f(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDing;

    const-string/jumbo v3, "tbdinglist"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "dingOperationStatus"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v9, "=?"

    aput-object v9, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1233
    .local v8, "num":I
    iget-object v0, p0, Lbgu$5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    .end local v6    # "deleted":Ljava/lang/String;
    .end local v8    # "num":I
    :goto_0
    return-void

    .line 1234
    :catch_0
    move-exception v7

    .line 1235
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "clear deleted dings failed"

    invoke-static {v0, v7}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
