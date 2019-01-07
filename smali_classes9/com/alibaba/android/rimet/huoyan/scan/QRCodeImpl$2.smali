.class final Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;
.super Ljava/lang/Object;
.source "QRCodeImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;->b(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;->b:Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;

    iput-object p2, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    :cond_0
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    return-object p1
.end method
