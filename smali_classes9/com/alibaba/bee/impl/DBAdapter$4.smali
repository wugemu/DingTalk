.class Lcom/alibaba/bee/impl/DBAdapter$4;
.super Ljava/lang/Object;
.source "DBAdapter.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/bee/impl/DBAdapter;->beginTransaction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/bee/impl/DBAdapter;

.field final synthetic val$dbName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/bee/impl/DBAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/bee/impl/DBAdapter;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/alibaba/bee/impl/DBAdapter$4;->this$0:Lcom/alibaba/bee/impl/DBAdapter;

    iput-object p2, p0, Lcom/alibaba/bee/impl/DBAdapter$4;->val$dbName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$4;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterTransactionBegin(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public onCommit()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$4;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionCommit(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public onRollback()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter$4;->val$dbName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionRollback(Ljava/lang/String;)V

    .line 415
    return-void
.end method
