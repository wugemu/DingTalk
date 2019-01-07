.class public final Lcam;
.super Landroid/widget/BaseAdapter;
.source "RedPacketsReceiverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcam$b;,
        Lcam$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/alibaba/wukong/im/Conversation;

.field private e:J

.field private f:Landroid/os/Handler;

.field private g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "type"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcam;->e:J

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcam;->f:Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcam;->a:Landroid/app/Activity;

    .line 137
    iput-object p3, p0, Lcam;->b:Ljava/util/List;

    .line 138
    iput-object p2, p0, Lcam;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 139
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iput-object v0, p0, Lcam;->g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 140
    iget-object v0, p0, Lcam;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcam;->d:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcam;->d:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcam;->e:J

    .line 148
    :cond_0
    :goto_0
    iput p4, p0, Lcam;->c:I

    .line 149
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcam;->d:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "orgId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcam;->d:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "orgId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcam;->e:J

    goto :goto_0
.end method

.method static synthetic a(Lcam;)Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .locals 1
    .param p0, "x0"    # Lcam;

    .prologue
    .line 60
    iget-object v0, p0, Lcam;->g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 336
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 337
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 336
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcam;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;)V
    .locals 6
    .param p0, "x0"    # Lcam;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 60
    .line 2280
    iget-object v0, p0, Lcam;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcaj$e;->redpackets_comment_dialog:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2282
    sget v0, Lcaj$d;->edt_comment:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2283
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcam;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2284
    sget v3, Lcaj$f;->redpackets_comment_edt:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2285
    sget v3, Lcaj$f;->redpackets_comment_edt_hint:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 2286
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2287
    iget-object v1, p0, Lcam;->a:Landroid/app/Activity;

    sget v3, Lcaj$f;->cancel:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2288
    iget-object v1, p0, Lcam;->a:Landroid/app/Activity;

    sget v3, Lcaj$f;->sure:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcam$2;

    invoke-direct {v3, p0, v0, p1}, Lcam$2;-><init>(Lcam;Landroid/widget/EditText;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2304
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2305
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 2306
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2307
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2308
    new-instance v2, Lcam$3;

    invoke-direct {v2, p0, v1, v0}, Lcam$3;-><init>(Lcam;Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    return-void
.end method

.method static synthetic b(Lcam;)J
    .locals 2
    .param p0, "x0"    # Lcam;

    .prologue
    .line 60
    iget-wide v0, p0, Lcam;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcam;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcam;

    .prologue
    .line 60
    iget-object v0, p0, Lcam;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcam;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcam;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 170
    if-nez p2, :cond_1

    .line 171
    iget-object v5, p0, Lcam;->a:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcaj$e;->item_redpackets_picked:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 173
    new-instance v4, Lcam$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcam$b;-><init>(B)V

    .line 174
    .local v4, "viewHolder":Lcam$b;
    sget v5, Lcaj$d;->picker_icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v5, v4, Lcam$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 175
    sget v5, Lcaj$d;->tv_receiver_ts:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcam$b;->e:Landroid/widget/TextView;

    .line 176
    sget v5, Lcaj$d;->tv_receiver_comment:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    .line 177
    sget v5, Lcaj$d;->tv_receiver_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcam$b;->c:Landroid/widget/TextView;

    .line 178
    sget v5, Lcaj$d;->tv_right_top:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    .line 179
    sget v5, Lcaj$d;->tv_right_bottom:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    .line 180
    sget v5, Lcaj$d;->left_divider:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcam$b;->a:Landroid/view/View;

    .line 181
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    :goto_0
    iget-object v5, v4, Lcam$b;->a:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v5, p0, Lcam;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    .line 187
    .local v1, "flow":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 188
    iget-object v5, v4, Lcam$b;->a:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v5, v4, Lcam$b;->c:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v5, p0, Lcam;->g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcam;->g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 192
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_1
    if-eqz v3, :cond_6

    .line 193
    iget-object v5, v4, Lcam$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v3}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6, v7, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1329
    iget-wide v6, p0, Lcam;->e:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    iget-object v5, p0, Lcam;->g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v5, :cond_3

    .line 1330
    iget-object v5, p0, Lcam;->g:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-wide v6, p0, Lcam;->e:J

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "realName":Ljava/lang/String;
    :goto_2
    iget-wide v6, p0, Lcam;->e:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 196
    if-eqz v2, :cond_4

    .line 197
    iget-object v5, v4, Lcam$b;->c:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "("

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v2    # "realName":Ljava/lang/String;
    :goto_3
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->modifyTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 211
    iget-object v5, v4, Lcam$b;->e:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_4
    iget v5, p0, Lcam;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 218
    iget v5, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 219
    iget-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    sget v6, Lcaj$f;->redpackets_picked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lcam;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcaj$b;->text_color_black:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    :goto_5
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->leaveMessage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 255
    iget v5, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_d

    .line 256
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    sget v6, Lcaj$f;->redpackets_comment:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    iget-object v6, p0, Lcam;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcaj$b;->redpackets_link_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    new-instance v6, Lcam$1;

    invoke-direct {v6, p0, v1}, Lcam$1;-><init>(Lcam;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :goto_6
    return-object p2

    .line 183
    .end local v1    # "flow":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v4    # "viewHolder":Lcam$b;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcam$b;

    .restart local v4    # "viewHolder":Lcam$b;
    goto/16 :goto_0

    .line 191
    .restart local v1    # "flow":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1332
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 199
    .restart local v2    # "realName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "redpackets_user_name"

    invoke-static {v5}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Lcam$a;

    iget-object v7, v4, Lcam$b;->c:Landroid/widget/TextView;

    invoke-direct {v6, p0, v3, v7}, Lcam$a;-><init>(Lcam;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/widget/TextView;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 203
    :cond_5
    iget-object v5, v4, Lcam$b;->c:Landroid/widget/TextView;

    invoke-static {v3}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 206
    .end local v2    # "realName":Ljava/lang/String;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v5, v4, Lcam$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6, v7, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 207
    iget-object v5, v4, Lcam$b;->c:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 213
    :cond_7
    iget-object v5, v4, Lcam$b;->e:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v5, v4, Lcam$b;->e:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->modifyTime:J

    invoke-static {v6, v7}, Lcbw;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 222
    :cond_8
    iget-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    sget v6, Lcaj$f;->redpackets_unpicked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lcam;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcaj$b;->text_color_gray:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 226
    :cond_9
    iget v5, p0, Lcam;->c:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 227
    iget-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 228
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lcaj$f;->redpackets_yuan:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 227
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget v5, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 230
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    sget v6, Lcaj$f;->redpackets_picked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 232
    :cond_a
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    sget v6, Lcaj$f;->redpackets_unpicked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 236
    :cond_b
    iget-boolean v5, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->isLuck:Z

    if-eqz v5, :cond_c

    .line 237
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    sget v6, Lcaj$f;->redpackets_best:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 238
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcaj$c;->redpackets_best_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    .line 241
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    .line 240
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 244
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcaj$b;->redpackets_normal_yellow:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_7
    iget-object v5, v4, Lcam$b;->f:Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lcaj$f;->redpackets_yuan:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 247
    :cond_c
    iget-object v5, v4, Lcam$b;->g:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 266
    :cond_d
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 269
    :cond_e
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    iget-object v6, p0, Lcam;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcaj$b;->text_color_gray:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v5, v4, Lcam$b;->d:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->leaveMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method
