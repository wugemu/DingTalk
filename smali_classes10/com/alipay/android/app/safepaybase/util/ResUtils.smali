.class public Lcom/alipay/android/app/safepaybase/util/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# static fields
.field private static LOLLIPOP:Z

.field private static mContext:Landroid/content/Context;

.field private static mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->LOLLIPOP:Z

    .line 25
    const-string/jumbo v0, "com.alipay.android.phone.safepaybase"

    sput-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mPackageName:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v0, "anim"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v0, "color"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDimenId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "dimen"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, "drawable"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v0, "layout"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getPaddingDrawable(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "dimenId"    # I
    .param p1, "resId"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 161
    if-nez p2, :cond_0

    .line 162
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Invalid context"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 165
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 166
    .local v2, "defaultMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v9, "window"

    invoke-virtual {p2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 167
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 170
    .local v6, "res":Landroid/content/res/Resources;
    const/high16 v9, 0x40c00000    # 6.0f

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 171
    .local v5, "padding":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    .local v3, "op":Landroid/graphics/BitmapFactory$Options;
    const/16 v9, 0x140

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 173
    invoke-static {v6, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 174
    .local v4, "orignal":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    .line 175
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 174
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 178
    .local v8, "src":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 179
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 180
    .local v7, "right":Landroid/graphics/drawable/Drawable;
    return-object v7
.end method

.method public static getRawId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "raw"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 88
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-static {p0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".R$styleable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 92
    .local v2, "fields2":[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 94
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields2":[Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v3

    .line 92
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "fields2":[Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields2":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    .line 101
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 138
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 138
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    sget-object v2, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 144
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 148
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 148
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v1, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    .line 110
    .local v1, "context":Landroid/content/Context;
    sget-boolean v5, Lcom/alipay/android/app/safepaybase/util/ResUtils;->LOLLIPOP:Z

    if-eqz v5, :cond_1

    .line 111
    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, p0, p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, "resId":I
    if-lez v4, :cond_0

    .line 126
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "resId":I
    :goto_0
    return v4

    .line 118
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "resId":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".R$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 121
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "resId":I
    :catch_0
    move-exception v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 123
    invoke-virtual {v5, p0, p1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 126
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p0, p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "string"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "style"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v0, "styleable"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableIds(Ljava/lang/String;)[I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getXmlId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "xml"

    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mPackageName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static setUiContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->initialize(Landroid/content/Context;)V

    .line 30
    return-void
.end method
