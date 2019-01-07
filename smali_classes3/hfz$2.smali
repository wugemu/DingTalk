.class final Lhfz$2;
.super Ljava/lang/Object;
.source "SqlUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfz;->c(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lhfz;


# direct methods
.method constructor <init>(Lhfz;Lcom/alibaba/lightapp/runtime/database/StepCountEntry;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lhfz;

    .prologue
    .line 144
    iput-object p1, p0, Lhfz$2;->c:Lhfz;

    iput-object p2, p0, Lhfz$2;->a:Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    iput-object p3, p0, Lhfz$2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 147
    iget-object v1, p0, Lhfz$2;->c:Lhfz;

    invoke-static {v1}, Lhfz;->a(Lhfz;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-static {}, Lhfz;->c()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    const-class v4, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    const-string/jumbo v5, "stepcount"

    .line 148
    invoke-static {v4, v5}, Lcom/alibaba/bee/DatabaseUtils;->getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v0

    .line 149
    .local v0, "statement":Lcom/alibaba/bee/SQLiteStatement;
    iget-object v1, p0, Lhfz$2;->a:Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 151
    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 152
    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 153
    iget-object v1, p0, Lhfz$2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 157
    :cond_0
    return-void
.end method
