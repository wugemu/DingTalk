.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;
.super Ljava/lang/Object;
.source "TeleConfWaitingFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iput p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->a:I

    iput-object p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1174
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1175
    const-string/jumbo v0, "user_mobile"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->s(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->v(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    const-string/jumbo v0, "media_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->w(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    const-string/jumbo v0, "conf_user_company_position"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->x(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    const-string/jumbo v0, "conf_user_company_name"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->y(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    const-string/jumbo v0, "conf_limit_level"

    iget v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    const-string/jumbo v0, "conf_limit_reason"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    const-string/jumbo v0, "conf_voip_can_support"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->z(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1183
    const-string/jumbo v0, "conf_call_be_biz_call"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    const-string/jumbo v0, "conf_call_biz_call_info"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->A(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1186
    const-string/jumbo v0, "conf_call_biz_be_vip_user"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$7;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->B(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    :cond_0
    return-object p1
.end method
