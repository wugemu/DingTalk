.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SpaceAclDesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 353
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string/jumbo v5, "intent_key_acl_type"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 358
    .local v2, "changeType":J
    const-string/jumbo v5, "space_category_current_folderId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "changeFoldId":Ljava/lang/String;
    const-string/jumbo v5, "intent_key_acl_members_count"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 361
    .local v4, "newCount":I
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    sget v6, Lfzs$h;->dt_cspace_acl_member_all:I

    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "countString":Ljava/lang/String;
    :goto_1
    const-wide/16 v6, 0x3eb

    cmp-long v5, v2, v6

    if-nez v5, :cond_3

    .line 368
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v5

    .line 1225
    iget-object v6, v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1226
    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    .end local v1    # "countString":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 369
    .restart local v1    # "countString":Ljava/lang/String;
    :cond_3
    const-wide/16 v6, 0x3ea

    cmp-long v5, v2, v6

    if-nez v5, :cond_4

    .line 370
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v5

    .line 1231
    iget-object v6, v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->c:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1232
    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_4
    const-wide/16 v6, 0x3e9

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 372
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v5

    .line 1237
    iget-object v6, v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->d:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1238
    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
