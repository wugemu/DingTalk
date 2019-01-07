.class public final Lgfm;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "PermissionSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgnu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lgfn$a;

.field public b:I

.field public c:Z

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    iput v0, p0, Lgfm;->b:I

    .line 36
    iput-boolean v0, p0, Lgfm;->c:Z

    .line 40
    iput-boolean v0, p0, Lgfm;->e:Z

    .line 44
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    if-nez p2, :cond_1

    .line 51
    new-instance v7, Lgfo;

    invoke-direct {v7}, Lgfo;-><init>()V

    .line 52
    .local v7, "viewHolder":Lgfo;
    iget-object v0, p0, Lgfm;->m:Landroid/content/Context;

    .line 1094
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->space_permission_setting_member_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1096
    .end local p2    # "convertView":Landroid/view/View;
    sget v0, Lfzs$f;->tv_contact_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 1097
    sget v0, Lfzs$f;->tv_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1098
    sget v0, Lfzs$f;->tv_role_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lgfo;->c:Landroid/widget/TextView;

    .line 1099
    sget v0, Lfzs$f;->if_role_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, v7, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 53
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v1, p0, Lgfm;->m:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lgfm;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lgnu;

    iget v0, p0, Lgfm;->b:I

    iget-boolean v2, p0, Lgfm;->c:Z

    iget-wide v4, p0, Lgfm;->d:J

    iget-boolean v3, p0, Lgfm;->e:Z

    .line 1106
    iput v0, v7, Lgfo;->e:I

    .line 1107
    iput-boolean v2, v7, Lgfo;->f:Z

    .line 1108
    iput-wide v4, v7, Lgfo;->h:J

    .line 1109
    iput-boolean v3, v7, Lgfo;->i:Z

    .line 1111
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    if-nez p2, :cond_2

    .line 59
    :cond_0
    :goto_1
    iget-object v0, p0, Lgfm;->a:Lgfn$a;

    .line 25689
    iput-object v0, v7, Lgfo;->k:Lgfn$a;

    .line 61
    return-object p2

    .line 55
    .end local v7    # "viewHolder":Lgfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgfo;

    .restart local v7    # "viewHolder":Lgfo;
    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1227
    iget v0, v8, Lgnu;->e:I

    .line 1119
    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1381
    if-eqz v7, :cond_3

    .line 1385
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 1386
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lfzs$e;->space_acl_member_dept_icon:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1387
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    if-eqz v8, :cond_3

    .line 2267
    iget-wide v2, v8, Lgnu;->j:J

    .line 1393
    invoke-virtual {v7, v2, v3}, Lgfo;->a(J)V

    .line 3259
    iget-boolean v0, v8, Lgnu;->i:Z

    .line 1395
    if-eqz v0, :cond_5

    .line 1397
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 4203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 1397
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 5203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 5211
    iget-object v3, v8, Lgnu;->c:Ljava/lang/String;

    .line 1398
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25134
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 25138
    iget v0, v7, Lgfo;->e:I

    if-eqz v0, :cond_4

    .line 25243
    iget-boolean v0, v8, Lgnu;->g:Z

    .line 25139
    if-nez v0, :cond_4

    .line 25283
    iget v0, v8, Lgnu;->k:I

    .line 25140
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const v0, 0xffff

    invoke-virtual {v8, v0}, Lgnu;->a(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 25141
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v7, Lgfo;->g:Z

    .line 25142
    iget-object v0, v7, Lgfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->ui_common_level3_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25143
    iget-object v0, v7, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfzs$c;->ui_common_level3_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 25144
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 25145
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1402
    :cond_5
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 6195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 1402
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1404
    new-instance v2, Lgfo$6;

    invoke-direct {v2, v7, v1, v7, v8}, Lgfo$6;-><init>(Lgfo;Landroid/content/Context;Lgfo;Lgnu;)V

    .line 1451
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 1452
    const-class v3, Lcom/alibaba/wukong/Callback;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v2, v0

    .line 1454
    :cond_6
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 7195
    iget-object v3, v8, Lgnu;->a:Ljava/lang/String;

    .line 1454
    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_2

    .line 7227
    :cond_7
    iget v0, v8, Lgnu;->e:I

    .line 1121
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 7462
    if-eqz v7, :cond_3

    .line 7466
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7467
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7468
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 7470
    if-eqz v8, :cond_3

    .line 8267
    iget-wide v2, v8, Lgnu;->j:J

    .line 7474
    invoke-virtual {v7, v2, v3}, Lgfo;->a(J)V

    .line 7476
    iget-wide v2, v7, Lgfo;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    iget-wide v2, v7, Lgfo;->h:J

    .line 9219
    iget-object v0, v8, Lgnu;->d:Ljava/lang/String;

    .line 10109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7476
    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 7478
    invoke-static {}, Lcms;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7479
    sget v0, Lfzs$e;->space_icon_external_cn:I

    .line 7483
    :goto_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7484
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7485
    iget-object v2, v7, Lgfo;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10259
    :cond_8
    iget-boolean v0, v8, Lgnu;->i:Z

    .line 7488
    if-eqz v0, :cond_b

    .line 7490
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 11203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 7490
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7491
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 12203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 12211
    iget-object v3, v8, Lgnu;->c:Ljava/lang/String;

    .line 7491
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7492
    iget-object v2, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 12251
    iget-boolean v0, v8, Lgnu;->h:Z

    .line 7492
    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    goto/16 :goto_2

    .line 7481
    :cond_9
    sget v0, Lfzs$e;->space_icon_external_en:I

    goto :goto_3

    .line 7492
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 7496
    :cond_b
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 13195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 7496
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7498
    new-instance v6, Lgfo$7;

    invoke-direct {v6, v7, v1, v7, v8}, Lgfo$7;-><init>(Lgfo;Landroid/content/Context;Lgfo;Lgnu;)V

    .line 7538
    invoke-static {}, Lgpq;->a()Lgpq;

    move-result-object v0

    .line 14195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 15109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 15219
    iget-object v4, v8, Lgnu;->d:Ljava/lang/String;

    .line 16109
    const-wide/16 v10, 0x0

    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7538
    invoke-virtual/range {v0 .. v6}, Lgpq;->a(Landroid/content/Context;JJLcma;)V

    goto/16 :goto_2

    .line 16227
    :cond_c
    iget v0, v8, Lgnu;->e:I

    .line 1123
    if-nez v0, :cond_e

    .line 16546
    if-eqz v7, :cond_3

    .line 16550
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 16551
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lfzs$e;->space_acl_member_dept_icon:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 16552
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16554
    if-eqz v8, :cond_3

    .line 17267
    iget-wide v2, v8, Lgnu;->j:J

    .line 16558
    invoke-virtual {v7, v2, v3}, Lgfo;->a(J)V

    .line 18259
    iget-boolean v0, v8, Lgnu;->i:Z

    .line 16560
    if-eqz v0, :cond_d

    .line 16562
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 19203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 16562
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 16566
    :cond_d
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    .line 20195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 16566
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16568
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21195
    iget-object v0, v8, Lgnu;->a:Ljava/lang/String;

    .line 22109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 16569
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16571
    new-instance v2, Lgfo$8;

    invoke-direct {v2, v7, v1, v7, v8}, Lgfo$8;-><init>(Lgfo;Landroid/content/Context;Lgfo;Lgnu;)V

    .line 16629
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 16630
    const-class v4, Lcma;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 16632
    :goto_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 22219
    iget-object v4, v8, Lgnu;->d:Ljava/lang/String;

    .line 23109
    const-wide/16 v10, 0x0

    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 16632
    invoke-virtual {v2, v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/util/List;Lcma;)V

    goto/16 :goto_2

    .line 23227
    :cond_e
    iget v0, v8, Lgnu;->e:I

    .line 1125
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 23639
    if-eqz v7, :cond_3

    .line 23643
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 23644
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23646
    if-eqz v8, :cond_3

    .line 23650
    invoke-static {}, Lgpz;->a()Lgpz;

    .line 24195
    iget-object v0, v8, Lgnu;->a:Ljava/lang/String;

    .line 25109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 23650
    invoke-static {v2, v3}, Lgpz;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 23652
    if-eqz v0, :cond_3

    .line 23656
    iget-object v0, v7, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lfzs$e;->cspace_acl_member_org:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 23657
    iget-object v0, v7, Lgfo;->b:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_cspace_acl_member_org:I

    invoke-static {v2}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 25147
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, v7, Lgfo;->g:Z

    .line 25148
    iget-object v0, v7, Lgfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25149
    iget-object v0, v7, Lgfo;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 25150
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 25151
    new-instance v0, Lgfo$1;

    invoke-direct {v0, v7, v1, v8}, Lgfo$1;-><init>(Lgfo;Landroid/content/Context;Lgnu;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_10
    move-object v0, v2

    goto :goto_5
.end method
