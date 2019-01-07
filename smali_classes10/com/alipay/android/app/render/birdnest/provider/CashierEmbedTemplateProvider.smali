.class public Lcom/alipay/android/app/render/birdnest/provider/CashierEmbedTemplateProvider;
.super Ljava/lang/Object;
.source "CashierEmbedTemplateProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierEmbedTemplateProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 14
    return-void
.end method


# virtual methods
.method public getTemplate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
