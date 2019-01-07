.class public final Lhrs;
.super Ljava/lang/Object;
.source "SoftKeyboardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhrs$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static a(Landroid/app/Activity;Lhrs$a;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lhrs$a;

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhrs$1;

    invoke-direct {v0, p0, p1}, Lhrs$1;-><init>(Landroid/app/Activity;Lhrs$a;)V

    invoke-static {p0, v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    move-result-object v0

    goto :goto_0
.end method
