.class Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;
.super Ljava/lang/Object;
.source "ViewHighlighter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->access$100(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;)V

    .line 73
    return-void
.end method
