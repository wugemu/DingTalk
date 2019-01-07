.class public abstract Lcom/j256/ormlite/db/BaseSqliteDatabaseType;
.super Lcom/j256/ormlite/db/BaseDatabaseType;
.source "BaseSqliteDatabaseType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/db/BaseSqliteDatabaseType$1;
    }
.end annotation


# static fields
.field private static final b:Lcom/j256/ormlite/field/FieldConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;

    invoke-direct {v0}, Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;-><init>()V

    sput-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->b:Lcom/j256/ormlite/field/FieldConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 89
    const-string/jumbo v0, "DEFAULT VALUES"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    return-void
.end method

.method protected final a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    if-ne v0, v1, :cond_0

    .line 1499
    iget-boolean v0, p2, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "INTEGER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string/jumbo v0, "BIGINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/FieldConverter;
    .locals 2
    .param p1, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    sget-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType$1;->a:[I

    invoke-interface {p1}, Lcom/j256/ormlite/field/DataPersister;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/FieldConverter;

    move-result-object v0

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    sget-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->b:Lcom/j256/ormlite/field/FieldConverter;

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {}, Lcom/j256/ormlite/field/types/BigDecimalStringType;->q()Lcom/j256/ormlite/field/types/BigDecimalStringType;

    move-result-object v0

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Sqlite requires that auto-increment generated-id be integer or long type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const-string/jumbo v0, "PRIMARY KEY AUTOINCREMENT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
