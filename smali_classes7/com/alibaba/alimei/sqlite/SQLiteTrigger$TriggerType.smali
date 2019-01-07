.class public final enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.super Ljava/lang/Enum;
.source "SQLiteTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

.field public static final enum After:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

.field public static final enum Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

.field public static final enum Instead:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

.field public static final enum InsteadOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

.field public static final enum NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;


# instance fields
.field public final sqlName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    const-string/jumbo v1, "Before"

    const-string/jumbo v2, "BEFORE"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    .line 22
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    const-string/jumbo v1, "After"

    const-string/jumbo v2, "AFTER"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->After:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    .line 24
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    const-string/jumbo v1, "Instead"

    const-string/jumbo v2, "INSTEAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Instead:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    .line 26
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    const-string/jumbo v1, "InsteadOf"

    const-string/jumbo v2, "INSTEAD OF"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->InsteadOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    .line 28
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->After:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Instead:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->InsteadOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->$VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "sqlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->sqlName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->$VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    return-object v0
.end method
