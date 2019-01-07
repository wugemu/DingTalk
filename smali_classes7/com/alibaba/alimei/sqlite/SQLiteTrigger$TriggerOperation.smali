.class public final enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
.super Ljava/lang/Enum;
.source "SQLiteTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

.field public static final enum Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

.field public static final enum Insert:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

.field public static final enum Update:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

.field public static final enum UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;


# instance fields
.field public final sqlName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    const-string/jumbo v1, "Delete"

    const-string/jumbo v2, "DELETE"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    .line 47
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    const-string/jumbo v1, "Insert"

    const-string/jumbo v2, "INSERT"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Insert:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    .line 49
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    const-string/jumbo v1, "Update"

    const-string/jumbo v2, "UPDATE"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Update:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    .line 51
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    const-string/jumbo v1, "UpdateOf"

    const-string/jumbo v2, "UPDATE OF"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Insert:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Update:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->$VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->sqlName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->$VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    return-object v0
.end method
