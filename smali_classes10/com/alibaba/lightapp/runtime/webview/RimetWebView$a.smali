.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2469
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2472
    iput v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->a:I

    .line 2475
    iput v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 2469
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2479
    iput v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->b:I

    .line 2480
    iput v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->a:I

    .line 2481
    return-void
.end method
