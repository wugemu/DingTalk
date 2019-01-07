.class public Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;
.super Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
.source "CategoryContainSessionsActivity.java"

# interfaces
.implements Ldcy$b;


# instance fields
.field private c:Landroid/view/MenuItem;

.field private d:Ldcy$a;

.field private e:Z

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:Lcvm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;-><init>()V

    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v0}, Ldcy$a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v0}, Ldcy$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->i:Lcvm;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->i:Lcvm;

    invoke-virtual {v0}, Lcvm;->notifyDataSetChanged()V

    .line 202
    :cond_1
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->dismissLoadingDialog()V

    .line 222
    return-void
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->e:Z

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_im_category_disbanded:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;)V

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 182
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->finish()V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    if-eqz v2, :cond_4

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 148
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v6, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v3, v0}, Ldcy$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldcy$a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    if-nez v1, :cond_2

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .restart local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v2, v1}, Ldcy$a;->a(Ljava/util/List;)V

    .line 163
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f()V

    .line 165
    .end local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->showLoadingDialog()V

    .line 217
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 231
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f()V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lctk$g;->layout_category_session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->setContentView(I)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_category_contain_session:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_category_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-nez v0, :cond_3

    .line 63
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "Category contain view param invalid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->finish()V

    .line 73
    :cond_2
    :goto_0
    return-void

    .line 68
    :cond_3
    sget v0, Lctk$f;->session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f:Landroid/widget/ListView;

    .line 69
    sget v0, Lctk$f;->icd_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->g:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->g:Landroid/view/View;

    sget v1, Lctk$f;->btn_add_session:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->h:Landroid/widget/Button;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    new-instance v0, Ldcz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {v0, p0, p0, v1}, Ldcz;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldcy$b;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    if-eqz v0, :cond_2

    .line 1096
    new-instance v0, Lcvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v1}, Ldcy$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcvm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->i:Lcvm;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->i:Lcvm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v0}, Ldcy$a;->b()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 106
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->c:Landroid/view/MenuItem;

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->c:Landroid/view/MenuItem;

    sget v1, Lctk$i;->action_add:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->c:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    invoke-interface {v0}, Ldcy$a;->i()V

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onDestroy()V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->b:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ldde;->a(Landroid/app/Activity;J[Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->e:Z

    .line 132
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onPause()V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->e:Z

    .line 126
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onResume()V

    .line 127
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ldcy$a;

    .line 1211
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->d:Ldcy$a;

    .line 31
    return-void
.end method
