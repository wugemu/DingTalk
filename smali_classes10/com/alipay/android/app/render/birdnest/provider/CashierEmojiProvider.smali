.class public Lcom/alipay/android/app/render/birdnest/provider/CashierEmojiProvider;
.super Ljava/lang/Object;
.source "CashierEmojiProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierEmojiProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 15
    return-void
.end method


# virtual methods
.method public prepareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public renderEmojiReturncount(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)I
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramSpannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "paramInt"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
