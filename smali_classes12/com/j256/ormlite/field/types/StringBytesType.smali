.class public Lcom/j256/ormlite/field/types/StringBytesType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "StringBytesType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/StringBytesType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/j256/ormlite/field/types/StringBytesType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/StringBytesType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/StringBytesType;->a:Lcom/j256/ormlite/field/types/StringBytesType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 28
    return-void
.end method

.method private static b(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;
    .locals 1
    .param p0, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    const-string/jumbo v0, "Unicode"

    .line 98
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static q()Lcom/j256/ormlite/field/types/StringBytesType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/j256/ormlite/field/types/StringBytesType;->a:Lcom/j256/ormlite/field/types/StringBytesType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 70
    .local v2, "string":Ljava/lang/String;
    invoke-static {p1}, Lcom/j256/ormlite/field/types/StringBytesType;->b(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "charsetName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not convert string with charset name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
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
    .line 57
    check-cast p2, [B

    .end local p2    # "sqlArg":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 58
    .local v0, "bytes":[B
    invoke-static {p1}, Lcom/j256/ormlite/field/types/StringBytesType;->b(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "charsetName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not convert string with charset name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 43
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/j256/ormlite/field/types/StringBytesType;->b(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not convert default string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
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
    .line 52
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->e(I)[B

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
    .line 91
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
