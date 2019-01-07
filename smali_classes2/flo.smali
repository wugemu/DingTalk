.class public final Lflo;
.super Ljava/lang/Object;
.source "AvatarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflo$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static a(Ljava/lang/String;Lflo$a;)V
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lflo$a;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 114
    if-nez p0, :cond_0

    .line 115
    const-string/jumbo p0, ""

    .line 118
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    .local v7, "w":I
    move v4, v7

    .line 119
    .local v4, "h":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 121
    .local v5, "mBgPaint":Landroid/graphics/Paint;
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getAvadarColor$552c4e0e()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v2, "canvasTemp":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v4

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .local v6, "mFontPaint":Landroid/graphics/Paint;
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v8, v9}, Lcms;->b(Landroid/content/Context;F)F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 135
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v8, v4, v8

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v8, v9

    .line 136
    .local v0, "baseline":I
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_1
    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    int-to-float v9, v0

    invoke-virtual {v2, p0, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    if-eqz p1, :cond_2

    .line 143
    invoke-interface {p1, v1}, Lflo$a;->a(Landroid/graphics/Bitmap;)V

    .line 145
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lflo$a;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lflo$a;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 1058
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1059
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1060
    new-instance v1, Lflo$1;

    invoke-direct {v1, p1, p2, p0}, Lflo$1;-><init>(Ljava/lang/String;Lflo$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1110
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0, p2}, Lflo;->a(Ljava/lang/String;Lflo$a;)V

    goto :goto_0
.end method
