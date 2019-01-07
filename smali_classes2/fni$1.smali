.class final Lfni$1;
.super Ljava/lang/Object;
.source "OrgUserNameDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfni;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lfni;


# direct methods
.method constructor <init>(Lfni;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lfni;

    .prologue
    .line 49
    iput-object p1, p0, Lfni$1;->c:Lfni;

    iput-object p2, p0, Lfni$1;->a:Ljava/util/List;

    iput-object p3, p0, Lfni$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfni$1;->c:Lfni;

    invoke-static {v4}, Lfni;->b(Lfni;)Lcom/alibaba/bee/DBManager;

    move-result-object v4

    iget-object v5, p0, Lfni$1;->c:Lfni;

    invoke-static {v5}, Lfni;->a(Lfni;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    const-class v7, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    const-string/jumbo v8, "tb_org_username"

    .line 55
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lfni$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfrw;

    .line 57
    .local v2, "object":Lfrw;
    if-eqz v2, :cond_0

    .line 58
    invoke-static {v2}, Lfrw;->a(Lfrw;)Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    move-result-object v1

    .line 59
    .local v1, "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 63
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 64
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 65
    iget-object v5, p0, Lfni$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    .end local v2    # "object":Lfrw;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v3}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 71
    :cond_1
    invoke-static {v3}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method
