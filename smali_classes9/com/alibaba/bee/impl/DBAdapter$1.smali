.class Lcom/alibaba/bee/impl/DBAdapter$1;
.super Ljava/lang/Object;
.source "DBAdapter.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/bee/impl/DBAdapter;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/bee/impl/DBAdapter;

.field final synthetic val$dbName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;


# direct methods
.method constructor <init>(Lcom/alibaba/bee/impl/DBAdapter;Lcom/alibaba/bee/SQLiteTransactionListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/bee/impl/DBAdapter;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->this$0:Lcom/alibaba/bee/impl/DBAdapter;

    iput-object p2, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    iput-object p3, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$dbName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteTransactionListener;->onBegin()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterTransactionBegin(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onCommit()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteTransactionListener;->onCommit()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionCommit(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public onRollback()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteTransactionListener;->onRollback()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$1;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionRollback(Ljava/lang/String;)V

    .line 335
    return-void
.end method
