.class final Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$b;
.super Ljava/lang/Object;
.source "IMHorizontalListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should not get to HoneycombPlus class unless sdk is >= 11!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/Scroller;F)V
    .locals 1
    .param p0, "scroller"    # Landroid/widget/Scroller;
    .param p1, "friction"    # F

    .prologue
    .line 1312
    if-eqz p0, :cond_0

    .line 1313
    const v0, 0x3c1374bc    # 0.009f

    invoke-virtual {p0, v0}, Landroid/widget/Scroller;->setFriction(F)V

    .line 1315
    :cond_0
    return-void
.end method
