.class public Lcom/j256/ormlite/field/types/EnumToStringType;
.super Lcom/j256/ormlite/field/types/EnumStringType;
.source "EnumToStringType.java"


# static fields
.field private static final b:Lcom/j256/ormlite/field/types/EnumToStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/j256/ormlite/field/types/EnumToStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/EnumToStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/EnumToStringType;->b:Lcom/j256/ormlite/field/types/EnumToStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 20
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Enum;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/EnumStringType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method public static r()Lcom/j256/ormlite/field/types/EnumToStringType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/j256/ormlite/field/types/EnumToStringType;->b:Lcom/j256/ormlite/field/types/EnumToStringType;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
