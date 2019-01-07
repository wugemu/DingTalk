.class public final Lgdk;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "SpaceAclMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgdk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgnu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lgdk$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lgdk;->a:I

    .line 36
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
    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v7, Lgdi;

    invoke-direct {v7}, Lgdi;-><init>()V

    .line 44
    .local v7, "viewHolder":Lgdi;
    iget-object v0, p0, Lgdk;->m:Landroid/content/Context;

    iget-object v1, p0, Lgdk;->b:Lgdk$a;

    .line 1064
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lfzs$g;->space_acl_member_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1066
    .end local p2    # "convertView":Landroid/view/View;
    sget v0, Lfzs$f;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    .line 1067
    sget v0, Lfzs$f;->tv_contact_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 1068
    sget v0, Lfzs$f;->tv_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1069
    sget v0, Lfzs$f;->tv_contact_unregister:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lgdi;->d:Landroid/widget/TextView;

    .line 1070
    sget v0, Lfzs$f;->tv_conversation_owner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lgdi;->f:Landroid/widget/TextView;

    .line 1071
    sget v0, Lfzs$f;->tv_member_lock_flag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, v7, Lgdi;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1073
    iput-object v1, v7, Lgdi;->h:Lgdk$a;

    .line 45
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v1, p0, Lgdk;->m:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lgdk;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lgnu;

    iget v9, p0, Lgdk;->a:I

    .line 1079
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    if-nez p2, :cond_2

    .line 52
    :cond_0
    :goto_1
    return-object p2

    .line 47
    .end local v7    # "viewHolder":Lgdi;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgdi;

    .restart local v7    # "viewHolder":Lgdi;
    goto :goto_0

    .line 1083
    :cond_2
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1227
    iget v0, v8, Lgnu;->e:I

    .line 1087
    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 2181
    if-eqz v7, :cond_3

    if-nez v8, :cond_7

    .line 21235
    :cond_3
    :goto_2
    iget-boolean v0, v8, Lgnu;->f:Z

    .line 1097
    if-nez v0, :cond_4

    .line 21243
    iget-boolean v0, v8, Lgnu;->g:Z

    .line 1097
    if-eqz v0, :cond_11

    .line 1098
    :cond_4
    iget-object v0, v7, Lgdi;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, v7, Lgdi;->g:Z

    .line 22127
    :goto_3
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 22128
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22129
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 22131
    const/4 v0, 0x1

    if-ne v9, v0, :cond_6

    .line 22135
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 22235
    iget-boolean v0, v8, Lgnu;->f:Z

    .line 22137
    if-nez v0, :cond_5

    .line 22243
    iget-boolean v0, v8, Lgnu;->g:Z

    .line 22137
    if-eqz v0, :cond_12

    .line 22138
    :cond_5
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 22149
    :goto_4
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    new-instance v2, Lgdi$2;

    invoke-direct {v2, v7, v8, v1}, Lgdi$2;-><init>(Lgdi;Lgnu;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23110
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 23111
    new-instance v0, Lgdi$1;

    invoke-direct {v0, v7, v9, v1, v8}, Lgdi$1;-><init>(Lgdi;ILandroid/content/Context;Lgnu;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2185
    :cond_7
    iget-object v0, v7, Lgdi;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 2186
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    iget-boolean v0, v8, Lgnu;->i:Z

    .line 2189
    if-eqz v0, :cond_8

    .line 2191
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 3203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 2191
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2192
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 4203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 4211
    iget-object v3, v8, Lgnu;->c:Ljava/lang/String;

    .line 2192
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2196
    :cond_8
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 5195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 2196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2198
    new-instance v2, Lgdi$3;

    invoke-direct {v2, v7, v7, v8}, Lgdi$3;-><init>(Lgdi;Lgdi;Lgnu;)V

    .line 2254
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 2255
    const-class v3, Lcom/alibaba/wukong/Callback;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v2, v0

    .line 2257
    :cond_9
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 6195
    iget-object v3, v8, Lgnu;->a:Ljava/lang/String;

    .line 2257
    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6227
    :cond_a
    iget v0, v8, Lgnu;->e:I

    .line 1089
    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 6264
    if-eqz v7, :cond_3

    .line 6268
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6269
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6270
    iget-object v0, v7, Lgdi;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6272
    if-eqz v8, :cond_3

    .line 7243
    iget-boolean v0, v8, Lgnu;->g:Z

    .line 6276
    if-eqz v0, :cond_b

    .line 6277
    iget-object v0, v7, Lgdi;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6278
    iget-object v0, v7, Lgdi;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6279
    iget-object v0, v7, Lgdi;->f:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_cspace_acl_owner:I

    invoke-static {v2}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7259
    :goto_5
    iget-boolean v0, v8, Lgnu;->i:Z

    .line 6284
    if-eqz v0, :cond_d

    .line 6286
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 8203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 6286
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6287
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 9203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 9211
    iget-object v3, v8, Lgnu;->c:Ljava/lang/String;

    .line 6287
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6288
    iget-object v2, v7, Lgdi;->d:Landroid/widget/TextView;

    .line 9251
    iget-boolean v0, v8, Lgnu;->h:Z

    .line 6288
    if-eqz v0, :cond_c

    const/16 v0, 0x8

    :goto_6
    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 6281
    :cond_b
    iget-object v0, v7, Lgdi;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_5

    .line 6288
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 6292
    :cond_d
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 10195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 6292
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6294
    new-instance v6, Lgdi$4;

    invoke-direct {v6, v7, v7, v8}, Lgdi$4;-><init>(Lgdi;Lgdi;Lgnu;)V

    .line 6329
    invoke-static {}, Lgpq;->a()Lgpq;

    move-result-object v0

    .line 11195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 12109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 12219
    iget-object v4, v8, Lgnu;->d:Ljava/lang/String;

    .line 13109
    const-wide/16 v10, 0x0

    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 6329
    invoke-virtual/range {v0 .. v6}, Lgpq;->a(Landroid/content/Context;JJLcma;)V

    goto/16 :goto_2

    .line 13227
    :cond_e
    iget v0, v8, Lgnu;->e:I

    .line 1091
    if-nez v0, :cond_10

    .line 13336
    if-eqz v7, :cond_3

    .line 13340
    iget-object v0, v7, Lgdi;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 13341
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lfzs$e;->space_acl_member_dept_icon:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 13342
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13344
    if-eqz v8, :cond_3

    .line 14259
    iget-boolean v0, v8, Lgnu;->i:Z

    .line 13348
    if-eqz v0, :cond_f

    .line 13350
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 15203
    iget-object v2, v8, Lgnu;->b:Ljava/lang/String;

    .line 13350
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 13354
    :cond_f
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    .line 16195
    iget-object v2, v8, Lgnu;->a:Ljava/lang/String;

    .line 13354
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17195
    iget-object v0, v8, Lgnu;->a:Ljava/lang/String;

    .line 18109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 13357
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13359
    new-instance v2, Lgdi$5;

    invoke-direct {v2, v7, v7, v8}, Lgdi$5;-><init>(Lgdi;Lgdi;Lgnu;)V

    .line 13401
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 13402
    const-class v4, Lcma;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13404
    :goto_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 18219
    iget-object v4, v8, Lgnu;->d:Ljava/lang/String;

    .line 19109
    const-wide/16 v10, 0x0

    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 13404
    invoke-virtual {v2, v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/util/List;Lcma;)V

    goto/16 :goto_2

    .line 19227
    :cond_10
    iget v0, v8, Lgnu;->e:I

    .line 1093
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 19411
    if-eqz v7, :cond_3

    .line 19415
    iget-object v0, v7, Lgdi;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 19416
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19418
    if-eqz v8, :cond_3

    .line 19422
    invoke-static {}, Lgpz;->a()Lgpz;

    .line 20195
    iget-object v0, v8, Lgnu;->a:Ljava/lang/String;

    .line 21109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 19422
    invoke-static {v2, v3}, Lgpz;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 19424
    if-eqz v0, :cond_3

    .line 19428
    iget-object v0, v7, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lfzs$e;->cspace_acl_member_org:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 19429
    iget-object v0, v7, Lgdi;->c:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_cspace_acl_member_org:I

    invoke-static {v2}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1101
    :cond_11
    iget-object v0, v7, Lgdi;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, v7, Lgdi;->g:Z

    goto/16 :goto_3

    .line 22140
    :cond_12
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 22141
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 22142
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lgdm;->c(Lgnu;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 22143
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 22145
    :cond_13
    iget-object v0, v7, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_14
    move-object v0, v2

    goto/16 :goto_7
.end method
