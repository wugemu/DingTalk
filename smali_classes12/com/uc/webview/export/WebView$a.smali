.class final Lcom/uc/webview/export/WebView$a;
.super Landroid/content/MutableContextWrapper;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/uc/webview/export/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Base context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p2, p0, Lcom/uc/webview/export/WebView$a;->a:Lcom/uc/webview/export/WebView;

    .line 157
    return-void
.end method


# virtual methods
.method public final setBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 181
    iget-object v0, p0, Lcom/uc/webview/export/WebView$a;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/uc/webview/export/WebView$a;->a:Lcom/uc/webview/export/WebView;

    invoke-static {v0, p0}, Lcom/uc/webview/export/WebView;->a(Lcom/uc/webview/export/WebView;Landroid/content/Context;)V

    .line 184
    :cond_0
    return-void
.end method
