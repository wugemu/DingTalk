.class public Lcom/alipay/mobile/verifyidentity/ui/APEditText;
.super Landroid/widget/EditText;
.source "APEditText.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;
    }
.end annotation


# static fields
.field private static e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;


# instance fields
.field private a:Z

.field private b:I

.field private c:F

.field private d:Z

.field public listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 22
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 24
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b()V

    .line 41
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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 22
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 24
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 22
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 24
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a()V

    .line 51
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b()V

    .line 66
    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 72
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getTextSize(FI)F

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 74
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 78
    :cond_0
    return-void
.end method

.method public static getTextSizeGearGetter()Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    return-object v0
.end method

.method public static setTextSizeGearGetter(Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;)V
    .locals 0

    .prologue
    .line 125
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    .line 126
    return-void
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    if-gtz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 97
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    .prologue
    .line 130
    const v0, 0x1020022

    if-ne p1, v0, :cond_1

    .line 131
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;->onPaste()V

    .line 135
    :cond_0
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setEmojiSize(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 82
    return-void
.end method

.method public setPasteListener(Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;

    .line 33
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 86
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 91
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b()V

    .line 58
    return-void
.end method
