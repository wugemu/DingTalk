.class public Lcom/taobao/av/ui/view/SizeNotifierFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SizeNotifierFrameLayout.java"

# interfaces
.implements Ljkr;


# instance fields
.field private a:Ljkr$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 32
    iget-object v0, p0, Lcom/taobao/av/ui/view/SizeNotifierFrameLayout;->a:Ljkr$a;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/taobao/av/ui/view/SizeNotifierFrameLayout;->a:Ljkr$a;

    invoke-interface {v0, p2}, Ljkr$a;->a(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Ljkr$a;)V
    .locals 0
    .param p1, "listener"    # Ljkr$a;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/taobao/av/ui/view/SizeNotifierFrameLayout;->a:Ljkr$a;

    .line 26
    return-void
.end method
