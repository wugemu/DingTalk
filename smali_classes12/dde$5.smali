.class final Ldde$5;
.super Ljava/lang/Object;
.source "CategoryUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldde;->a(Landroid/app/Activity;J[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(J[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iput-wide p1, p0, Ldde$5;->a:J

    iput-object p3, p0, Ldde$5;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 141
    const-string/jumbo v0, "intent_key_im_forward_mode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string/jumbo v0, "intent_key_im_forward_edit_mode"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string/jumbo v0, "count_limit"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-wide v2, p0, Ldde$5;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 145
    const-string/jumbo v0, "intent_key_choose_limit_tip"

    sget v1, Lctk$i;->dt_im_category_move_chats_top_limits_AT:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string/jumbo v0, "intent_key_filter_shopping"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Ldde$5;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldde$5;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 148
    const-string/jumbo v0, "conversation_ids"

    iget-object v1, p0, Ldde$5;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_0
    return-object p1
.end method
