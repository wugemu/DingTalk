.class public Lcom/alipay/mobile/verifyidentity/ui/APButton;
.super Landroid/widget/Button;
.source "APButton.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


# static fields
.field private static c:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;


# instance fields
.field private a:Z

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a:Z

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->b:F

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a()V

    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1077
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->b:F

    .line 1078
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a()V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "APButton"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a:Z

    .line 66
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->c:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->c:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->b:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 85
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getTextSize(FI)F

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 87
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 91
    :cond_0
    return-void
.end method

.method public static getTextSizeGearGetter()Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->c:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    return-object v0
.end method

.method public static setTextSizeGearGetter(Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;)V
    .locals 0

    .prologue
    .line 98
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->c:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    .line 99
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a()V

    .line 55
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APButton;->b:F

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->a()V

    .line 62
    return-void
.end method
