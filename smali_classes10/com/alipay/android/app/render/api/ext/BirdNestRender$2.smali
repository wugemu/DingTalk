.class Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;
.super Ljava/lang/Object;
.source "BirdNestRender.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$TemplateFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/api/ext/BirdNestRender;->destroyView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;->this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    const-string/jumbo v0, "QUICKPAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
