.class Lcom/taobao/weex/devtools/common/android/ViewUtil$ViewCompat$ViewCompatHoneycomb;
.super Lcom/taobao/weex/devtools/common/android/ViewUtil$ViewCompat;
.source "ViewUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/common/android/ViewUtil$ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatHoneycomb"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/taobao/weex/devtools/common/android/ViewUtil$ViewCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/common/android/ViewUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/common/android/ViewUtil$1;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/taobao/weex/devtools/common/android/ViewUtil$ViewCompat$ViewCompatHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method
