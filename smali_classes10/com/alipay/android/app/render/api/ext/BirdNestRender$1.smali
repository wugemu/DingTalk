.class Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;
.super Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;
.source "BirdNestRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getCallbackProxy(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/render/api/ext/BirdNestRender;
    .param p2, "callback"    # Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;->this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;-><init>(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)V

    return-void
.end method


# virtual methods
.method public onTemplateCallbackChanged(Lcom/alipay/android/app/template/ITemplateClickCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/android/app/template/ITemplateClickCallback;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;->this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    invoke-static {v0, p1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->access$002(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/template/ITemplateClickCallback;)Lcom/alipay/android/app/template/ITemplateClickCallback;

    .line 162
    return-void
.end method
