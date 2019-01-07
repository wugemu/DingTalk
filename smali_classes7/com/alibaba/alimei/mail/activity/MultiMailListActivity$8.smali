.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$8;
.super Lacb;
.source "MultiMailListActivity.java"


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
    .line 994
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Lacb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 997
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    .line 3225
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3226
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1000
    :cond_0
    return-void
.end method
