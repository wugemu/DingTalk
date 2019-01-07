.class public Lcom/uc/webview/export/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HitTestResult"
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private a:Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;

.field final synthetic b:Lcom/uc/webview/export/WebView;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/uc/webview/export/WebView$HitTestResult;->b:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method private constructor <init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/uc/webview/export/WebView$HitTestResult;->b:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/uc/webview/export/WebView$HitTestResult;->a:Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;B)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/WebView$HitTestResult;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;)V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/uc/webview/export/WebView$HitTestResult;->a:Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/uc/webview/export/WebView$HitTestResult;->a:Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;->getType()I

    move-result v0

    return v0
.end method
