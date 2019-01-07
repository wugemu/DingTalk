.class Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$2;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NoticeActivity onClick alertNegative"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$200(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V

    .line 61
    return-void
.end method
