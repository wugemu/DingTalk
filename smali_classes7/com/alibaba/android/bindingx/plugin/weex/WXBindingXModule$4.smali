.class final Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Laoa$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Laoa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPort:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->val$viewPort:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs nativeToWeb(D[Ljava/lang/Object;)D
    .locals 3
    .param p1, "rawSize"    # D
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 319
    double-to-float v0, p1

    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->val$viewPort:I

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public final varargs webToNative(D[Ljava/lang/Object;)D
    .locals 3
    .param p1, "rawSize"    # D
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 314
    double-to-float v0, p1

    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->val$viewPort:I

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
