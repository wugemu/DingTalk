.class public Lcom/uc/webview/export/Build;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/Build$Version;
    }
.end annotation


# static fields
.field public static CORE_TIME:Ljava/lang/String;

.field public static CORE_VERSION:Ljava/lang/String;

.field public static CPU_ARCH:Ljava/lang/String;

.field public static IS_INTERNATIONAL_VERSION:Z

.field public static PACK_TYPE:I

.field public static SDK_BMODE:Ljava/lang/String;

.field public static SDK_BTYPE:Ljava/lang/String;

.field public static SDK_FR:Ljava/lang/String;

.field public static SDK_LANG:Ljava/lang/String;

.field public static SDK_PRD:Ljava/lang/String;

.field public static SDK_PROFILE_ID:Ljava/lang/String;

.field public static SDK_SUBVER:Ljava/lang/String;

.field public static TIME:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

.field public static UCM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "181124145048"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "@WEBVIEW_SDK_TYPE@"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->TYPE:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "@USE_KERNEL_TYPE@"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/Build;->IS_INTERNATIONAL_VERSION:Z

    .line 70
    const-string/jumbo v0, "11.9.4.974"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, ""

    sput-object v0, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "3.10.46.0"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "181124145048"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "armeabi-v7a"

    const-string/jumbo v1, "armv7-a"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CPU_ARCH:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "@WEBVIEW_SDK_SUBVER@"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_SUBVER:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "@WEBVIEW_SDK_FR@"

    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_FR:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "@WEBVIEW_SDK_BTYPE@"

    const-string/jumbo v1, "UC"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_BTYPE:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "@WEBVIEW_SDK_BMODE@"

    const-string/jumbo v1, "WWW"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_BMODE:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "@WEBVIEW_SDK_PRD@"

    const-string/jumbo v1, "uc_webview_pro"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_PRD:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "@WEBVIEW_SDK_PFID@"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_PROFILE_ID:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "@WEBVIEW_SDK_LANG@"

    const-string/jumbo v1, "zh-CN"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_LANG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method
