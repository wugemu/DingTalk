.class public Lcom/j256/ormlite/field/types/TimeStampType;
.super Lcom/j256/ormlite/field/types/DateType;
.source "TimeStampType.java"


# static fields
.field private static final b:Lcom/j256/ormlite/field/types/TimeStampType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/j256/ormlite/field/types/TimeStampType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/TimeStampType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/TimeStampType;->b:Lcom/j256/ormlite/field/types/TimeStampType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->DATE:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/DateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public static s()Lcom/j256/ormlite/field/types/TimeStampType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/j256/ormlite/field/types/TimeStampType;->b:Lcom/j256/ormlite/field/types/TimeStampType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;

    .prologue
    .line 41
    return-object p2
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I

    .prologue
    .line 35
    return-object p2
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "currentValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    .local v0, "newVal":J
    if-nez p1, :cond_0

    .line 53
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 57
    .end local p1    # "currentValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 54
    .restart local p1    # "currentValue":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1    # "currentValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 55
    new-instance v2, Ljava/sql/Timestamp;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-direct {v2, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
