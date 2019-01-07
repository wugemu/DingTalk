.class final Lcom/uc/webview/export/internal/setup/ce;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->r:Z

    .line 86
    return-void
.end method
