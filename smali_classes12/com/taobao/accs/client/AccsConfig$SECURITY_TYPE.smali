.class public final enum Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;
.super Ljava/lang/Enum;
.source "AccsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/client/AccsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SECURITY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

.field public static final enum SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

.field public static final enum SECURITY_OPEN:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

.field public static final enum SECURITY_TAOBAO:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    const-string/jumbo v1, "SECURITY_TAOBAO"

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_TAOBAO:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    new-instance v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    const-string/jumbo v1, "SECURITY_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OPEN:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    new-instance v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    const-string/jumbo v1, "SECURITY_OFF"

    invoke-direct {v0, v1, v4}, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_TAOBAO:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OPEN:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->$VALUES:[Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->$VALUES:[Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    invoke-virtual {v0}, [Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    return-object v0
.end method
