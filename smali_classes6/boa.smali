.class public final Lboa;
.super Lbnv;
.source "MiscViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Lboq;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategy"    # Lboq;
    .param p3, "showCmtsDetailPrefix"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lbnv;-><init>(Landroid/view/View;Lboq;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    return-void
.end method
