.class final Lekv$1;
.super Ljava/lang/Object;
.source "UserSecurityDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekv;->a(Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lekv;


# direct methods
.method constructor <init>(Lekv;Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lekv;

    .prologue
    .line 47
    iput-object p1, p0, Lekv$1;->c:Lekv;

    iput-object p2, p0, Lekv$1;->a:Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    iput-object p3, p0, Lekv$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lekv$1;->c:Lekv;

    invoke-static {v2}, Lekv;->b(Lekv;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    iget-object v3, p0, Lekv$1;->c:Lekv;

    invoke-static {v3}, Lekv;->a(Lekv;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    const-class v5, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    const-string/jumbo v6, "tbusersecurity"

    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lekv$1;->a:Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 54
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 55
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 56
    iget-object v2, p0, Lekv$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v1}, Lekv;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {v1}, Lekv;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lekv;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method
