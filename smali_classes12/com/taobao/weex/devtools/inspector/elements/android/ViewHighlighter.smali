.class abstract Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
.super Ljava/lang/Object;
.source "ViewHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;,
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$NoopHighlighter;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static newInstance()Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;-><init>()V

    .line 34
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string/jumbo v0, "Running on pre-JBMR2: View highlighting is not supported"

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$NoopHighlighter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$NoopHighlighter;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$1;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract clearHighlight()V
.end method

.method public abstract setHighlightedView(Landroid/view/View;I)V
.end method
