.class public final Lfcv;
.super Lfcm;
.source "TxtViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Lfdf;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategyInterface"    # Lfdf;
    .param p3, "showCmtsDetailPrefix"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lfcm;-><init>(Landroid/view/View;Lfdf;Z)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    return-void
.end method
