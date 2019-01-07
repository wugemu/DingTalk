.class public Lcom/alipay/android/app/render/birdnest/provider/CashierUiVideoProvider;
.super Ljava/lang/Object;
.source "CashierUiVideoProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createVideoView(Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider$VideoCallback;)Landroid/view/View;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramVideoCallback"    # Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider$VideoCallback;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyVideoView(Landroid/view/View;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 21
    return-void
.end method

.method public getAttribute(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadUri(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public pause(Landroid/view/View;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 45
    return-void
.end method

.method public play(Landroid/view/View;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 33
    return-void
.end method

.method public resume(Landroid/view/View;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 39
    return-void
.end method

.method public setAttribute(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString"    # Ljava/lang/String;
    .param p3, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 58
    return-void
.end method
