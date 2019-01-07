.class public Lcom/j256/ormlite/field/types/BooleanType;
.super Lcom/j256/ormlite/field/types/BooleanObjectType;
.source "BooleanType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/BooleanType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/j256/ormlite/field/types/BooleanType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/BooleanType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/BooleanType;->a:Lcom/j256/ormlite/field/types/BooleanType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 19
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BOOLEAN:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BooleanObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/BooleanObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 28
    return-void
.end method

.method public static s()Lcom/j256/ormlite/field/types/BooleanType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/j256/ormlite/field/types/BooleanType;->a:Lcom/j256/ormlite/field/types/BooleanType;

    return-object v0
.end method


# virtual methods
.method public final i()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
