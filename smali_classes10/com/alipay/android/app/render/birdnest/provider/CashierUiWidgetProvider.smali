.class public Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;
.super Ljava/lang/Object;
.source "CashierUiWidgetProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 19
    return-void
.end method


# virtual methods
.method public createLoadingView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public createOverView(Landroid/content/Context;)Lcom/alipay/birdnest/api/FBOverView;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public createViewByTag(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWebView(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "loadUrlListener"    # Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createYearMounthPickerDialog(Landroid/content/Context;IILcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;)Landroid/app/Dialog;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .param p4, "paramYearMounthPickerCallback"    # Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyWebView(Landroid/view/View;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 75
    return-void
.end method

.method public loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;
    .param p4, "paramString3"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public loadUrlWithWebView(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public openWebPage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method

.method public updateWebViewProperties(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method
