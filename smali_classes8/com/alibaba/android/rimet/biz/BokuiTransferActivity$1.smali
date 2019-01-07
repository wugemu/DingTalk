.class final Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$1;
.super Ljava/lang/Object;
.source "BokuiTransferActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$1;->b:Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "rewriteIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$1;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    :cond_0
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    return-object p1
.end method
