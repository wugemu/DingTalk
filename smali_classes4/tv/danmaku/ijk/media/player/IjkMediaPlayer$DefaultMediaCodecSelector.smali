.class public Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMediaCodecSelector"
.end annotation


# static fields
.field public static sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 921
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCodecSelect(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;
    .locals 12
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "profile"    # I
    .param p4, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 926
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ge v9, v10, :cond_0

    .line 927
    const/4 v9, 0x0

    .line 981
    :goto_0
    return-object v9

    .line 929
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 930
    const/4 v9, 0x0

    goto :goto_0

    .line 933
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v2, "candidateCodecList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;>;"
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v6

    .line 935
    .local v6, "numCodecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 936
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 938
    .local v4, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-nez v9, :cond_3

    .line 941
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    .line 942
    .local v8, "types":[Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 945
    array-length v10, v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_3

    aget-object v7, v8, v9

    .line 946
    .local v7, "type":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 950
    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 953
    invoke-static {v4, p2}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    move-result-object v1

    .line 954
    .local v1, "candidate":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    if-eqz v1, :cond_2

    .line 957
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    .end local v1    # "candidate":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 935
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "types":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 963
    .end local v4    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 964
    const/4 v9, 0x0

    goto :goto_0

    .line 967
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 969
    .local v0, "bestCodec":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 970
    .local v3, "codec":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    iget v10, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    iget v11, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    if-le v10, v11, :cond_6

    .line 971
    move-object v0, v3

    goto :goto_3

    .line 975
    .end local v3    # "codec":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    :cond_7
    iget v9, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    sget v10, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I

    if-ge v9, v10, :cond_8

    .line 977
    const/4 v9, 0x0

    goto :goto_0

    .line 981
    :cond_8
    iget-object v9, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method
