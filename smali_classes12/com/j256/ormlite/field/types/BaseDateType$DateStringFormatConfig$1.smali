.class Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;
.super Ljava/lang/ThreadLocal;
.source "BaseDateType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    .line 1059
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;->a:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    iget-object v1, v1, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method
