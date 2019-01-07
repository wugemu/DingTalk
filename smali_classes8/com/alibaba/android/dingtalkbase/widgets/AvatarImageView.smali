.class public Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
.super Landroid/widget/ImageView;
.source "AvatarImageView.java"


# static fields
.field public static c:I

.field public static d:I

.field private static o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint$FontMetricsInt;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/String;


# instance fields
.field private A:F

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/RectF;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field public b:I

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:F

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->o:Ljava/util/HashMap;

    .line 56
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->p:Ljava/lang/String;

    .line 58
    const/16 v0, 0x20

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    .line 60
    const/16 v0, 0x28

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 62
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->q:I

    .line 64
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->r:Z

    .line 65
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    .line 67
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->u:Z

    .line 74
    sget v0, Lcig$c;->avatar_download_bg:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->z:I

    .line 258
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    .line 303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->B:Landroid/graphics/Rect;

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->C:Landroid/graphics/RectF;

    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 62
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->q:I

    .line 64
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->r:Z

    .line 65
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    .line 66
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    .line 67
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->u:Z

    .line 74
    sget v2, Lcig$c;->avatar_download_bg:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->z:I

    .line 258
    const/high16 v2, 0x41400000    # 12.0f

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    .line 303
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->B:Landroid/graphics/Rect;

    .line 304
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->C:Landroid/graphics/RectF;

    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a()V

    .line 88
    sget-object v2, Lcig$l;->AvatarImageView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcig$l;->AvatarImageView_textSize:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 90
    .local v1, "size":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 91
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    .line 95
    :goto_0
    sget v2, Lcig$l;->AvatarImageView_hasBorder:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->r:Z

    .line 96
    sget v2, Lcig$l;->AvatarImageView_borderColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->v:I

    .line 97
    sget v2, Lcig$l;->AvatarImageView_borderWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->w:F

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void

    .line 93
    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    goto :goto_0
.end method

