.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 291
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string/jumbo v1, "ON_DEMAND"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 292
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 289
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

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
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-object v0
.end method
