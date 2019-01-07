.class public final Lcqb;
.super Ljava/lang/Object;
.source "ViewPagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcqb$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a(Landroid/support/v4/view/ViewPager;I)V
    .locals 5
    .param p0, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p1, "duration"    # I

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 23
    :cond_0
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 24
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    new-instance v2, Lcqb$a;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v2, v3, v4}, Lcqb$a;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 26
    .local v2, "scroller":Lcqb$a;
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1052
    iput p1, v2, Lcqb$a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "scroller":Lcqb$a;
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
