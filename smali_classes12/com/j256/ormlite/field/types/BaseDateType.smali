.class public abstract Lcom/j256/ormlite/field/types/BaseDateType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "BaseDateType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    }
.end annotation


# static fields
.field protected static final a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSSSSS"

    invoke-direct {v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/field/types/BaseDateType;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method protected static a(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    .locals 1
    .param p0, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p1, "defaultDateFormatConfig"    # Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 39
    .end local p1    # "defaultDateFormatConfig":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    :cond_0
    :goto_0
    return-object p1

    .line 1463
    .restart local p1    # "defaultDateFormatConfig":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->i:Ljava/lang/Object;

    .line 35
    check-cast v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    .line 36
    .local v0, "configObj":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 39
    goto :goto_0
.end method

.method protected static a(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "formatConfig"    # Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->a()Ljava/text/DateFormat;

    move-result-object v0

    .line 45
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "currentValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "newVal":J
    if-nez p1, :cond_0

    .line 84
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 88
    .end local p1    # "currentValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 85
    .restart local p1    # "currentValue":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Date;

    .end local p1    # "currentValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 86
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
