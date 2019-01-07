.class public final enum Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;
.super Ljava/lang/Enum;
.source "OAHostPushObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum APPROVE:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum BEACON:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum BOSS:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum DING_ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum OTHER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum RECHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum SYSTEM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public static final enum USER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "ATM"

    const-string/jumbo v2, "ATM"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 45
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "BEACON"

    const-string/jumbo v2, "BEACON"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->BEACON:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 47
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "DING_ATM"

    const-string/jumbo v2, "DING_ATM"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->DING_ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 49
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "USER"

    const-string/jumbo v2, "USER"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->USER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 51
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "BOSS"

    const-string/jumbo v2, "BOSS"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->BOSS:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 53
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "APPROVE"

    const/4 v2, 0x5

    const-string/jumbo v3, "APPROVE"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->APPROVE:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 55
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "RECHECK"

    const/4 v2, 0x6

    const-string/jumbo v3, "RECHECK"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->RECHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 57
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "SYSTEM"

    const/4 v2, 0x7

    const-string/jumbo v3, "SYSTEM"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->SYSTEM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 59
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "AUTO_CHECK"

    const/16 v2, 0x8

    const-string/jumbo v3, "AUTO_CHECK"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 61
    new-instance v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x9

    const-string/jumbo v3, "OTHER"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->OTHER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->BEACON:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->DING_ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->USER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->BOSS:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->APPROVE:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->RECHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->SYSTEM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->OTHER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->$VALUES:[Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->$VALUES:[Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->name:Ljava/lang/String;

    return-object v0
.end method
