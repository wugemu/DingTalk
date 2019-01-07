.class final Lcom/alibaba/alimei/orm/internal/b;
.super Ljava/lang/Object;
.source "CipherSQLiteStatement.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/sqlite/SQLiteStatement;


# instance fields
.field private final f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;)V
    .locals 0
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    .line 12
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 43
    return-void
.end method

.method public final execute()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->execute()V

    .line 17
    return-void
.end method

.method public final executeInsert()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeInsert()J

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
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeUpdateDelete()I

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
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final simpleQueryForString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/b;->f:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
