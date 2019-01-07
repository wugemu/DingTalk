.class public Lcom/j256/ormlite/field/types/TimeStampStringType;
.super Lcom/j256/ormlite/field/types/DateStringType;
.source "TimeStampStringType.java"


# static fields
.field private static final c:Lcom/j256/ormlite/field/types/TimeStampStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/j256/ormlite/field/types/TimeStampStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/TimeStampStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/TimeStampStringType;->c:Lcom/j256/ormlite/field/types/TimeStampStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/DateStringType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 26
    return-void
.end method

.method public static r()Lcom/j256/ormlite/field/types/TimeStampStringType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/j256/ormlite/field/types/TimeStampStringType;->c:Lcom/j256/ormlite/field/types/TimeStampStringType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    move-object v0, p2

    check-cast v0, Ljava/sql/Timestamp;

    .line 44
    .local v0, "timeStamp":Ljava/sql/Timestamp;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-super {p0, p1, v1}, Lcom/j256/ormlite/field/types/DateStringType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/field/types/DateStringType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 38
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "currentValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    .local v0, "newVal":J
    if-nez p1, :cond_0

    .line 56
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 60
    .end local p1    # "currentValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 57
    .restart local p1    # "currentValue":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1    # "currentValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Ljava/sql/Timestamp;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-direct {v2, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 60
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
    .line 49
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
