.class public final enum Lcom/alibaba/lightapp/runtime/ActionResponse$Error;
.super Ljava/lang/Enum;
.source "ActionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/ActionResponse$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

.field public static final enum INVALID_ACTION:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

.field public static final enum INVALID_ARGUMENTS:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

.field public static final enum NONE:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

.field public static final enum TIMEOUT:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

.field public static final enum UNAUTHORIZED:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

.field public static final enum UNKNOWN:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->NONE:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    .line 116
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    const-string/jumbo v1, "INVALID_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->INVALID_ACTION:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    .line 117
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    const-string/jumbo v1, "INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->INVALID_ARGUMENTS:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    .line 118
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->UNKNOWN:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    .line 119
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    const-string/jumbo v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->UNAUTHORIZED:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    .line 120
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    const-string/jumbo v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->TIMEOUT:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->NONE:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->INVALID_ACTION:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->INVALID_ARGUMENTS:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->UNKNOWN:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->UNAUTHORIZED:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->TIMEOUT:Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->$VALUES:[Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/ActionResponse$Error;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->$VALUES:[Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/ActionResponse$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/ActionResponse$Error;

    return-object v0
.end method
