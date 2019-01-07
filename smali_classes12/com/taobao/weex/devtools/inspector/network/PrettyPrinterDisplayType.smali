.class public final enum Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;
.super Ljava/lang/Enum;
.source "PrettyPrinterDisplayType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

.field public static final enum HTML:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

.field public static final enum JSON:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

.field public static final enum TEXT:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;


# instance fields
.field private final mResourceType:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    const-string/jumbo v1, "JSON"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->XHR:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;-><init>(Ljava/lang/String;ILcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->JSON:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    .line 16
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    const-string/jumbo v1, "HTML"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->DOCUMENT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;-><init>(Ljava/lang/String;ILcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->HTML:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    .line 17
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    const-string/jumbo v1, "TEXT"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->DOCUMENT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;-><init>(Ljava/lang/String;ILcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->TEXT:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    sget-object v1, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->JSON:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->HTML:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->TEXT:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->$VALUES:[Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;)V
    .locals 0
    .param p3, "resourceType"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->mResourceType:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->$VALUES:[Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    invoke-virtual {v0}, [Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    return-object v0
.end method


# virtual methods
.method public final getResourceType()Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->mResourceType:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    return-object v0
.end method
