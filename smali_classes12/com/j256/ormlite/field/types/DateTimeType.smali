.class public Lcom/j256/ormlite/field/types/DateTimeType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "DateTimeType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/DateTimeType;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcom/j256/ormlite/field/types/DateTimeType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateTimeType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->a:Lcom/j256/ormlite/field/types/DateTimeType;

    .line 27
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->b:Ljava/lang/Class;

    .line 28
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->c:Ljava/lang/reflect/Method;

    .line 29
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->d:Ljava/lang/reflect/Constructor;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "org.joda.time.DateTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->e:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 34
    return-void
.end method

.method private a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .param p1, "sqlArg"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    :try_start_0
    sget-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->d:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    .line 116
    invoke-static {}, Lcom/j256/ormlite/field/types/DateTimeType;->r()Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->d:Ljava/lang/reflect/Constructor;

    .line 119
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->d:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Could not use reflection to construct a Joda DateTime"

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    :try_start_0
    sget-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 128
    invoke-static {}, Lcom/j256/ormlite/field/types/DateTimeType;->r()Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "getMillis"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->c:Ljava/lang/reflect/Method;

    .line 131
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-nez p1, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 134
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not use reflection to get millis from Joda DateTime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public static q()Lcom/j256/ormlite/field/types/DateTimeType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->a:Lcom/j256/ormlite/field/types/DateTimeType;

    return-object v0
.end method

.method private static r()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "org.joda.time.DateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->b:Ljava/lang/Class;

    .line 145
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->b:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/j256/ormlite/field/types/DateTimeType;->b(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 71
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "sqlArg":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/j256/ormlite/field/types/DateTimeType;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Problems with field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parsing default DateTime value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public final a(Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 2
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p2, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->h(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "currentValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    .local v2, "newVal":J
    if-nez p1, :cond_0

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/j256/ormlite/field/types/DateTimeType;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/DateTimeType;->b(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 106
    .local v0, "currentVal":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 107
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/j256/ormlite/field/types/DateTimeType;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/j256/ormlite/field/types/DateTimeType;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/j256/ormlite/field/types/DateTimeType;->r()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
