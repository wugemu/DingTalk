.class final Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;
.super Ljava/lang/Object;
.source "QRCodeImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;->a(Landroid/content/Context;Landroid/os/Bundle;)V
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
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;->b:Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;

    iput-object p2, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    :cond_0
    return-object p1
.end method
