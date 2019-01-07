.class public final Lhyx$i;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhyx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final NavTitleBar:[I

.field public static final NavTitleBar_navLeftButtonIcon:I = 0x2

.field public static final NavTitleBar_navRightButtonIcon:I = 0x4

.field public static final NavTitleBar_navRightText:I = 0x3

.field public static final NavTitleBar_navShowBackButton:I = 0x5

.field public static final NavTitleBar_navShowSoundButton:I = 0x6

.field public static final NavTitleBar_navTitleText:I = 0x0

.field public static final NavTitleBar_nav_title_color:I = 0x7

.field public static final NavTitleBar_navleftText:I = 0x1

.field public static final circle:[I

.field public static final circleFrameLayout:[I

.field public static final circleFrameLayout_facelivnesssdk_enabled:I = 0x1

.field public static final circle_facelivnesssdk_color:I = 0x5

.field public static final circle_facelivnesssdk_interval:I = 0x7

.field public static final circle_facelivnesssdk_process_color:I = 0x6

.field public static final circle_facelivnesssdk_process_width:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 398
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lhyx$i;->NavTitleBar:[I

    .line 407
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lhyx$i;->circle:[I

    .line 408
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lhyx$i;->circleFrameLayout:[I

    return-void

    .line 398
    .line 407
    .line 408
    nop

    :array_0
    .array-data 4
        0x7f0102d3
        0x7f0102d4
        0x7f0102d5
        0x7f0102d6
        0x7f0102d7
        0x7f0102d8
        0x7f0102d9
        0x7f0102da
    .end array-data

    :array_1
    .array-data 4
        0x7f0103fc
        0x7f0103fd
        0x7f0103fe
        0x7f0103ff
        0x7f010400
        0x7f010401
        0x7f010402
        0x7f010403
    .end array-data

    :array_2
    .array-data 4
        0x7f010404
        0x7f010405
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
