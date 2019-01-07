.class final Lbgu$2;
.super Ljava/lang/Object;
.source "DataSourceDingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgu;->i()I
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
    .line 1079
    iput-object p1, p0, Lbgu$2;->b:Lbgu;

    iput-object p2, p0, Lbgu$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1083
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "DROP TABLE IF EXISTS "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "tbdinglist"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, "deleteDingTable":Ljava/lang/String;
    iget-object v3, p0, Lbgu$2;->b:Lbgu;

    invoke-static {v3}, Lbgu;->b(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v3, p0, Lbgu$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1087
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "DROP TABLE IF EXISTS "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "tbdingcontent"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "deleteDingContentTable":Ljava/lang/String;
    iget-object v3, p0, Lbgu$2;->b:Lbgu;

    invoke-static {v3}, Lbgu;->c(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v3, p0, Lbgu$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    .end local v0    # "deleteDingContentTable":Ljava/lang/String;
    .end local v1    # "deleteDingTable":Ljava/lang/String;
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v2

    .line 1091
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "drop ding tables failed"

    invoke-static {v3, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
