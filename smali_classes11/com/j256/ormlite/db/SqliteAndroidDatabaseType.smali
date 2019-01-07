.class public Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;
.super Lcom/j256/ormlite/db/BaseSqliteDatabaseType;
.source "SqliteAndroidDatabaseType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/db/SqliteAndroidDatabaseType$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;
    .locals 2
    .param p1, "defaultPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->a(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType$1;->a:[I

    invoke-interface {p1}, Lcom/j256/ormlite/field/DataPersister;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->a(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_0
    instance-of v0, p1, Lcom/j256/ormlite/field/types/TimeStampType;

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/j256/ormlite/field/types/TimeStampStringType;->r()Lcom/j256/ormlite/field/types/TimeStampStringType;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/j256/ormlite/field/types/SqlDateType;

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/j256/ormlite/field/types/SqlDateStringType;->r()Lcom/j256/ormlite/field/types/SqlDateStringType;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/j256/ormlite/field/types/DateStringType;->q()Lcom/j256/ormlite/field/types/DateStringType;

    move-result-object v0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p2}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1, p3}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;->a(Ljava/lang/StringBuilder;I)V

    .line 52
    return-void
.end method

.method protected final b(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .prologue
    .line 66
    .line 1236
    const-string/jumbo v0, "SMALLINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method public final b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x60

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "Android SQLite"

    return-object v0
.end method
