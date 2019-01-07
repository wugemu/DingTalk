.class final Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;
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
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;->b:Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "rewriteIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    :cond_0
    const-string/jumbo v1, "corpid"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;->a:Landroid/content/Intent;

    const-string/jumbo v3, "corp_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "appid"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;->a:Landroid/content/Intent;

    const-string/jumbo v3, "intent_key_app_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "to_page"

    const-string/jumbo v2, "to_oa"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    return-object p1
.end method
