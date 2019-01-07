.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lafo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lafo",
        "<",
        "Lsm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lafn;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 903
    .line 1906
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2136
    iget v0, p1, Lafn;->a:I

    .line 1910
    sparse-switch v0, :sswitch_data_0

    .line 1929
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->i(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    :cond_0
    return-void

    .line 2337
    :sswitch_0
    const-string/jumbo v0, "mail_filter_all"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    goto :goto_0

    .line 3325
    :sswitch_1
    const-string/jumbo v0, "mail_filter_unread"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1917
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    goto :goto_0

    .line 3329
    :sswitch_2
    const-string/jumbo v0, "mail_filter_fav"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1921
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    goto :goto_0

    .line 3333
    :sswitch_3
    const-string/jumbo v0, "mail_filter_attachment"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    goto :goto_0

    .line 1910
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_3
        0x23 -> :sswitch_0
        0x24 -> :sswitch_1
        0x2e -> :sswitch_2
    .end sparse-switch
.end method
