.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
.super Ljava/lang/Object;
.source "SQLiteCustomFunction.java"


# instance fields
.field public final callback:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;

.field public final name:Ljava/lang/String;

.field public final numArgs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "callback"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;->name:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;->numArgs:I

    .line 47
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;->callback:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;

    .line 48
    return-void
.end method

.method private dispatchCallback([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;->callback:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;

    invoke-interface {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;->callback([Ljava/lang/String;)V

    .line 54
    return-void
.end method
