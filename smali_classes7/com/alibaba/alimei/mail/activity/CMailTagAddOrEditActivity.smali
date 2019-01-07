.class public Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailTagAddOrEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/alibaba/alimei/sdk/model/MailTagModel;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/GridView;

.field private i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

.field private j:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->j:Landroid/text/TextWatcher;

    .line 336
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->h:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 220
    .local v0, "id":I
    sget v1, Laxo$f;->cancel:I

    if-ne v1, v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->finish()V

    .line 3303
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget v1, Laxo$f;->btn_ok:I

    if-ne v1, v0, :cond_0

    .line 223
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b:Z

    if-eqz v1, :cond_3

    .line 2235
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2239
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2240
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    .line 2363
    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->e:Ljava/lang/String;

    .line 2241
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)V

    .line 2263
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->a:Ljava/lang/String;

    invoke-static {v4}, Lafw;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v4

    .line 2264
    if-eqz v4, :cond_2

    .line 2265
    invoke-interface {v4, v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/TagApi;->addTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 2266
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->showLoadingDialog()V

    goto :goto_0

    .line 2268
    :cond_2
    const-string/jumbo v1, "CMailTagAddOrEditActivity"

    const-string/jumbo v2, "add tag fail for tagApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3273
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3274
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    .line 3363
    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->e:Ljava/lang/String;

    .line 3275
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)V

    .line 3300
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->a:Ljava/lang/String;

    invoke-static {v4}, Lafw;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v4

    .line 3301
    if-eqz v4, :cond_4

    .line 3302
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v4, v5, v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/TagApi;->updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 3303
    sget v1, Laxo$i;->dt_cmail_updating:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->showLoadingDialog(I)V

    goto :goto_0

    .line 3305
    :cond_4
    const-string/jumbo v1, "CMailTagAddOrEditActivity"

    const-string/jumbo v2, "update tag fail for tagApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1130
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1131
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->a:Ljava/lang/String;

    .line 1132
    const-string/jumbo v3, "mail_tag_model"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 1133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b:Z

    .line 1135
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 113
    :goto_1
    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->finish()V

    .line 115
    const-string/jumbo v0, "CMailTagAddOrEditActivity"

    const-string/jumbo v1, "initArgs fail, so finish"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1133
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1135
    goto :goto_1

    .line 119
    :cond_2
    sget v0, Laxo$g;->activity_tag_add_or_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->setContentView(I)V

    .line 1142
    sget v0, Laxo$f;->cancel:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->d:Landroid/view/View;

    .line 1143
    sget v0, Laxo$f;->btn_ok:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->e:Landroid/view/View;

    .line 1144
    sget v0, Laxo$f;->title:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->f:Landroid/widget/TextView;

    .line 1145
    sget v0, Laxo$f;->tag_name:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    .line 1146
    sget v0, Laxo$f;->grid_colors:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->h:Landroid/widget/GridView;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->j:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1160
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->h:Landroid/widget/GridView;

    sget v4, Laxo$g;->cmail_add_tag_item:I

    invoke-direct {v0, p0, v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;-><init>(Landroid/content/Context;Landroid/widget/GridView;I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    .line 1161
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b:Z

    if-nez v0, :cond_4

    .line 1162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->f:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_edit_tag:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1167
    :goto_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->h:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Laxo$b;->mail_tag_colors:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gtz v3, :cond_5

    .line 1171
    :cond_3
    const-string/jumbo v0, "CMailTagAddOrEditActivity"

    const-string/jumbo v1, "obtain color array fail, so finish"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->finish()V

    goto/16 :goto_2

    .line 1165
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->f:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_add_tag:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1176
    :cond_5
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1209
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b:Z

    if-nez v3, :cond_6

    .line 1210
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getColor()I

    move-result v3

    .line 2035
    const-string/jumbo v4, "#%06X"

    new-array v1, v1, [Ljava/lang/Object;

    const v5, 0xffffff

    and-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a(Ljava/lang/String;)V

    .line 1214
    :cond_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->b(Ljava/util/List;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a()V

    .line 324
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->j:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 329
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->j:Landroid/text/TextWatcher;

    .line 331
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    invoke-virtual {v1, p3}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, "color":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
