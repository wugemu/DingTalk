.class Lcom/alibaba/bee/impl/DBAdapter$2;
.super Ljava/lang/Object;
.source "DBAdapter.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


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
    .line 346
    iput-object p1, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->this$0:Lcom/alibaba/bee/impl/DBAdapter;

    iput-object p2, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    iput-object p3, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$dbName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteTransactionListener;->onBegin()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterTransactionBegin(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onCommit()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteTransactionListener;->onCommit()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionCommit(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onRollback()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$listener:Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteTransactionListener;->onRollback()V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$2;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionRollback(Ljava/lang/String;)V

    .line 369
    return-void
.end method
