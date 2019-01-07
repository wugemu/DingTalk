.class public final enum Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
.super Ljava/lang/Enum;
.source "StatementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/stmt/StatementBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhereOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field public static final enum AND:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field public static final enum FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field public static final enum OR:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;


# instance fields
.field private final after:Ljava/lang/String;

.field private final before:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const-string/jumbo v1, "FIRST"

    const-string/jumbo v2, "WHERE "

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    .line 275
    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const-string/jumbo v1, "AND"

    const-string/jumbo v2, "AND ("

    const-string/jumbo v3, ") "

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->AND:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    .line 276
    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const-string/jumbo v1, "OR"

    const-string/jumbo v2, "OR ("

    const-string/jumbo v3, ") "

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->OR:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    .line 273
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->AND:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->OR:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->$VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "before"    # Ljava/lang/String;
    .param p4, "after"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 284
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->before:Ljava/lang/String;

    .line 285
    iput-object p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->after:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->$VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-virtual {v0}, [Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-object v0
.end method


# virtual methods
.method public final appendAfter(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->after:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->after:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    return-void
.end method

.method public final appendBefore(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->before:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->before:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    return-void
.end method
