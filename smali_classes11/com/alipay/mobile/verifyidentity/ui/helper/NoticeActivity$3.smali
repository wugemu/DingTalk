.class Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

.field final synthetic val$dialogInterface:Landroid/content/DialogInterface;

.field final synthetic val$i:I

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$i:I

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$dialogInterface:Landroid/content/DialogInterface;

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
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NoticeActivity onAlertClick["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$dialogInterface:Landroid/content/DialogInterface;

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;->val$i:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 81
    return-void
.end method
