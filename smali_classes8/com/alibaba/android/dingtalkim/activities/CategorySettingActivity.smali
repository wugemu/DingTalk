.class public Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;
.super Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
.source "CategorySettingActivity.java"

# interfaces
.implements Lddc$b;


# static fields
.field private static c:I


# instance fields
.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Lcvm;

.field private k:Lddc$a;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)[Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    .prologue
    .line 39
    .line 3132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 3135
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3136
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3139
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    return-object v0

    .line 3143
    :cond_2
    const/4 v0, 0x0

    .line 39
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    .line 3174
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->dialog_edit:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3176
    sget v0, Lctk$f;->dialog_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3177
    sget v2, Lctk$i;->dt_im_category_create_input_placeholder:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3178
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3179
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-object v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v4, v5}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3180
    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3181
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3182
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3183
    sget v3, Lctk$i;->dt_im_category_edit_name:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3184
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3185
    sget v1, Lctk$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3186
    sget v1, Lctk$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3199
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3200
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 39
    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "finish"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 205
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)Lddc$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    return-object v0
.end method

.method private h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->j:Lcvm;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->j:Lcvm;

    invoke-virtual {v0}, Lcvm;->notifyDataSetChanged()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->e:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_category_contain_session_AT:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v4}, Lddc$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->e:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_category_contain_session:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->dismissLoadingDialog()V

    .line 334
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->b(Z)V

    .line 244
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-object p1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 222
    return-void
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
    .line 262
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    if-eqz v2, :cond_4

    .line 263
    const/4 v1, 0x0

    .line 264
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

    .line 265
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v6, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v3, v0}, Lddc$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lddc$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    if-nez v1, :cond_2

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .restart local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v2, v1}, Lddc$a;->a(Ljava/util/List;)V

    .line 280
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->h()V

    .line 282
    .end local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "finish"    # Z

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->l:Z

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->b(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->showLoadingDialog()V

    .line 329
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 343
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 248
    sget v0, Lctk$i;->dt_im_category_disband_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->b(Z)V

    .line 250
    return-void
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 286
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->l:Z

    if-eqz v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->i:Z

    if-eqz v1, :cond_1

    .line 290
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_im_category_disbanded:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 300
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->finish()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->h()V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lctk$g;->layout_category_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->setContentView(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_category_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_category_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v1}, Liap;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->finish()V

    .line 74
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "CategorySettingActivity param invalid"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    :goto_0
    return-void

    .line 1084
    :cond_4
    sget v0, Lctk$f;->session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->f:Landroid/widget/ListView;

    .line 1086
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->layout_categroy_footer_add:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->g:Landroid/view/View;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->layout_categroy_head_edit:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->h:Landroid/view/View;

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->h:Landroid/view/View;

    sget v1, Lctk$f;->tv_category_contain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->e:Landroid/widget/TextView;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->h:Landroid/view/View;

    sget v1, Lctk$f;->cell_edit_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1162
    new-instance v0, Lddd;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {v0, p0, p0, v1}, Lddd;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lddc$b;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    if-eqz v0, :cond_3

    .line 1165
    new-instance v0, Lcvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v1}, Lddc$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcvm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->j:Lcvm;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->j:Lcvm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->c()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 226
    sget v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c:I

    const/4 v2, 0x0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 227
    .local v0, "item":Landroid/view/MenuItem;
    sget v1, Lctk$i;->dt_im_category_disband:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 228
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 230
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    invoke-interface {v0}, Lddc$a;->i()V

    .line 363
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onDestroy()V

    .line 364
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c:I

    if-ne v0, v1, :cond_0

    .line 2147
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2148
    sget v1, Lctk$i;->dt_im_category_disband_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V

    .line 2149
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    const/4 v2, 0x0

    .line 2158
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 238
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->i:Z

    .line 355
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onPause()V

    .line 356
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->i:Z

    .line 349
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onResume()V

    .line 350
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lddc$a;

    .line 2323
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->k:Lddc$a;

    .line 39
    return-void
.end method
