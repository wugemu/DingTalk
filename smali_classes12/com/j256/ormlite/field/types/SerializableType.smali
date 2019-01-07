.class public Lcom/j256/ormlite/field/types/SerializableType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "SerializableType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/SerializableType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/j256/ormlite/field/types/SerializableType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/SerializableType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/SerializableType;->a:Lcom/j256/ormlite/field/types/SerializableType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->SERIALIZABLE:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 37
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/SerializableType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/j256/ormlite/field/types/SerializableType;->a:Lcom/j256/ormlite/field/types/SerializableType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "objOutStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "objOutStream":Ljava/io/ObjectOutputStream;
    .local v2, "objOutStream":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    const/4 v1, 0x0

    .line 81
    .end local v2    # "objOutStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOutStream":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 86
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    return-object v4

    .line 82
    .end local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not write serialized object to byte array: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "objOutStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objOutStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "objOutStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOutStream":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 82
    .end local v1    # "objOutStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objOutStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "objOutStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOutStream":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    check-cast p2, [B

    .end local p2    # "sqlArg":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 59
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 61
    .local v2, "objInStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v2    # "objInStream":Ljava/io/ObjectInputStream;
    .local v3, "objInStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 68
    invoke-static {v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    return-object v4

    .line 63
    .end local v3    # "objInStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "objInStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not read serialized object from byte array: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "objInStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objInStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "objInStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "objInStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 63
    .end local v2    # "objInStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objInStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "objInStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "objInStream":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Default values for serializable types are not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 53
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->e(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
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
    .line 123
    const-class v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
