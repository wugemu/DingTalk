.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# static fields
.field public static final COLOR_DROP_DOWN_BG_COLOR:Ljava/lang/String; = "drop_down_bg_color"

.field public static final COLOR_DROP_DOWN_TEXT_COLOR:Ljava/lang/String; = "drop_down_text_color"

.field public static final DRAWABLE_UC_LOGO:Ljava/lang/String; = "uc_logo"

.field public static final DRAWABLE_WEBVIEW_DROP_DOWN_SHADOW:Ljava/lang/String; = "webview_drop_down_shadow"

.field public static final TEXT_DOWP_DOWN_BRAND_EXPOSURE:Ljava/lang/String; = "dowp_down_brand_exposure_text"


# virtual methods
.method public abstract getColor(Ljava/lang/String;)I
.end method

.method public abstract getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end method
