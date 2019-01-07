.class public final Lhrt;
.super Ljava/lang/Object;
.source "SoundPoolUtil.java"


# static fields
.field static a:Lhrt;


# instance fields
.field b:Landroid/media/SoundPool;

.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lhrt;->c:Landroid/util/SparseArray;

    .line 44
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lhrt;->d:Landroid/util/SparseArray;

    .line 61
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 64
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 65
    .local v1, "builder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v1, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 66
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 67
    .local v0, "attr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 69
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lhrt;->b:Landroid/media/SoundPool;

    .line 74
    .end local v0    # "attr":Landroid/media/AudioAttributes$Builder;
    .end local v1    # "builder":Landroid/media/SoundPool$Builder;
    :goto_0
    iget-object v2, p0, Lhrt;->b:Landroid/media/SoundPool;

    new-instance v3, Lhrt$1;

    invoke-direct {v3, p0}, Lhrt$1;-><init>(Lhrt;)V

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 96
    return-void

    .line 71
    :cond_0
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lhrt;->b:Landroid/media/SoundPool;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lhrt;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lhrt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhrt;->a:Lhrt;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lhrt;

    invoke-direct {v0}, Lhrt;-><init>()V

    sput-object v0, Lhrt;->a:Lhrt;

    .line 57
    :cond_0
    sget-object v0, Lhrt;->a:Lhrt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 9
    .param p1, "key"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 103
    iget-object v0, p0, Lhrt;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 104
    .local v7, "loadId":Ljava/lang/Integer;
    if-nez v7, :cond_1

    .line 105
    const/4 v8, -0x1

    .line 106
    .local v8, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    .line 134
    .end local v8    # "resId":I
    :goto_1
    return-void

    .line 108
    .restart local v8    # "resId":I
    :pswitch_0
    sget v8, Lhdn$j;->on_duty:I

    .line 109
    goto :goto_0

    .line 111
    :pswitch_1
    sget v8, Lhdn$j;->off_duty:I

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    sget v8, Lhdn$j;->beacon_bind_succ:I

    .line 115
    goto :goto_0

    .line 117
    :pswitch_3
    sget v8, Lhdn$j;->beacon_detected:I

    .line 118
    goto :goto_0

    .line 120
    :pswitch_4
    sget v8, Lhdn$j;->click_to_checkin:I

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lhrt;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 130
    iget-object v0, p0, Lhrt;->d:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 132
    .end local v8    # "resId":I
    :cond_1
    iget-object v0, p0, Lhrt;->b:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
