.class public Lcom/j256/ormlite/field/types/DateStringType;
.super Lcom/j256/ormlite/field/types/BaseDateType;
.source "DateStringType.java"


# static fields
.field public static b:I

.field private static final c:Lcom/j256/ormlite/field/types/DateStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x32

    sput v0, Lcom/j256/ormlite/field/types/DateStringType;->b:I

    .line 22
    new-instance v0, Lcom/j256/ormlite/field/types/DateStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateStringType;->c:Lcom/j256/ormlite/field/types/DateStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDateType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/BaseDateType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 38
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/DateStringType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->c:Lcom/j256/ormlite/field/types/DateStringType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 79
    sget-object v1, Lcom/j256/ormlite/field/types/DateStringType;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    .line 81
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-direct {v1, v0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    sget-object v1, Lcom/j256/ormlite/field/types/DateStringType;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v1}, Lcom/j256/ormlite/field/types/DateStringType;->a(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->a()Ljava/text/DateFormat;

    move-result-object v0

    .line 72
    .local v0, "dateFormat":Ljava/text/DateFormat;
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "value":Ljava/lang/String;
    sget-object v3, Lcom/j256/ormlite/field/types/DateStringType;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v3}, Lcom/j256/ormlite/field/types/DateStringType;->a(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v1

    .line 62
    .local v1, "formatConfig":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    :try_start_0
    invoke-static {v1, v2}, Lcom/j256/ormlite/field/types/DateStringType;->a(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Problems with column "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " parsing date-string \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' using \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
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
    .line 42
    sget-object v2, Lcom/j256/ormlite/field/types/DateStringType;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v2}, Lcom/j256/ormlite/field/types/DateStringType;->a(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v1

    .line 1050
    .local v1, "formatConfig":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    :try_start_0
    invoke-virtual {v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->a()Ljava/text/DateFormat;

    move-result-object v2

    .line 1051
    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1052
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 45
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Problems with field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " parsing default date-string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' using \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public final a(Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p2, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->a(I)Ljava/lang/String;

    move-result-object v0

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
    .line 97
    const-class v0, [B

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/j256/ormlite/field/types/DateStringType;->b:I

    return v0
.end method
