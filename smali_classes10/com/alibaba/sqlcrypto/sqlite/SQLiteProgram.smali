.class public abstract Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

.field public static sSQLiteExecuteNotifyStackThresholdMS:J

.field public static sSQLiteExecuteNotifyThresholdMS:J


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyThresholdMS:J

    .line 43
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyStackThresholdMS:J

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;
    .param p4, "cancellationSignalForPrepare"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 59
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    .line 64
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 79
    :pswitch_0
    if-ne v2, v0, :cond_0

    .line 80
    .local v0, "assumeReadOnly":Z
    :goto_0
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;

    invoke-direct {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;-><init>()V

    .line 81
    .local v1, "info":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v6

    .line 81
    invoke-virtual {v4, v5, v6, p4, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILjava/lang/Object;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V

    .line 84
    iget-boolean v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 85
    iget-object v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 86
    iget v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->numParameters:I

    iput v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    .line 90
    .end local v0    # "assumeReadOnly":Z
    .end local v1    # "info":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    :goto_1
    if-eqz p3, :cond_1

    array-length v4, p3

    iget v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    if-le v4, v5, :cond_1

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Too many bind arguments.  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " arguments were provided but the statement needs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " arguments."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :pswitch_1
    iput-boolean v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 74
    sget-object v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    goto :goto_1

    :cond_0
    move v0, v3

    .line 79
    goto :goto_0

    .line 96
    :cond_1
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz v4, :cond_4

    .line 97
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 98
    if-eqz p3, :cond_2

    .line 99
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    array-length v5, p3

    invoke-static {p3, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_2
    :goto_2
    sget-object v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    if-eqz v3, :cond_3

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    .line 108
    :cond_3
    return-void

    .line 102
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    goto :goto_2

    .line 68
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    if-lez p1, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    if-le p1, v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot bind argument at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because the index is out of range.  The statement has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 244
    return-void
.end method

.method private getStackTrace()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 276
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 277
    .local v3, "stackElements":[Ljava/lang/StackTraceElement;
    if-nez v3, :cond_0

    .line 278
    const-string/jumbo v5, ""

    .line 289
    :goto_0
    return-object v5

    .line 281
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 283
    aget-object v4, v3, v1

    .line 284
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_1

    .line 287
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2
    .param p1, "bindArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 227
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the bind value at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 208
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 179
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 180
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 168
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 169
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the bind value at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method public clearBindings()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    :cond_0
    return-void
.end method

.method public close()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->close()V

    .line 251
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 255
    .local v10, "endTime":J
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    sub-long v6, v10, v2

    .line 258
    .local v6, "duration":J
    sget-wide v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyThresholdMS:J

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "dbPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 261
    .local v4, "dbName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 263
    .local v9, "index":I
    if-ltz v9, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ge v9, v1, :cond_3

    .line 264
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 269
    .end local v9    # "index":I
    :cond_2
    :goto_1
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v5

    sget-wide v12, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyStackThresholdMS:J

    cmp-long v8, v6, v12

    if-lez v8, :cond_4

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->getStackTrace()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-interface/range {v1 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;->notify(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 266
    .restart local v9    # "index":I
    :cond_3
    move-object v4, v0

    goto :goto_1

    .line 269
    .end local v9    # "index":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method final getBindArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final getConnectionFlags()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/4 v0, -0x1

    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->clearBindings()V

    .line 235
    return-void
.end method

.method protected final onCorruption()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 139
    return-void
.end method
