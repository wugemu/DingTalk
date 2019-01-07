.class final Lewl$6;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(Leym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leym;

.field final synthetic b:Lewl;


# direct methods
.method constructor <init>(Lewl;Leym;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 944
    iput-object p1, p0, Lewl$6;->b:Lewl;

    iput-object p2, p0, Lewl$6;->a:Leym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 947
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 948
    const-class v1, Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;->b(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 949
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Show card "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lewl$6;->a:Leym;

    iget-wide v6, v5, Leym;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lewl$6;->b:Lewl;

    invoke-static {v1}, Lewl;->e(Lewl;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 951
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "tele_namecard_show_click"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 952
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;-><init>(Landroid/content/Context;)V

    .line 953
    .local v0, "contactFloatView":Lcom/alibaba/android/teleconf/widget/ContactFloatView;
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a()V

    .line 954
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    iget-object v1, p0, Lewl$6;->a:Leym;

    .line 1075
    instance-of v2, v1, Leym;

    if-eqz v2, :cond_5

    .line 1076
    check-cast v1, Leym;

    .line 1077
    sget v2, Leuj$i;->tv_contact_header:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->b:Landroid/widget/TextView;

    .line 1078
    sget v2, Leuj$i;->tv_caller_nick:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->c:Landroid/widget/TextView;

    .line 1079
    sget v2, Leuj$i;->tv_caller_position:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->d:Landroid/widget/TextView;

    .line 1080
    sget v2, Leuj$i;->tv_caller_company:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->g:Landroid/widget/TextView;

    .line 1081
    sget v2, Leuj$i;->img_close:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->f:Landroid/view/View;

    .line 1082
    sget v2, Leuj$i;->caller_avatar:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1083
    sget v2, Leuj$i;->tv_caller_labels:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 1084
    sget v3, Leuj$i;->rl_work_number:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->h:Landroid/view/View;

    .line 1086
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->b:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$l;->app_name:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-wide v4, v1, Leym;->a:J

    iput-wide v4, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->i:J

    .line 1089
    const/4 v3, 0x0

    .line 1090
    iget-object v4, v1, Leym;->b:Ljava/lang/String;

    .line 1091
    iget-wide v6, v1, Leym;->a:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1092
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-wide v6, v1, Leym;->a:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    .line 1093
    if-eqz v5, :cond_0

    .line 1094
    iget-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1095
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;

    invoke-direct {v7, v0, v1, v5}, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;-><init>(Lcom/alibaba/android/teleconf/widget/ContactFloatView;Leym;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v6, v5, v7}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V

    .line 1115
    :cond_0
    iget-object v5, v1, Leym;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1116
    iget-object v5, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->c:Landroid/widget/TextView;

    iget-object v6, v1, Leym;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    :goto_0
    invoke-static {}, Leyu;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1121
    iget-object v5, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v5, v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_1
    iget-object v3, v1, Leym;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1125
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->d:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    :goto_1
    iget-object v3, v1, Leym;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1132
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->g:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    :goto_2
    iget-boolean v3, v1, Leym;->g:Z

    if-eqz v3, :cond_4

    .line 1139
    iget-object v3, v1, Leym;->h:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, v1, Leym;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1140
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1141
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->d:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v9, v1, Leym;->h:Ljava/util/List;

    .line 1168
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_a

    .line 1169
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1145
    :cond_3
    iget-object v2, v1, Leym;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1147
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :cond_4
    iget-boolean v1, v1, Leym;->i:Z

    if-eqz v1, :cond_10

    .line 1152
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    :goto_3
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->f:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/widget/ContactFloatView$2;

    invoke-direct {v2, v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView$2;-><init>(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    :cond_5
    iget-object v1, p0, Lewl$6;->b:Lewl;

    invoke-static {v1}, Lewl;->f(Lewl;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 957
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lewl$6;->b:Lewl;

    invoke-static {v2}, Lewl;->f(Lewl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 958
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lewl$6;->b:Lewl;

    invoke-static {v2}, Lewl;->f(Lewl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v4, 0x9c40

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 966
    .end local v0    # "contactFloatView":Lcom/alibaba/android/teleconf/widget/ContactFloatView;
    :cond_6
    :goto_4
    return-void

    .line 1118
    .restart local v0    # "contactFloatView":Lcom/alibaba/android/teleconf/widget/ContactFloatView;
    :cond_7
    iget-object v5, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1127
    :cond_8
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->d:Landroid/widget/TextView;

    iget-object v4, v1, Leym;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1134
    :cond_9
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->g:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->g:Landroid/widget/TextView;

    iget-object v4, v1, Leym;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1171
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1173
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v5

    .line 1174
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 1175
    if-le v5, v6, :cond_d

    move v4, v5

    .line 1176
    :goto_5
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a:Landroid/content/Context;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v3, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    .line 1177
    const/4 v3, 0x0

    move v8, v3

    :goto_6
    if-ge v8, v4, :cond_3

    .line 1178
    const/4 v3, 0x0

    .line 1179
    if-ge v8, v6, :cond_12

    .line 1180
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-object v7, v3

    .line 1183
    :goto_7
    const/4 v3, 0x0

    .line 1184
    if-ge v8, v5, :cond_b

    .line 1185
    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    .line 1188
    :cond_b
    if-nez v7, :cond_e

    if-eqz v3, :cond_e

    .line 1189
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1177
    :cond_c
    :goto_8
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_6

    :cond_d
    move v4, v6

    .line 1175
    goto :goto_5

    .line 1190
    :cond_e
    if-eqz v7, :cond_c

    .line 1191
    if-nez v3, :cond_f

    .line 1192
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    iget-object v11, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a:Landroid/content/Context;

    invoke-direct {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 1193
    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v3, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 1194
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1195
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 1196
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1197
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v10, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 1198
    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 1199
    iget-object v11, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a:Landroid/content/Context;

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 1200
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 1202
    :cond_f
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1203
    iget-object v11, v7, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    goto :goto_8

    .line 1154
    :cond_10
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 963
    .end local v0    # "contactFloatView":Lcom/alibaba/android/teleconf/widget/ContactFloatView;
    :cond_11
    const-class v1, Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;->a(Ljava/lang/Class;)V

    .line 964
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Stop show card "

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v0    # "contactFloatView":Lcom/alibaba/android/teleconf/widget/ContactFloatView;
    :cond_12
    move-object v7, v3

    goto/16 :goto_7
.end method
