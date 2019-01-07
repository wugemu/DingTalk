.class final Ldkz$1;
.super Ljava/lang/Object;
.source "EncryptKeyDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkz;->a(Ldlb;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlb;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Ldkz;


# direct methods
.method constructor <init>(Ldkz;Ldlb;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Ldkz;

    .prologue
    .line 66
    iput-object p1, p0, Ldkz$1;->c:Ldkz;

    iput-object p2, p0, Ldkz$1;->a:Ldlb;

    iput-object p3, p0, Ldkz$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 71
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Ldkz$1;->c:Ldkz;

    invoke-static {v4}, Ldkz;->b(Ldkz;)Lcom/alibaba/bee/DBManager;

    move-result-object v4

    iget-object v5, p0, Ldkz$1;->c:Ldkz;

    invoke-static {v5}, Ldkz;->a(Ldkz;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;

    const-class v7, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;

    const-string/jumbo v8, "tb_encrypt_key"

    .line 72
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 73
    iget-object v4, p0, Ldkz$1;->a:Ldlb;

    iget-object v4, v4, Ldlb;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldla;

    .line 74
    .local v2, "object":Ldla;
    if-eqz v2, :cond_0

    .line 1060
    if-nez v2, :cond_1

    .line 1061
    const/4 v1, 0x0

    .line 76
    .local v1, "entry":Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;
    :goto_1
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 80
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 81
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 82
    iget-object v5, p0, Ldkz$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v1    # "entry":Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;
    .end local v2    # "object":Ldla;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {v3}, Ldkz;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1063
    .restart local v2    # "object":Ldla;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;-><init>()V

    .line 1064
    iget-object v5, v2, Ldla;->a:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mCorpId:Ljava/lang/String;

    .line 1065
    iget-object v5, v2, Ldla;->b:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mKey:Ljava/lang/String;

    .line 1066
    iget-wide v6, v2, Ldla;->d:J

    iput-wide v6, v1, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mVersion:J

    .line 1067
    iget-object v5, v2, Ldla;->e:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mAlgorithm:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 88
    .end local v2    # "object":Ldla;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Ldkz;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4

    :cond_2
    invoke-static {v3}, Ldkz;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_2
.end method
