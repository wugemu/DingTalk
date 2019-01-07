.class final Lcom/alibaba/alimei/orm/internal/h;
.super Ljava/lang/Object;
.source "DefaultSQLiteStatement.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/sqlite/SQLiteStatement;


# instance fields
.field private final y:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    .line 11
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 42
    return-void
.end method

.method public final execute()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 16
    return-void
.end method

.method public final executeInsert()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final executeUpdateDelete()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final simpleQueryForLong()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final simpleQueryForString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/h;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
