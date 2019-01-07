.class final Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$NoopHighlighter;
.super Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
.source "ViewHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoopHighlighter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$NoopHighlighter;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearHighlight()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final setHighlightedView(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 52
    return-void
.end method
