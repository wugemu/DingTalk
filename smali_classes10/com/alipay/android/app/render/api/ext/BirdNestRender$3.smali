.class Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;
.super Ljava/lang/Object;
.source "BirdNestRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/api/ext/BirdNestRender;->generateView(Lcom/alipay/android/app/render/api/result/PreparedResult;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;

.field final synthetic val$focusableKeyboard:Lcom/alipay/android/app/template/FBFocusable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/template/FBFocusable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;->this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    iput-object p2, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;->val$focusableKeyboard:Lcom/alipay/android/app/template/FBFocusable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;->val$focusableKeyboard:Lcom/alipay/android/app/template/FBFocusable;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBFocusable;->requestFocus()V

    .line 346
    return-void
.end method
