.class public Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
.super Ljava/lang/Object;
.source "BaseDateType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/field/types/BaseDateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateStringFormatConfig"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormatStr"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;-><init>(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)V

    iput-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->b:Ljava/lang/ThreadLocal;

    .line 64
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->a:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->a:Ljava/lang/String;

    return-object v0
.end method
