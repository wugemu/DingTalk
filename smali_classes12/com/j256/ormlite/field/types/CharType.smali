.class public Lcom/j256/ormlite/field/types/CharType;
.super Lcom/j256/ormlite/field/types/CharacterObjectType;
.source "CharType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/CharType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/j256/ormlite/field/types/CharType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/CharType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/CharType;->a:Lcom/j256/ormlite/field/types/CharType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 20
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->CHAR:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/CharacterObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/CharType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/j256/ormlite/field/types/CharType;->a:Lcom/j256/ormlite/field/types/CharType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    .line 34
    .local v0, "character":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-nez v1, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
    .end local v0    # "character":Ljava/lang/Character;
    :cond_1
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
