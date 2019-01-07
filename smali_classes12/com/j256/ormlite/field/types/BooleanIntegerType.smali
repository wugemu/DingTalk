.class public Lcom/j256/ormlite/field/types/BooleanIntegerType;
.super Lcom/j256/ormlite/field/types/BooleanType;
.source "BooleanIntegerType.java"


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/lang/Integer;

.field private static final c:Lcom/j256/ormlite/field/types/BooleanIntegerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;->a:Ljava/lang/Integer;

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;->b:Ljava/lang/Integer;

    .line 27
    new-instance v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/BooleanIntegerType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;->c:Lcom/j256/ormlite/field/types/BooleanIntegerType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BooleanType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 35
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/BooleanIntegerType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;->c:Lcom/j256/ormlite/field/types/BooleanIntegerType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;->a:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/BooleanIntegerType;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I

    .prologue
    .line 54
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "sqlArg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/field/types/BooleanIntegerType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 49
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->g(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
