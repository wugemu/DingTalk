.class Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$4;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V
    .locals 1

    .prologue
    .line 927
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

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
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
