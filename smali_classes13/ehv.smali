.class public Lehv;
.super Ljava/lang/Object;
.source "FocusConfigManager.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lehv;


# instance fields
.field public a:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lehv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehv;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    iput-object v0, p0, Lehv;->a:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 48
    return-void
.end method

.method public static a(I)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 113
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 116
    .local v0, "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    :goto_0
    return-object v0

    .line 104
    .end local v0    # "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    :pswitch_0
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 105
    .restart local v0    # "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    goto :goto_0

    .line 107
    .end local v0    # "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    :pswitch_1
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->DIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 108
    .restart local v0    # "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    goto :goto_0

    .line 110
    .end local v0    # "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    :pswitch_2
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 111
    .restart local v0    # "codecType":Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lehv;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 1
    .param p0, "x0"    # Lehv;

    .prologue
    .line 26
    iget-object v0, p0, Lehv;->a:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    return-object v0
.end method

.method static synthetic a(Lehv;I)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 1
    .param p0, "x0"    # Lehv;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-static {p1}, Lehv;->a(I)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lehv;Lali/mmpc/pwp/PwpClient$CODEC_TYPE;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 0
    .param p0, "x0"    # Lehv;
    .param p1, "x1"    # Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .prologue
    .line 26
    iput-object p1, p0, Lehv;->a:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    return-object p1
.end method

.method public static a()Lehv;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lehv;->c:Lehv;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lehv;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lehv;->c:Lehv;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lehv;

    invoke-direct {v0}, Lehv;-><init>()V

    sput-object v0, Lehv;->c:Lehv;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lehv;->c:Lehv;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lehv;->b:Ljava/lang/String;

    return-object v0
.end method
