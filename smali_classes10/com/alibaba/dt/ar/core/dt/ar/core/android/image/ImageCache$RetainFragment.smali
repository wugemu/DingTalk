.class public Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$RetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 709
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 712
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$RetainFragment;->setRetainInstance(Z)V

    .line 713
    return-void
.end method
