.class public Lcom/j256/ormlite/field/types/ByteArrayType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "ByteArrayType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/ByteArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/j256/ormlite/field/types/ByteArrayType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/ByteArrayType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/ByteArrayType;->a:Lcom/j256/ormlite/field/types/ByteArrayType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 25
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/ByteArrayType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/j256/ormlite/field/types/ByteArrayType;->a:Lcom/j256/ormlite/field/types/ByteArrayType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
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
    .line 45
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->e(I)[B

    move-result-object v0

    check-cast v0, [B

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
    .line 71
    const-class v0, [B

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
