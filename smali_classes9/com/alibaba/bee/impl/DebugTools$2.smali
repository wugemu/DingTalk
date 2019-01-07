.class final Lcom/alibaba/bee/impl/DebugTools$2;
.super Ljava/lang/Object;
.source "DebugTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/bee/impl/DebugTools;->throwSQLiteStatementNotClosed(Lcom/alibaba/bee/SQLiteStatement;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$statement:Lcom/alibaba/bee/SQLiteStatement;


# direct methods
.method constructor <init>(Lcom/alibaba/bee/SQLiteStatement;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$statement:Lcom/alibaba/bee/SQLiteStatement;

    iput-object p2, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$statement:Lcom/alibaba/bee/SQLiteStatement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$statement:Lcom/alibaba/bee/SQLiteStatement;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteStatement;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$statement:Lcom/alibaba/bee/SQLiteStatement;

    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SQLiteStatement is not closed or statement execution is too slow. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/bee/impl/DebugTools$2;->val$e:Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/alibaba/bee/impl/DebugTools;->access$000(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method
