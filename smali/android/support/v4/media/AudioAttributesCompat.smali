.class public final Landroid/support/v4/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompat$AttributeContentType;,
        Landroid/support/v4/media/AudioAttributesCompat$AttributeUsage;
    }
.end annotation


# static fields
.field private static final d:Landroid/util/SparseIntArray;

.field private static final e:[I


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 169
    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->e:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->a:I

    .line 231
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->b:I

    .line 232
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->c:I

    .line 237
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 759
    if-ne p0, p1, :cond_0

    .line 773
    :goto_0
    return v1

    .line 760
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 762
    check-cast v0, Landroid/support/v4/media/AudioAttributesCompat;

    .line 764
    .local v0, "that":Landroid/support/v4/media/AudioAttributesCompat;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3332
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3362
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4296
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 4298
    const/4 v4, 0x0

    invoke-static {v4}, Lel;->a(Lel$a;)I

    move-result v4

    .line 3369
    :goto_1
    :pswitch_0
    if-ne v4, v7, :cond_4

    .line 3374
    :goto_2
    and-int/lit16 v3, v3, 0x111

    .line 771
    if-nez v3, :cond_5

    .line 5347
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    .line 4717
    :cond_3
    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :pswitch_2
    move v4, v2

    .line 4726
    goto :goto_1

    :pswitch_3
    move v4, v1

    .line 4724
    goto :goto_1

    .line 4728
    :pswitch_4
    const/16 v4, 0x8

    goto :goto_1

    :pswitch_5
    move v4, v3

    .line 4732
    goto :goto_1

    .line 4734
    :pswitch_6
    const/4 v4, 0x2

    goto :goto_1

    .line 4740
    :pswitch_7
    const/4 v4, 0x5

    goto :goto_1

    .line 4742
    :pswitch_8
    const/16 v4, 0xa

    goto :goto_1

    .line 3371
    :cond_4
    const/4 v3, 0x7

    if-ne v4, v3, :cond_6

    move v3, v1

    .line 3372
    goto :goto_2

    :cond_5
    move v1, v2

    .line 773
    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_2

    .line 4717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 588
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2616
    packed-switch v5, :pswitch_data_0

    .line 2650
    :pswitch_0
    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unknown usage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 602
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " content=0"

    .line 603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 604
    const-string/jumbo v2, " flags=0x"

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 606
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2618
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_UNKNOWN"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2620
    :pswitch_2
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_MEDIA"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2622
    :pswitch_3
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2624
    :pswitch_4
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2626
    :pswitch_5
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_ALARM"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2628
    :pswitch_6
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_NOTIFICATION"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2630
    :pswitch_7
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_NOTIFICATION_RINGTONE"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2632
    :pswitch_8
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2634
    :pswitch_9
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2636
    :pswitch_a
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2638
    :pswitch_b
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2640
    :pswitch_c
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2642
    :pswitch_d
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2644
    :pswitch_e
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2646
    :pswitch_f
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_GAME"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2648
    :pswitch_10
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "USAGE_ASSISTANT"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method
