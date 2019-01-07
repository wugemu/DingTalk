.class public final enum Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
.super Ljava/lang/Enum;
.source "H5EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

.field public static final enum IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

.field public static final enum SYNC:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

.field public static final enum UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const-string/jumbo v1, "SYNC"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->SYNC:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 249
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const-string/jumbo v1, "UI"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 251
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const-string/jumbo v1, "IO"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 245
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->SYNC:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->$VALUES:[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

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
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    const-class v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->$VALUES:[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    return-object v0
.end method
