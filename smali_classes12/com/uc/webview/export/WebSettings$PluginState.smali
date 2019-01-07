.class public final enum Lcom/uc/webview/export/WebSettings$PluginState;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/uc/webview/export/WebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OFF:Lcom/uc/webview/export/WebSettings$PluginState;

.field public static final enum ON:Lcom/uc/webview/export/WebSettings$PluginState;

.field public static final enum ON_DEMAND:Lcom/uc/webview/export/WebSettings$PluginState;

.field private static final synthetic a:[Lcom/uc/webview/export/WebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    new-instance v0, Lcom/uc/webview/export/WebSettings$PluginState;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->ON:Lcom/uc/webview/export/WebSettings$PluginState;

    .line 205
    new-instance v0, Lcom/uc/webview/export/WebSettings$PluginState;

    const-string/jumbo v1, "ON_DEMAND"

    invoke-direct {v0, v1, v3}, Lcom/uc/webview/export/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->ON_DEMAND:Lcom/uc/webview/export/WebSettings$PluginState;

    .line 206
    new-instance v0, Lcom/uc/webview/export/WebSettings$PluginState;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/uc/webview/export/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->OFF:Lcom/uc/webview/export/WebSettings$PluginState;

    .line 202
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uc/webview/export/WebSettings$PluginState;

    sget-object v1, Lcom/uc/webview/export/WebSettings$PluginState;->ON:Lcom/uc/webview/export/WebSettings$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/webview/export/WebSettings$PluginState;->ON_DEMAND:Lcom/uc/webview/export/WebSettings$PluginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/webview/export/WebSettings$PluginState;->OFF:Lcom/uc/webview/export/WebSettings$PluginState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->a:[Lcom/uc/webview/export/WebSettings$PluginState;

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
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 202
    const-class v0, Lcom/uc/webview/export/WebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebSettings$PluginState;

    return-object v0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->a:[Lcom/uc/webview/export/WebSettings$PluginState;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$PluginState;

    return-object v0
.end method
