.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$1;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$1;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dialogCallbackFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2591
    return-void
.end method

.method public final dialogCallbackSuccess(ILjava/lang/String;)V
    .locals 0
    .param p1, "buttonIndex"    # I
    .param p2, "callbackValue"    # Ljava/lang/String;

    .prologue
    .line 2587
    return-void
.end method
