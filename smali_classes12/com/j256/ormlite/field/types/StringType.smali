.class public Lcom/j256/ormlite/field/types/StringType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "StringType.java"


# static fields
.field public static a:I

.field private static final b:Lcom/j256/ormlite/field/types/StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xff

    sput v0, Lcom/j256/ormlite/field/types/StringType;->a:I

    .line 18
    new-instance v0, Lcom/j256/ormlite/field/types/StringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/StringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/StringType;->b:Lcom/j256/ormlite/field/types/StringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 25
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 34
    return-void
.end method

.method public static r()Lcom/j256/ormlite/field/types/StringType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/j256/ormlite/field/types/StringType;->b:Lcom/j256/ormlite/field/types/StringType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 38
    return-object p2
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
    .line 43
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/j256/ormlite/field/types/StringType;->a:I

    return v0
.end method
