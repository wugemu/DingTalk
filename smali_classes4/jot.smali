.class public Ljot;
.super Ljava/lang/Object;
.source "VideoClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljot$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ljot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljot;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a(III)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "viewWidth"    # I
    .param p2, "baseWidth"    # I

    .prologue
    .line 22
    const/16 v0, 0x500

    .line 23
    .local v0, "width":I
    if-lez p2, :cond_0

    .line 24
    move v0, p2

    .line 26
    :cond_0
    if-lez p1, :cond_1

    .line 27
    mul-int v1, p0, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    float-to-int p0, v1

    .line 29
    .end local p0    # "x":I
    :cond_1
    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 115
    .end local v0    # "result":I
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public static a(IILjava/lang/String;)Ljot$a;
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "seiData"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 70
    if-eqz p2, :cond_2

    .line 72
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "rect"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 74
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 76
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 1090
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1091
    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1092
    if-eqz v5, :cond_0

    array-length v7, v5

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 1093
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1094
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljot;->a(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1095
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljot;->a(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1096
    iget v7, v4, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Ljot;->a(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1097
    iget v7, v4, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x3

    aget-object v5, v5, v8

    invoke-static {v5}, Ljot;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rect = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .local v4, "rect":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v4, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    new-instance v5, Ljot$a;

    invoke-direct {v5, v4, v2}, Ljot$a;-><init>(Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :goto_2
    return-object v5

    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    move-object v4, v6

    .line 1104
    goto :goto_1

    .line 75
    .restart local v4    # "rect":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    move-object v5, v6

    .line 86
    goto :goto_2
.end method

.method public static b(III)I
    .locals 3
    .param p0, "y"    # I
    .param p1, "viewHeight"    # I
    .param p2, "baseHigh"    # I

    .prologue
    .line 33
    const/16 v0, 0x2d0

    .line 34
    .local v0, "heigh":I
    if-lez p2, :cond_0

    .line 35
    move v0, p2

    .line 37
    :cond_0
    if-lez p1, :cond_1

    .line 38
    mul-int v1, p0, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    float-to-int p0, v1

    .line 40
    .end local p0    # "y":I
    :cond_1
    return p0
.end method

.method public static c(III)I
    .locals 3
    .param p0, "viewWidth"    # I
    .param p1, "w"    # I
    .param p2, "baseWidth"    # I

    .prologue
    .line 44
    const/16 v0, 0x500

    .line 45
    .local v0, "width":I
    if-lez p2, :cond_0

    .line 46
    move v0, p2

    .line 48
    :cond_0
    mul-int v1, p1, p0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static d(III)I
    .locals 3
    .param p0, "viewHeight"    # I
    .param p1, "h"    # I
    .param p2, "baseHigh"    # I

    .prologue
    .line 52
    const/16 v0, 0x2d0

    .line 53
    .local v0, "heigh":I
    if-lez p2, :cond_0

    .line 54
    move v0, p2

    .line 56
    :cond_0
    mul-int v1, p1, p0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
