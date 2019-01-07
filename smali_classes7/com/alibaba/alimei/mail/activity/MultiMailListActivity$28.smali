.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1620
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1623
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    const-string/jumbo v1, "pref_key_mail_folder_move_guide"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1627
    .local v0, "hasShown":Z
    if-nez v0, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->u(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1629
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->u(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
