.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const v4, 0x800003

    .line 1030
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lrz;

    move-result-object v0

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 2619
    const-string/jumbo v0, "mail_menu_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    .line 2876
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 2877
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2878
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    goto :goto_0

    .line 2880
    :cond_2
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    goto :goto_0
.end method
