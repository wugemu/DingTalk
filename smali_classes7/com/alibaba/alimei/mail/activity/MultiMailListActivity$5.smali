.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 797
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .line 798
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    :cond_0
    const-string/jumbo v1, "MultiMailListActivity"

    const-string/jumbo v2, "activity is destroyed"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 803
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->b:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 808
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 809
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v5

    .line 1173
    iget-object v1, v5, Lafa;->a:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 1175
    iget-object v1, v5, Lafa;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    .line 1176
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1177
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafl;

    .line 1178
    if-eqz v1, :cond_8

    iget v1, v1, Lafl;->f:I

    if-ne v1, v4, :cond_8

    .line 1179
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v1, v4

    :goto_2
    move v2, v1

    .line 1182
    goto :goto_1

    .line 1184
    :cond_4
    if-eqz v2, :cond_6

    .line 1185
    iget-object v1, v5, Lafa;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    .line 1186
    iget-object v1, v5, Lafa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafa$a;

    .line 1187
    if-eqz v1, :cond_5

    .line 1188
    iget-object v2, v5, Lafa;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Lafa$a;->a(Ljava/util/List;)V

    .line 1192
    :cond_5
    invoke-virtual {v5}, Lafa;->b()V

    .line 812
    :cond_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 815
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 818
    :cond_7
    const-string/jumbo v1, "MultiMailListActivity"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    const-string/jumbo v4, "switchMail"

    invoke-static {v1, v2, v4}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    invoke-static {v1}, Lacg;->a(Ljava/lang/String;)V

    .line 821
    invoke-static {}, Lacr;->a()Lacr;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->a:Ljava/lang/String;

    invoke-static {v1}, Lacr;->a(Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    .line 826
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->g(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_2
.end method
