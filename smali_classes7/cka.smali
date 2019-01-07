.class public final Lcka;
.super Ljava/lang/Object;
.source "IconFontUtils.java"


# static fields
.field private static a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 15
    sget-object v1, Lcka;->a:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 17
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "iconfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcka;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lcka;->a:Landroid/graphics/Typeface;

    return-object v1

    .line 18
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