.method private static a(II)F
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 462
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 131
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->h:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 154
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 183
    invoke-static {p1}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 185
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    .line 1265
    instance-of v0, p3, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v0, p3, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setFastScrollEnabled(Landroid/widget/AbsListView;Z)V

    .line 1271
    :cond_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1279
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1280
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    .line 1281
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->q:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->q:I

    invoke-virtual {v1, v0, v2, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v1, p0

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 194
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    .line 195
    return-void

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    :cond_2
    move-object v0, p2

    goto :goto_0

    .line 1285
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_4

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v1, p0

    move-object v2, v7

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1287
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1288
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    goto :goto_1

    .line 188
    :cond_5
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_6

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v1, p0

    move-object v2, v7

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 192
    :cond_6
    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static getAvadarColor$552c4e0e()I
    .locals 1

    .prologue
    .line 483
    const v0, -0xcd6906

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 157
    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    .line 1162
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    .line 1163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;I)V

    .line 158
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    .line 173
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;I)V

    .line 174
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 168
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;I)V

    .line 181
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 177
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x0

    const v7, -0xcd6906

    const/4 v11, 0x0

    .line 296
    if-eqz p1, :cond_7

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1308
    .local v0, "restoreCount":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getPaddingLeft()I

    move-result v4

    .line 1309
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getPaddingTop()I

    move-result v3

    .line 1311
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getPaddingRight()I

    move-result v2

    sub-int v2, v1, v2

    .line 1312
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    .line 1314
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    .line 1315
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1320
    if-le v2, v1, :cond_8

    .line 1322
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    move v4, v3

    move v5, v2

    move v2, v1

    move v3, v1

    .line 1329
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1330
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->j:Z

    if-eqz v1, :cond_9

    .line 1331
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1332
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1333
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->k:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 1334
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcig$e;->chat_burn_fuzzy_icon:I

    invoke-static {v1, v6}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->k:Landroid/graphics/Bitmap;

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->k:Landroid/graphics/Bitmap;

    int-to-float v6, v5

    int-to-float v7, v4

    invoke-virtual {p1, v1, v6, v7, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1428
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->r:Z

    if-eqz v1, :cond_3

    .line 1465
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 1466
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    .line 1467
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1468
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1470
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->v:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1471
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->w:F

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1472
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    if-eqz v1, :cond_19

    .line 1473
    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(II)F

    move-result v1

    .line 1474
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v4

    add-int v9, v5, v3

    int-to-float v9, v9

    add-int v10, v4, v2

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1432
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->u:Z

    if-eqz v1, :cond_5

    .line 1433
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 1434
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v1

    .line 1435
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string/jumbo v6, "zh_CN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1436
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcig$e;->avatar_inactive_zh:I

    invoke-static {v1, v6}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->m:Landroid/graphics/Bitmap;

    .line 1441
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->m:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v4

    add-int/2addr v5, v3

    int-to-float v5, v5

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-direct {v6, v7, v8, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v12, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1445
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 1446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1447
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1448
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v11, v11, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1449
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1453
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 299
    :goto_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 301
    .end local v0    # "restoreCount":I
    :cond_7
    return-void

    .line 1325
    .restart local v0    # "restoreCount":I
    :cond_8
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    move v3, v2

    move v5, v4

    move v4, v1

    goto/16 :goto_0

    .line 1338
    :cond_9
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b:I

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1339
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1340
    if-eqz v1, :cond_a

    .line 1341
    add-int v6, v5, v3

    add-int v7, v4, v2

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1342
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1344
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1345
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    if-eqz v1, :cond_c

    .line 1346
    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(II)F

    move-result v1

    .line 1347
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v4

    add-int v9, v5, v3

    int-to-float v9, v9

    add-int v10, v4, v2

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1353
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->l:Landroid/graphics/Bitmap;

    if-nez v1, :cond_b

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b:I

    invoke-static {v1, v6}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->l:Landroid/graphics/Bitmap;

    .line 1356
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->B:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1, v11, v11, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1357
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->C:Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1358
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->l:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->B:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->C:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v6, v7, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1348
    :cond_c
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    if-eqz v1, :cond_d

    .line 1349
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1351
    :cond_d
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1360
    :cond_e
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    if-nez v1, :cond_13

    .line 1361
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1363
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    if-eqz v1, :cond_10

    .line 1364
    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(II)F

    move-result v1

    .line 1365
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v4

    add-int v9, v5, v3

    int-to-float v9, v9

    add-int v10, v4, v2

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1371
    :goto_6
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->o:Ljava/util/HashMap;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint$FontMetricsInt;

    .line 1372
    if-nez v1, :cond_f

    .line 1373
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 1374
    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->o:Ljava/util/HashMap;

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    :cond_f
    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v6, v2, v6

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v6, v1

    add-int/2addr v1, v4

    .line 1379
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-static {v6}, Lcpt;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1380
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_12

    .line 1381
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1382
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1383
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1366
    :cond_10
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    if-eqz v1, :cond_11

    .line 1367
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 1369
    :cond_11
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 1387
    :cond_12
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1388
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    int-to-float v7, v7

    int-to-float v1, v1

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1392
    :cond_13
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1393
    if-eqz v1, :cond_14

    .line 1394
    add-int v6, v5, v3

    add-int v7, v4, v2

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1395
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1421
    :catch_0
    move-exception v1

    .line 1422
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1397
    :cond_14
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1398
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->z:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1402
    :goto_7
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    if-eqz v1, :cond_16

    .line 1403
    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(II)F

    move-result v1

    .line 1404
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v4

    add-int v9, v5, v3

    int-to-float v9, v9

    add-int v10, v4, v2

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1410
    :goto_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 1411
    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v6, v2, v6

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v6, v1

    add-int/2addr v1, v4

    .line 1412
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1414
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_18

    .line 1415
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->y:Landroid/graphics/drawable/Drawable;

    add-int v6, v5, v3

    add-int v7, v4, v2

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1416
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1423
    :catch_1
    move-exception v1

    .line 1424
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1400
    :cond_15
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    const v6, -0xcd6906

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 1405
    :cond_16
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    if-eqz v1, :cond_17

    .line 1406
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 1408
    :cond_17
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 1417
    :cond_18
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1418
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->e:Ljava/lang/String;

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    int-to-float v7, v7

    int-to-float v1, v1

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1475
    :cond_19
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    if-eqz v1, :cond_1a

    .line 1476
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v4

    add-int v8, v5, v3

    int-to-float v8, v8

    add-int v9, v4, v2

    int-to-float v9, v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1478
    :cond_1a
    shr-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v5

    int-to-float v1, v1

    shr-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v4

    int-to-float v6, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1438
    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcig$e;->avatar_inactive_en:I

    invoke-static {v1, v6}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->m:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_1c
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_0
.end method

.method public setBurnChat(Z)V
    .locals 0
    .param p1, "isBurnChat"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->j:Z

    .line 226
    return-void
.end method

.method public setDefaultBgColorRes(I)V
    .locals 0
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 457
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->z:I

    .line 458
    return-void
.end method

.method public setDefaultColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 240
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mDefaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->y:Landroid/graphics/drawable/Drawable;

    .line 494
    return-void
.end method

.method public setDefaultRes(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b:I

    .line 230
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    .line 202
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    if-eqz p1, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    if-eqz p1, :cond_0

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->i:Z

    goto :goto_0
.end method

.method public setRect(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->t:Z

    .line 124
    return-void
.end method

.method public setRightBottomIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 243
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    .line 249
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setRightBottomIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 253
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->n:Landroid/graphics/drawable/Drawable;

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    .line 256
    :cond_0
    return-void
.end method

.method public setRoundRect(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->s:Z

    .line 120
    return-void
.end method

.method public setShowInactiveMask(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->u:Z

    .line 128
    return-void
.end method

.method public setTFSImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->q:I

    .line 103
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->b(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->A:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    return-void
.end method
