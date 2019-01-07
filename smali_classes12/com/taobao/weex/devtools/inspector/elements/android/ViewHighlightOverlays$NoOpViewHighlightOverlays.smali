.class Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays;
.super Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;
.source "ViewHighlightOverlays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOpViewHighlightOverlays"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays;-><init>()V

    return-void
.end method


# virtual methods
.method public highlightView(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mainColor"    # I

    .prologue
    .line 41
    return-void
.end method

.method public removeHighlight(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    return-void
.end method
