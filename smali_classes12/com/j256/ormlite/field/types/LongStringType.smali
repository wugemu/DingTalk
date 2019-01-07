.class public Lcom/j256/ormlite/field/types/LongStringType;
.super Lcom/j256/ormlite/field/types/StringType;
.source "LongStringType.java"


# static fields
.field private static final b:Lcom/j256/ormlite/field/types/LongStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/j256/ormlite/field/types/LongStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/LongStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/LongStringType;->b:Lcom/j256/ormlite/field/types/LongStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->LONG_STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/StringType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 20
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/LongStringType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/j256/ormlite/field/types/LongStringType;->b:Lcom/j256/ormlite/field/types/LongStringType;

    return-object v0
.end method


# virtual methods
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
    .line 41
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
