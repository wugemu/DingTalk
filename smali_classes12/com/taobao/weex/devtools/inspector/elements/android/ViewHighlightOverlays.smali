.class abstract Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;
.super Ljava/lang/Object;
.source "ViewHighlightOverlays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2;,
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static newInstance()Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;
    .locals 2

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 32
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2;-><init>()V

    .line 34
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays$1;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract highlightView(Landroid/view/View;I)V
.end method

.method public abstract removeHighlight(Landroid/view/View;)V
.end method
