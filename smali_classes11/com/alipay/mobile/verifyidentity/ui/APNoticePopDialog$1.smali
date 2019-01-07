.class Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;
.super Ljava/lang/Object;
.source "APNoticePopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

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
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->cancel()V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;->onClick()V

    .line 135
    :cond_0
    return-void
.end method
