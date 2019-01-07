.class final Leks$3;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leks;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

.field final synthetic b:Leks;


# direct methods
.method constructor <init>(Leks;Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;)V
    .locals 0
    .param p1, "this$0"    # Leks;

    .prologue
    .line 140
    iput-object p1, p0, Leks$3;->b:Leks;

    iput-object p2, p0, Leks$3;->a:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    const-string/jumbo v0, "intent_action_forward_doclens"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v0, "intent_key_forward_doclens_extra"

    iget-object v1, p0, Leks$3;->a:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v0, "intent_key_im_forward_mode"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    return-object p1
.end method
