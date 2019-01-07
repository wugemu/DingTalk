.class final Lcom/uc/webview/export/internal/android/t$a;
.super Lcom/uc/webview/export/WebResourceError;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/android/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/webkit/WebResourceError;


# direct methods
.method public constructor <init>(Landroid/webkit/WebResourceError;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/uc/webview/export/WebResourceError;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/t$a;->a:Landroid/webkit/WebResourceError;

    .line 172
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t$a;->a:Landroid/webkit/WebResourceError;

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getErrorCode()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t$a;->a:Landroid/webkit/WebResourceError;

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    return v0
.end method
