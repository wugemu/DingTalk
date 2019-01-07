.class Lcom/alipay/mobile/nebulacore/Nebula$6$1;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/Nebula$6;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/Nebula$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/Nebula$6;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$6$1;->this$0:Lcom/alipay/mobile/nebulacore/Nebula$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 986
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$6$1;->this$0:Lcom/alipay/mobile/nebulacore/Nebula$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/Nebula$6;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$6$1;->this$0:Lcom/alipay/mobile/nebulacore/Nebula$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/Nebula$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 988
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_app_offline:I

    .line 989
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 987
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 991
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$6$1;->this$0:Lcom/alipay/mobile/nebulacore/Nebula$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/Nebula$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 993
    :cond_0
    return-void
.end method
