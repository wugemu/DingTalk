.class public final enum Lcom/taobao/artc/internal/ADefines$AccsStatus;
.super Ljava/lang/Enum;
.source "ADefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/internal/ADefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/internal/ADefines$AccsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/internal/ADefines$AccsStatus;

.field public static final enum ARTC_ACCS_INIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

.field public static final enum ARTC_ACCS_UNINIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;

    const-string/jumbo v1, "ARTC_ACCS_UNINIT"

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/internal/ADefines$AccsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ARTC_ACCS_UNINIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

    .line 44
    new-instance v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;

    const-string/jumbo v1, "ARTC_ACCS_INIT"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/internal/ADefines$AccsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ARTC_ACCS_INIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/artc/internal/ADefines$AccsStatus;

    sget-object v1, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ARTC_ACCS_UNINIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ARTC_ACCS_INIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;->$VALUES:[Lcom/taobao/artc/internal/ADefines$AccsStatus;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/internal/ADefines$AccsStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/internal/ADefines$AccsStatus;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;->$VALUES:[Lcom/taobao/artc/internal/ADefines$AccsStatus;

    invoke-virtual {v0}, [Lcom/taobao/artc/internal/ADefines$AccsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/internal/ADefines$AccsStatus;

    return-object v0
.end method
