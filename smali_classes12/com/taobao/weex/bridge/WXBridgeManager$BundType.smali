.class public final enum Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
.super Ljava/lang/Enum;
.source "WXBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/bridge/WXBridgeManager$BundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string/jumbo v1, "Vue"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 142
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string/jumbo v1, "Rax"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 143
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string/jumbo v1, "Others"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

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
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-virtual {v0}, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object v0
.end method
