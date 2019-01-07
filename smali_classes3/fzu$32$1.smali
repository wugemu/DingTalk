.class final Lfzu$32$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$32;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$32;


# direct methods
.method constructor <init>(Lfzu$32;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$32;

    .prologue
    .line 375
    iput-object p1, p0, Lfzu$32$1;->a:Lfzu$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 378
    const-string/jumbo v0, "space_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfzu$32$1;->a:Lfzu$32;

    iget-object v1, v1, Lfzu$32;->c:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getOrgId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 380
    const-string/jumbo v0, "space_org_share_visible"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    const-string/jumbo v0, "intent_key_send_param"

    iget-object v1, p0, Lfzu$32$1;->a:Lfzu$32;

    iget-object v1, v1, Lfzu$32;->c:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    return-object p1
.end method
