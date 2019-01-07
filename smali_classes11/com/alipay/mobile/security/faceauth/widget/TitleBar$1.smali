.class final Lcom/alipay/mobile/security/faceauth/widget/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/widget/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/widget/TitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/TitleBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/TitleBar;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar$1;->a:Lcom/alipay/mobile/security/faceauth/widget/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar$1;->a:Lcom/alipay/mobile/security/faceauth/widget/TitleBar;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "input_method"

    .line 341
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 342
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 343
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 344
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
