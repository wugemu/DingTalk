.class public final enum Lcom/alibaba/android/dingtalkbase/notification/Sound;
.super Ljava/lang/Enum;
.source "Sound.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/notification/Sound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field public static final enum Sound_AT_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field public static final enum Sound_DING_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field public static final enum Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field public static final enum Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field public static final enum Sound_REDPACKET_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field public static final enum Sound_SPECIAL_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

.field private static sMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/notification/Sound;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNameId:I

.field private mRawId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    const-string/jumbo v1, "Sound_NONE"

    sget v5, Lcig$j;->dt_setting_notification_sound_none:I

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 15
    new-instance v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    const-string/jumbo v5, "Sound_AT_DEFAULT"

    const/16 v7, 0x1f9

    sget v8, Lcig$i;->audio_505:I

    sget v9, Lcig$j;->dt_audio_name_505:I

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/notification/Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_AT_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 17
    new-instance v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    const-string/jumbo v5, "Sound_SPECIAL_DEFAULT"

    const/16 v7, 0x1fd

    sget v8, Lcig$i;->audio_509:I

    sget v9, Lcig$j;->dt_audio_name_509:I

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/notification/Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_SPECIAL_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 19
    new-instance v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    const-string/jumbo v5, "Sound_DING_DEFAULT"

    const/16 v7, 0xc8

    sget v8, Lcig$i;->ding:I

    sget v9, Lcig$j;->dt_audio_name_519:I

    move v6, v11

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/notification/Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_DING_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 21
    new-instance v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    const-string/jumbo v5, "Sound_IM_DEFAULT"

    const/16 v7, 0x64

    sget v8, Lcig$i;->general:I

    sget v9, Lcig$j;->dt_audio_name_520:I

    move v6, v12

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/notification/Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 23
    new-instance v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    const-string/jumbo v5, "Sound_REDPACKET_DEFAULT"

    const/4 v6, 0x5

    const/16 v7, 0x20a

    sget v8, Lcig$i;->audio_522:I

    sget v9, Lcig$j;->dt_audio_name_522:I

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/notification/Sound;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_REDPACKET_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/notification/Sound;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_AT_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_SPECIAL_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_DING_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_REDPACKET_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->$VALUES:[Lcom/alibaba/android/dingtalkbase/notification/Sound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "raw"    # I
    .param p5, "name"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mValue:I

    .line 33
    iput p4, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mRawId:I

    .line 34
    iput p5, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mNameId:I

    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->init()V

    .line 36
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->sMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->sMap:Landroid/util/SparseArray;

    .line 42
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->sMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->sMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->sMap:Landroid/util/SparseArray;

    .line 49
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->sMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mValue:I

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->$VALUES:[Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/notification/Sound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/notification/Sound;

    return-object v0
.end method


# virtual methods
.method public final getNameId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mNameId:I

    return v0
.end method

.method public final getRawId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mRawId:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->mValue:I

    return v0
.end method
