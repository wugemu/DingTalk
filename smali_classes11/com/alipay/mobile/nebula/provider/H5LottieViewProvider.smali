.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;
.super Ljava/lang/Object;
.source "H5LottieViewProvider.java"


# virtual methods
.method public abstract getLottieView(Landroid/app/Activity;)Landroid/view/View;
.end method

.method public abstract playAnimation(Landroid/view/View;)V
.end method

.method public abstract setBackgroundColor(Landroid/view/View;I)V
.end method

.method public abstract setImgs(Landroid/view/View;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract setLocationXY(Landroid/view/View;II)V
.end method

.method public abstract setMainJson(Landroid/view/View;[B)V
.end method

.method public abstract setWidthAndHeight(Landroid/view/View;II)V
.end method

.method public abstract stopAnimation(Landroid/view/View;)V
.end method
