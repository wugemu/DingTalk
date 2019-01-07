.class public final Lgfo;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field e:I

.field f:Z

.field g:Z

.field h:J

.field i:Z

.field j:Landroid/support/v7/app/AlertDialog;

.field k:Lgfn$a;

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "PermissionSettingListViewHolder"

    iput-object v0, p0, Lgfo;->l:Ljava/lang/String;

    .line 79
    iput v2, p0, Lgfo;->e:I

    .line 81
    iput-boolean v2, p0, Lgfo;->f:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgfo;->g:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgfo;->h:J

    .line 87
    iput-boolean v2, p0, Lgfo;->i:Z

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 685
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgfo;Landroid/content/Context;JLgnu;)V
    .locals 6
    .param p0, "x0"    # Lgfo;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lgnu;

    .prologue
    const-wide/16 v4, 0x3ea

    const/4 v0, 0x1

    .line 70
    .line 2289
    if-eqz p4, :cond_0

    .line 3195
    iget-object v1, p4, Lgnu;->a:Ljava/lang/String;

    .line 2289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2314
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-boolean v1, p4, Lgnu;->f:Z

    .line 2296
    if-eqz v1, :cond_4

    .line 3283
    iget v1, p4, Lgnu;->k:I

    .line 2296
    if-ne v1, v0, :cond_4

    .line 2297
    invoke-virtual {p0, p4}, Lgfo;->a(Lgnu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4267
    iget-wide v2, p4, Lgnu;->j:J

    .line 2299
    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 2303
    cmp-long v1, p2, v4

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x3e9

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    .line 2307
    :cond_2
    iget-object v1, p0, Lgfo;->k:Lgfn$a;

    cmp-long v2, p2, v4

    if-nez v2, :cond_3

    :goto_1
    invoke-interface {v1, v0}, Lgfn$a;->a(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2311
    :cond_4
    iget-object v0, p0, Lgfo;->k:Lgfn$a;

    .line 5195
    iget-object v1, p4, Lgnu;->a:Ljava/lang/String;

    .line 2311
    invoke-interface {v0, v1}, Lgfn$a;->b(Ljava/lang/String;)Lgnu;

    move-result-object v0

    .line 2312
    if-eqz v0, :cond_5

    .line 5235
    iget-boolean v1, v0, Lgnu;->f:Z

    .line 2312
    if-eqz v1, :cond_5

    .line 5267
    iget-wide v0, v0, Lgnu;->j:J

    .line 2312
    cmp-long v0, v0, p2

    if-lez v0, :cond_5

    .line 2314
    sget v0, Lfzs$h;->dt_space_permission_modify_invalid_desc:I

    invoke-static {v0}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgfo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2316
    :cond_5
    iget-object v0, p0, Lgfo;->k:Lgfn$a;

    invoke-interface {v0, p2, p3, p4}, Lgfn$a;->a(JLgnu;)V

    goto :goto_0
.end method


# virtual methods
.method a(J)V
    .locals 5
    .param p1, "aclType"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lgfo;->c:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 663
    const-wide/16 v0, 0x3ec

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lgfo;->c:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_acl_owner:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 665
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 682
    :goto_0
    return-void

    .line 666
    :cond_0
    const-wide/16 v0, 0x3eb

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lgfo;->c:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_permission_type_manage_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 668
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 669
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lfzs$h;->icon_setting:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0

    .line 670
    :cond_1
    const-wide/16 v0, 0x3ea

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 671
    iget-object v0, p0, Lgfo;->c:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_permission_type_edit_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 672
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 673
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lfzs$h;->icon_compile:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0

    .line 674
    :cond_2
    const-wide/16 v0, 0x3e9

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 675
    iget-object v0, p0, Lgfo;->c:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_permission_type_browse_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 676
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 677
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lfzs$h;->icon_Y_eye:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lgfo;->c:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 680
    iget-object v0, p0, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 344
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 346
    sget v1, Lfzs$h;->sure:I

    new-instance v2, Lgfo$3;

    invoke-direct {v2, p0, v0}, Lgfo$3;-><init>(Lgfo;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 353
    return-void
.end method

.method a(Lgnu;)Z
    .locals 3
    .param p1, "aclMemberModel"    # Lgnu;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 278
    iget-object v1, p0, Lgfo;->k:Lgfn$a;

    invoke-interface {v1}, Lgfn$a;->e()I

    move-result v1

    invoke-static {v1}, Lgqu;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    iget v1, p1, Lgnu;->e:I

    .line 279
    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lgfo;->k:Lgfn$a;

    .line 280
    invoke-interface {v1}, Lgfn$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgfo;->k:Lgfn$a;

    invoke-interface {v1}, Lgfn$a;->j()Ljava/lang/String;

    move-result-object v1

    .line 2195
    iget-object v2, p1, Lgnu;->a:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
