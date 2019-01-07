.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->l(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->notifyDataSetChanged()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1062
    invoke-static {v3}, Lajj;->a(Ljava/lang/String;)Z

    move-result v3

    .line 197
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .line 1210
    iget-object v4, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 1211
    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1212
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 204
    :goto_2
    if-eqz v0, :cond_5

    sget v0, Laxo$i;->dt_mail_close_all:I

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->l(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v1}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 1217
    goto :goto_2

    .line 204
    :cond_5
    sget v0, Laxo$i;->dt_mail_open_all:I

    goto :goto_3
.end method
