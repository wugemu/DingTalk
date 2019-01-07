.class public final enum Lcom/taobao/living/api/TBConstants$Role;
.super Ljava/lang/Enum;
.source "TBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/api/TBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/living/api/TBConstants$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/living/api/TBConstants$Role;

.field public static final enum ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

.field public static final enum CHAT:Lcom/taobao/living/api/TBConstants$Role;

.field public static final enum FANS:Lcom/taobao/living/api/TBConstants$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/taobao/living/api/TBConstants$Role;

    const-string/jumbo v1, "CHAT"

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$Role;->CHAT:Lcom/taobao/living/api/TBConstants$Role;

    .line 26
    new-instance v0, Lcom/taobao/living/api/TBConstants$Role;

    const-string/jumbo v1, "ANCHOR"

    invoke-direct {v0, v1, v3}, Lcom/taobao/living/api/TBConstants$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    .line 27
    new-instance v0, Lcom/taobao/living/api/TBConstants$Role;

    const-string/jumbo v1, "FANS"

    invoke-direct {v0, v1, v4}, Lcom/taobao/living/api/TBConstants$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$Role;->FANS:Lcom/taobao/living/api/TBConstants$Role;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->CHAT:Lcom/taobao/living/api/TBConstants$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->FANS:Lcom/taobao/living/api/TBConstants$Role;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/living/api/TBConstants$Role;->$VALUES:[Lcom/taobao/living/api/TBConstants$Role;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/living/api/TBConstants$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/taobao/living/api/TBConstants$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/living/api/TBConstants$Role;

    return-object v0
.end method

.method public static values()[Lcom/taobao/living/api/TBConstants$Role;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/taobao/living/api/TBConstants$Role;->$VALUES:[Lcom/taobao/living/api/TBConstants$Role;

    invoke-virtual {v0}, [Lcom/taobao/living/api/TBConstants$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/living/api/TBConstants$Role;

    return-object v0
.end method
