.class public interface abstract Lcom/taobao/weex/ui/flat/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Widget"


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getBackgroundAndBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBorderBox()Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLocInFlatContainer()Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .param p1    # Lcom/taobao/weex/ui/view/border/BorderDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setContentBox(IIII)V
.end method

.method public abstract setLayout(IIIIIILandroid/graphics/Point;)V
.end method
