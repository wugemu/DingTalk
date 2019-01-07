.class Lcom/taobao/weex/ui/component/WXSwitch$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "WXSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSwitch;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSwitch;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSwitch;Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXSwitch;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->this$0:Lcom/taobao/weex/ui/component/WXSwitch;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .locals 0
    .param p1, "computedWidth"    # F
    .param p2, "computedHeight"    # F

    .prologue
    .line 84
    return-void
.end method

.method public layoutBefore()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public measureInternal(FFII)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "widthMeasureMode"    # I
    .param p4, "heightMeasureMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 56
    iput v4, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureWidth:F

    .line 57
    iput v4, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureHeight:F

    .line 59
    :try_start_0
    new-instance v3, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/weex/ui/view/WXSwitchView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v3, "wxSwitchView":Lcom/taobao/weex/ui/view/WXSwitchView;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 62
    .local v1, "heightSpec":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 68
    .local v2, "widthSpec":I
    :goto_0
    invoke-virtual {v3, v2, v1}, Lcom/taobao/weex/ui/view/WXSwitchView;->measure(II)V

    .line 69
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXSwitchView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureWidth:F

    .line 70
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXSwitchView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureHeight:F

    .line 74
    .end local v1    # "heightSpec":I
    .end local v2    # "widthSpec":I
    .end local v3    # "wxSwitchView":Lcom/taobao/weex/ui/view/WXSwitchView;
    :goto_1
    return-void

    .line 65
    .restart local v1    # "heightSpec":I
    .restart local v3    # "wxSwitchView":Lcom/taobao/weex/ui/view/WXSwitchView;
    :cond_0
    float-to-int v4, p1

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_0

    .line 71
    .end local v1    # "heightSpec":I
    .end local v2    # "widthSpec":I
    .end local v3    # "wxSwitchView":Lcom/taobao/weex/ui/view/WXSwitchView;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
