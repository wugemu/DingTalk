.class public abstract Lcom/taobao/weex/layout/ContentBoxMeasurement;
.super Ljava/lang/Object;
.source "ContentBoxMeasurement.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;
.implements Ljava/io/Serializable;


# instance fields
.field protected mComponent:Lcom/taobao/weex/ui/component/WXComponent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mMeasureHeight:F

.field protected mMeasureWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 45
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 77
    return-void
.end method

.method public getHeight()F
    .locals 1
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 66
    iget v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    return v0
.end method

.method public abstract layoutAfter(FF)V
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation
.end method

.method public abstract layoutBefore()V
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation
.end method

.method public final measure(FFII)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "widthMeasureMode"    # I
    .param p4, "heightMeasureMode"    # I
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->measureInternal(FFII)V

    .line 51
    return-void
.end method

.method public abstract measureInternal(FFII)V
.end method
