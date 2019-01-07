.class public Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;
.super Ljava/lang/Object;
.source "NativeRenderObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAddChildRenderObject(JJ)V
.end method

.method public static native nativeCopyRenderObject(J)J
.end method

.method public static native nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native nativeLayoutRenderObject(JFF)I
.end method

.method public static native nativeRenderObjectChildCount(J)I
.end method

.method public static native nativeRenderObjectChildWaste(JZ)V
.end method

.method public static native nativeRenderObjectGetChild(JI)J
.end method

.method public static native nativeRenderObjectHasNewLayout(J)Z
.end method

.method public static native nativeRenderObjectUpdateComponent(JLcom/taobao/weex/ui/component/WXComponent;)J
.end method

.method public static native nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static updateComponentSize(Lcom/taobao/weex/ui/component/WXComponent;FFFFFF)V
    .locals 0
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F
    .param p5, "height"    # F
    .param p6, "width"    # F
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 74
    invoke-virtual/range {p0 .. p6}, Lcom/taobao/weex/ui/component/WXComponent;->updateDemission(FFFFFF)V

    .line 75
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutOnly()V

    .line 76
    return-void
.end method
