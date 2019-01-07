.class public Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WaterDrawable.java"


# static fields
.field private static final e:I

.field private static r:Ljava/util/regex/Pattern;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/graphics/Paint;

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget v0, Lcig$j;->water_logo:I

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->e:I

    .line 200
    const-string/jumbo v0, "[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2100-\u21ff]|[\u2300-\u23ff]|[\u2500-\u25ff]|[\u2600-\u27ff]|[\u2b00-\u2bff]|[\u20e3\u21aa\u21a9\u00a9\u00ae\u3299\u3297\u2934\u2935\u3030\u303d\u24c2]"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->r:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->i:I

    .line 55
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->j:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->n:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 73
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->f:Landroid/content/Context;

    .line 74
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    .line 75
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    .line 76
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->h:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->l:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_6_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    .line 79
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 182
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 183
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 184
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2193
    .local v1, "codePoint":C
    if-eqz v1, :cond_2

    const/16 v4, 0x9

    if-eq v1, v4, :cond_2

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    const/16 v4, 0xd

    if-eq v1, v4, :cond_2

    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    const v4, 0xd7ff

    if-le v1, v4, :cond_2

    :cond_0
    const v4, 0xe000

    if-lt v1, v4, :cond_1

    const v4, 0xfffd

    if-le v1, v4, :cond_2

    :cond_1
    const/high16 v4, 0x10000

    if-lt v1, v4, :cond_4

    const v4, 0x10ffff

    if-gt v1, v4, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 185
    :goto_1
    if-eqz v4, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 186
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 183
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2193
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 189
    .end local v1    # "codePoint":C
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3
    .param p0, "sourceStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 205
    :try_start_0
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    :goto_0
    return v1

    .line 208
    :cond_0
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 209
    .local v0, "emojiMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 211
    .end local v0    # "emojiMatcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 221
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    .line 223
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "waterText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 1240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 153
    :goto_0
    if-eqz v0, :cond_8

    .line 154
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 161
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_9

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_1
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->f:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    .line 172
    :cond_2
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->m:Ljava/lang/String;

    .line 173
    return-void

    .line 1243
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1244
    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_7

    aget-char v4, v2, v0

    .line 1246
    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    const/16 v5, 0x5a

    if-le v4, v5, :cond_6

    :cond_4
    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_5
    move v0, v1

    .line 1249
    goto :goto_0

    .line 1244
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1252
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 165
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 84
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 87
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->n:Z

    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 89
    .local v8, "rect":Landroid/graphics/Rect;
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->i:I

    .line 90
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->j:I

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    if-nez v0, :cond_0

    .line 93
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->p:I

    .line 94
    iget v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcig$d;->uidic_global_text_size_s14:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->i:I

    if-ge v6, v0, :cond_5

    .line 105
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->j:I

    if-ge v7, v0, :cond_4

    .line 106
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 107
    .local v2, "path":Landroid/graphics/Path;
    add-int v0, v6, v7

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 108
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->p:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    add-int/lit8 v5, v7, 0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->p:I

    add-int/lit8 v1, v6, 0x1

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    mul-int/lit8 v4, v7, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 105
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 114
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->h:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    add-int/lit8 v5, v7, 0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->h:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->p:I

    add-int/2addr v0, v1

    add-int/lit8 v1, v6, 0x1

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->k:I

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->q:I

    mul-int/lit8 v4, v7, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->g:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->o:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 104
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 122
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "rect":Landroid/graphics/Rect;
    :cond_5
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x46

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 128
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 133
    return-void
.end method
