.class Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V
    .locals 1

    .prologue
    .line 896
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 901
    const-string/jumbo v1, "input_method"

    .line 902
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 904
    if-eqz v2, :cond_0

    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 905
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v1

    goto :goto_0
.end method
