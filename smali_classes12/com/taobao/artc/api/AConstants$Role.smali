.class public final enum Lcom/taobao/artc/api/AConstants$Role;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$Role;

.field public static final enum ANCHOR:Lcom/taobao/artc/api/AConstants$Role;

.field public static final enum CHAT:Lcom/taobao/artc/api/AConstants$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/taobao/artc/api/AConstants$Role;

    const-string/jumbo v1, "CHAT"

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$Role;->CHAT:Lcom/taobao/artc/api/AConstants$Role;

    .line 59
    new-instance v0, Lcom/taobao/artc/api/AConstants$Role;

    const-string/jumbo v1, "ANCHOR"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$Role;->ANCHOR:Lcom/taobao/artc/api/AConstants$Role;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$Role;

    sget-object v1, Lcom/taobao/artc/api/AConstants$Role;->CHAT:Lcom/taobao/artc/api/AConstants$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/artc/api/AConstants$Role;->ANCHOR:Lcom/taobao/artc/api/AConstants$Role;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/artc/api/AConstants$Role;->$VALUES:[Lcom/taobao/artc/api/AConstants$Role;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/taobao/artc/api/AConstants$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$Role;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$Role;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/taobao/artc/api/AConstants$Role;->$VALUES:[Lcom/taobao/artc/api/AConstants$Role;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$Role;

    return-object v0
.end method
