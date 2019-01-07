.class public Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DecorationRelativeLayout.java"


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:Lcom/alibaba/doraemon/image/ImageMagician;

.field private d:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x64

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->b:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->b:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 56
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 59
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method private getGifDisplayMode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 121
    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a:I

    const/16 v1, 0x6d

    if-le v0, v1, :cond_0

    .line 122
    const/16 v0, 0x64

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a:I

    .line 125
    :cond_0
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 11
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_3

    .line 104
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v6

    .line 72
    goto :goto_0

    .line 83
    :cond_3
    move-object v2, p1

    .line 84
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    :cond_4
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string/jumbo v0, ".gif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 97
    .local v9, "isGif":Z
    if-eqz v9, :cond_5

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->getGifDisplayMode()I

    move-result v4

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_1

    .line 87
    .end local v9    # "isGif":Z
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 100
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v9    # "isGif":Z
    :cond_5
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v10

    .line 101
    .local v10, "strategy":Lhcj;
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->b:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->b:I

    invoke-virtual {v10, v2, v0, v1}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->d:Landroid/widget/ImageView;

    const/16 v4, 0x9

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 109
    if-gez p2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->getChildCount()I

    move-result v0

    .line 111
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 112
    add-int/lit8 p2, v0, -0x1

    .line 115
    .end local v0    # "childCount":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method public setTFSImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->b:I

    .line 67
    return-void
.end method
