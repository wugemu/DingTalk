.class public final Ligg$g;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ligg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final bio_circle_frrameLayout:[I

.field public static final bio_circle_frrameLayout_bio_facesdk_enabled:I = 0x0

.field public static final bio_round_progressBar:[I

.field public static final bio_round_progressBar_bio_background_color:I = 0x7

.field public static final bio_round_progressBar_bio_color_bg_width:I = 0x9

.field public static final bio_round_progressBar_bio_end_angle:I = 0x8

.field public static final bio_round_progressBar_bio_max:I = 0x5

.field public static final bio_round_progressBar_bio_progress_shader:I = 0xb

.field public static final bio_round_progressBar_bio_round_color:I = 0x0

.field public static final bio_round_progressBar_bio_round_progress_color:I = 0x1

.field public static final bio_round_progressBar_bio_round_width:I = 0x2

.field public static final bio_round_progressBar_bio_start_angle:I = 0x6

.field public static final bio_round_progressBar_bio_style:I = 0xc

.field public static final bio_round_progressBar_bio_text_color:I = 0x3

.field public static final bio_round_progressBar_bio_text_is_displayable:I = 0xa

.field public static final bio_round_progressBar_bio_text_size:I = 0x4

.field public static final circle:[I

.field public static final circleFrameLayout:[I

.field public static final circleFrameLayout_facesdk_enabled:I = 0x0

.field public static final circleImageView:[I

.field public static final circleImageView_facesdk_border_color:I = 0x1

.field public static final circleImageView_facesdk_border_width:I = 0x0

.field public static final circle_facesdk_color:I = 0x1

.field public static final circle_facesdk_interval:I = 0x3

.field public static final circle_facesdk_process_color:I = 0x2

.field public static final circle_facesdk_process_width:I = 0x0

.field public static final lineView:[I

.field public static final lineView_facesdk_detect_radius:I = 0x0

.field public static final titleBar:[I

.field public static final titleBar_bio_leftButtonIcon:I = 0x2

.field public static final titleBar_bio_leftText:I = 0x1

.field public static final titleBar_bio_rightButtonIcon:I = 0x4

.field public static final titleBar_bio_rightText:I = 0x3

.field public static final titleBar_bio_showBackButton:I = 0x5

.field public static final titleBar_bio_showSoundButton:I = 0x6

.field public static final titleBar_bio_titleText:I = 0x0

.field public static final titleBar_bio_title_color:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    new-array v0, v3, [I

    const v1, 0x7f0103ee

    aput v1, v0, v2

    sput-object v0, Ligg$g;->bio_circle_frrameLayout:[I

    .line 459
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ligg$g;->bio_round_progressBar:[I

    .line 473
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Ligg$g;->circle:[I

    .line 474
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Ligg$g;->circleFrameLayout:[I

    .line 476
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Ligg$g;->circleImageView:[I

    .line 483
    new-array v0, v3, [I

    const v1, 0x7f01040f

    aput v1, v0, v2

    sput-object v0, Ligg$g;->lineView:[I

    .line 485
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Ligg$g;->titleBar:[I

    return-void

    .line 459
    .line 473
    .line 474
    .line 476
    .line 485
    nop

    :array_0
    .array-data 4
        0x7f0103ef
        0x7f0103f0
        0x7f0103f1
        0x7f0103f2
        0x7f0103f3
        0x7f0103f4
        0x7f0103f5
        0x7f0103f6
        0x7f0103f7
        0x7f0103f8
        0x7f0103f9
        0x7f0103fa
        0x7f0103fb
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

    :array_3
    .array-data 4
        0x7f010406
        0x7f010407
    .end array-data

    :array_4
    .array-data 4
        0x7f010410
        0x7f010411
        0x7f010412
        0x7f010413
        0x7f010414
        0x7f010415
        0x7f010416
        0x7f010417
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
