.class public final enum Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;
.super Ljava/lang/Enum;
.source "VoicePlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/VoicePlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCHEME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

.field public static final enum GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

.field public static final enum WHITE:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;


# instance fields
.field private mDurationTextColorId:I

.field private mPauseBtnColorResId:I

.field private mPlayBtnColorResId:I

.field private mWaveBackgroundColorResId:I

.field private mWaveForegroundColorResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 454
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    const-string/jumbo v1, "GRAY"

    sget v3, Laxp$c;->waveform_selected_left:I

    sget v4, Laxp$c;->waveform_unselected_left:I

    sget v5, Laxp$c;->waveform_unselected_left:I

    sget v6, Laxp$c;->waveform_unselected_left:I

    sget v7, Laxp$c;->waveform_unselected_left:I

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 459
    new-instance v3, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    const-string/jumbo v4, "WHITE"

    sget v6, Laxp$c;->ui_common_level3_text_color:I

    sget v7, Laxp$c;->waveform_selected_right:I

    sget v8, Laxp$c;->ui_common_cell_bg_color:I

    sget v9, Laxp$c;->ui_common_cell_bg_color:I

    sget v10, Laxp$c;->ui_common_cell_bg_color:I

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->WHITE:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 453
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->WHITE:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    aput-object v1, v0, v11

    sput-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->$VALUES:[Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .param p3, "waveForegroundColorResId"    # I
    .param p4, "waveBackgroundColorResId"    # I
    .param p5, "durationTextColorId"    # I
    .param p6, "playBtnColorResId"    # I
    .param p7, "pauseBtnColorResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .prologue
    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 472
    iput p3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mWaveForegroundColorResId:I

    .line 473
    iput p4, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mWaveBackgroundColorResId:I

    .line 474
    iput p5, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mDurationTextColorId:I

    .line 475
    iput p6, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mPlayBtnColorResId:I

    .line 476
    iput p7, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mPauseBtnColorResId:I

    .line 477
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 453
    const-class v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->$VALUES:[Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    return-object v0
.end method


# virtual methods
.method public final getDurationTextColorId()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mDurationTextColorId:I

    return v0
.end method

.method public final getPauseBtnColorResId()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mPauseBtnColorResId:I

    return v0
.end method

.method public final getPlayBtnColorResId()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mPlayBtnColorResId:I

    return v0
.end method

.method public final getWaveBackgroundColorResId()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mWaveBackgroundColorResId:I

    return v0
.end method

.method public final getWaveForegroundColorResId()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->mWaveForegroundColorResId:I

    return v0
.end method
