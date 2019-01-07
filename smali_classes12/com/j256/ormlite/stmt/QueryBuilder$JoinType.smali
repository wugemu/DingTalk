.class public final enum Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
.super Ljava/lang/Enum;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/stmt/QueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

.field public static final enum INNER:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

.field public static final enum LEFT:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;


# instance fields
.field private sql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 934
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    const-string/jumbo v1, "INNER"

    const-string/jumbo v2, "INNER"

    invoke-direct {v0, v1, v3, v2}, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->INNER:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    .line 943
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    const-string/jumbo v1, "LEFT"

    const-string/jumbo v2, "LEFT"

    invoke-direct {v0, v1, v4, v2}, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->LEFT:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    .line 925
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->INNER:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->LEFT:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->$VALUES:[Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 949
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 950
    iput-object p3, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->sql:Ljava/lang/String;

    .line 951
    return-void
.end method

.method static synthetic access$100(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 925
    const-class v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
    .locals 1

    .prologue
    .line 925
    sget-object v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->$VALUES:[Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    return-object v0
.end method
