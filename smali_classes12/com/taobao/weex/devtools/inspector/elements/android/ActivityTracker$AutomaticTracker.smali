.class abstract Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AutomaticTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker$AutomaticTrackerICSAndBeyond;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;-><init>()V

    return-void
.end method

.method public static newInstanceIfPossible(Landroid/app/Application;Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "tracker"    # Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 134
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker$AutomaticTrackerICSAndBeyond;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker$AutomaticTrackerICSAndBeyond;-><init>(Landroid/app/Application;Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;)V

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract register()V
.end method

.method public abstract unregister()V
.end method
