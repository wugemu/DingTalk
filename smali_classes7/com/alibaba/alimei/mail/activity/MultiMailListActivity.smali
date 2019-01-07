.class public Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MultiMailListActivity.java"

# interfaces
.implements Ladq;


# static fields
.field private static Z:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

.field private static ac:Lsd;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ProgressBar;

.field private E:Landroid/view/View;

.field private F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private H:Landroid/view/View;

.field private I:Ljava/lang/String;

.field private J:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

.field private K:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

.field private L:Lrz;

.field private M:Lrz;

.field private N:Landroid/content/Context;

.field private O:Landroid/view/ViewGroup;

.field private P:Landroid/view/ViewGroup;

.field private Q:I

.field private R:Landroid/widget/TextView;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Lcom/alibaba/wukong/im/Conversation;

.field private X:I

.field private Y:Ladr;

.field a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

.field private aa:I

.field private ab:J

.field private ad:Lacl$a;

.field private ae:Landroid/view/View$OnClickListener;

.field private af:Z

.field private ag:Ldq;

.field private ah:Landroid/content/BroadcastReceiver;

.field private ai:Lxm;

.field b:Lyb;

.field c:Lyb;

.field d:Lxm;

.field private e:I

.field private f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/os/Handler;

.field private u:I

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    sput-object v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->Z:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    .line 344
    sput-object v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ac:Lsd;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 158
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 181
    iput v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->r:Ljava/lang/String;

    .line 208
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->s:Landroid/widget/ImageView;

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    .line 210
    iput v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->u:I

    .line 211
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    .line 233
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->I:Ljava/lang/String;

    .line 235
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->J:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 236
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->K:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 237
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->L:Lrz;

    .line 239
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->M:Lrz;

    .line 244
    iput v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->Q:I

    .line 259
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->Y:Ladr;

    .line 369
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ad:Lacl$a;

    .line 394
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b:Lyb;

    .line 414
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c:Lyb;

    .line 770
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ae:Landroid/view/View$OnClickListener;

    .line 1538
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->af:Z

    .line 1843
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ah:Landroid/content/BroadcastReceiver;

    .line 1950
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->d:Lxm;

    .line 1993
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ai:Lxm;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->T:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->W:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lafl;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lafl;
    .param p3, "create"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2129
    const-string/jumbo v1, "MultiMailListActivity"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "staff banner data "

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    const-string/jumbo v0, "created"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    sget v0, Laxo$i;->dt_mail_add_account_banner_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lafl;->b:Ljava/lang/String;

    .line 2132
    const-string/jumbo v0, "dingtalk://qr.dingtalk.com/page/mail_login.html"

    iput-object v0, p2, Lafl;->c:Ljava/lang/String;

    .line 2134
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    iput-object v0, p2, Lafl;->g:Lafl$a;

    .line 2161
    if-eqz p3, :cond_1

    .line 2162
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lafa;->c(Lafl;)V

    .line 2166
    :goto_1
    return-void

    .line 2129
    :cond_0
    const-string/jumbo v0, "update"

    goto :goto_0

    .line 2164
    :cond_1
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lafa;->b(Lafl;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "create"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2169
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v9

    invoke-virtual {v9}, Lacr;->g()Z

    move-result v0

    .line 2171
    .local v0, "hasOtherAccount":Z
    if-nez v0, :cond_2

    .line 2172
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v9

    .line 30146
    iget-object v10, v9, Lafa;->a:Ljava/util/List;

    if-eqz v10, :cond_3

    .line 30150
    iget-object v9, v9, Lafa;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lafl;

    .line 30151
    if-eqz v9, :cond_0

    iget v11, v9, Lafl;->f:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    move-object v4, v9

    .line 2174
    .local v4, "oldModel":Lafl;
    :goto_0
    const/4 v3, 0x0

    .line 2177
    .local v3, "needCreate":Z
    if-eqz v4, :cond_4

    .line 2178
    move-object v2, v4

    .line 2191
    .local v2, "model":Lafl;
    :goto_1
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v8

    .line 2192
    .local v8, "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 2193
    :cond_1
    invoke-direct {p0, p1, v2, v3}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/content/Context;Lafl;Z)V

    .line 2225
    .end local v2    # "model":Lafl;
    .end local v3    # "needCreate":Z
    .end local v4    # "oldModel":Lafl;
    .end local v8    # "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    :goto_2
    return-void

    .line 30156
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 2179
    .restart local v3    # "needCreate":Z
    .restart local v4    # "oldModel":Lafl;
    :cond_4
    if-eqz p2, :cond_2

    .line 2180
    new-instance v2, Lafl;

    invoke-direct {v2}, Lafl;-><init>()V

    .line 2181
    .restart local v2    # "model":Lafl;
    sget v9, Laxo$i;->icon_notice:I

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lafl;->d:Ljava/lang/String;

    .line 2182
    const/4 v9, 0x1

    iput-boolean v9, v2, Lafl;->h:Z

    .line 2183
    const/4 v9, 0x1

    iput v9, v2, Lafl;->f:I

    .line 2184
    const/4 v9, 0x1

    iput-boolean v9, v2, Lafl;->i:Z

    .line 2186
    const/4 v3, 0x1

    goto :goto_1

    .line 2198
    .restart local v8    # "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_5
    const-wide/16 v6, 0x0

    .line 2199
    .local v6, "orgId":J
    const/4 v1, 0x0

    .line 2200
    .local v1, "isAdmin":Z
    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2201
    .local v5, "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v5, :cond_6

    iget-boolean v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v10, :cond_6

    .line 2202
    iget v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 2203
    const/4 v1, 0x1

    .line 2204
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 2210
    .end local v5    # "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_7
    if-nez v1, :cond_8

    .line 2212
    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2213
    .restart local v5    # "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 2214
    const/4 v1, 0x1

    .line 2215
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 2219
    .end local v5    # "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_8
    if-eqz v1, :cond_b

    .line 31096
    const-string/jumbo v10, "MultiMailListActivity"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v12, "admin banner data "

    aput-object v12, v11, v9

    const/4 v12, 0x1

    if-eqz v3, :cond_9

    const-string/jumbo v9, "created"

    :goto_3
    aput-object v9, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31098
    sget v9, Laxo$i;->dt_mail_admin_banner_text:I

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lafl;->b:Ljava/lang/String;

    .line 31100
    const/4 v9, 0x0

    iput-object v9, v2, Lafl;->g:Lafl$a;

    .line 31102
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v9

    new-instance v10, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$36;

    invoke-direct {v10, p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$36;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lafl;)V

    invoke-virtual {v9, v6, v7, v10}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(JLcma;)V

    .line 31121
    if-eqz v3, :cond_a

    .line 31122
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v9

    invoke-virtual {v9, v2}, Lafa;->c(Lafl;)V

    goto/16 :goto_2

    .line 31096
    :cond_9
    const-string/jumbo v9, "update"

    goto :goto_3

    .line 31124
    :cond_a
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v9

    invoke-virtual {v9, v2}, Lafa;->b(Lafl;)V

    goto/16 :goto_2

    .line 2222
    :cond_b
    invoke-direct {p0, p1, v2, v3}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/content/Context;Lafl;Z)V

    goto/16 :goto_2
.end method

.method private a(Landroid/view/View;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1173
    if-nez p1, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1180
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1185
    :cond_3
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v4, :cond_4

    .line 1186
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 21246
    iget-object v0, v4, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1187
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    if-eqz v0, :cond_4

    instance-of v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v4, :cond_4

    move-object v1, v0

    .line 1188
    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1189
    .local v1, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1196
    .end local v0    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .end local v1    # "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_4
    if-eqz p2, :cond_5

    .line 1197
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    const-string/jumbo v4, "translationY"

    new-array v5, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    aput v8, v5, v9

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1199
    .local v3, "showAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1201
    .end local v3    # "showAnimator":Landroid/animation/ObjectAnimator;
    :cond_5
    const-string/jumbo v4, "translationY"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1202
    .local v2, "hideAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$19;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$19;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1221
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;II)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 158
    .line 37267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 38246
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 37270
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 37272
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37273
    :cond_0
    :goto_0
    return-void

    .line 37276
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 37278
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 37279
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, v0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 37282
    if-eqz v0, :cond_0

    .line 37286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 39246
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 37287
    instance-of v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_0

    .line 37288
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 37289
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37291
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Laxo$i;->dt_mail_download_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 37292
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37291
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37293
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Landroid/view/View;Lcom/alibaba/alimei/mail/widget/MultiMailsView$a;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/alibaba/alimei/mail/widget/MultiMailsView$a;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    .line 34507
    const-string/jumbo v0, "mail_index_unfold_cick"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 33847
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-nez v0, :cond_0

    .line 33848
    const-string/jumbo v0, "MultiMailListActivity"

    const-string/jumbo v1, "showFilterDropdownMenu fail for mFragment is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33866
    :goto_0
    return-void

    .line 33852
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v4, Laxo$i;->icon_act_close:I

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 33853
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 33854
    const-string/jumbo v0, "pref_key_has_show_add_account"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 33856
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33857
    new-instance v4, Lsm;

    invoke-direct {v4, p0}, Lsm;-><init>(Landroid/app/Activity;)V

    .line 33858
    const/16 v5, 0x23

    sget v6, Laxo$i;->icon_inbox:I

    sget v7, Laxo$i;->dt_mail_filter_all_title:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v5

    .line 33859
    const/16 v6, 0x24

    sget v7, Laxo$i;->icon_dmail:I

    sget v8, Laxo$i;->dt_mail_filter_unread_title:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v6

    .line 33860
    const/16 v7, 0x2e

    sget v8, Laxo$i;->icon_star:I

    sget v9, Laxo$i;->dt_mail_filter_flag_title:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v7

    .line 33861
    const/16 v8, 0x18

    sget v9, Laxo$i;->icon_annex:I

    sget v10, Laxo$i;->dt_mail_filter_attachment_title:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v8

    .line 33863
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 35246
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 33864
    if-nez v0, :cond_1

    .line 33865
    const-string/jumbo v0, "MultiMailListActivity"

    const-string/jumbo v1, "showFilterDropdownMenu fail for baseModel is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33869
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33870
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33871
    invoke-static {}, Lacg;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 33872
    instance-of v5, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_3

    .line 33873
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 33874
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33875
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33876
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33885
    :cond_2
    :goto_1
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33899
    :goto_2
    invoke-virtual {v4, v9}, Lsm;->a(Ljava/util/List;)V

    .line 33901
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 35945
    invoke-static {}, Lacg;->f()Z

    move-result v5

    .line 35947
    if-eqz v5, :cond_8

    .line 35948
    iget v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_3
    move v1, v0

    .line 33902
    :goto_4
    :pswitch_0
    invoke-virtual {v4, v1}, Lsm;->a(I)V

    .line 33903
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    .line 36085
    iput-object v0, v4, Lsm;->a:Lafo;

    .line 33932
    sget v0, Laxo$f;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p0}, Lcms;->a(Landroid/app/Activity;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v4, p1, v0}, Lsm;->a(Landroid/view/View;I)V

    .line 33934
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    .line 36485
    iput-object v0, v4, Lso;->j:Lso$a;

    goto/16 :goto_0

    .line 33878
    :cond_3
    instance-of v5, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v5, :cond_2

    .line 33879
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 33880
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isUnreadTag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 33881
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33883
    :cond_4
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33887
    :cond_5
    instance-of v5, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_7

    .line 33888
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 33889
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-nez v0, :cond_6

    .line 33890
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33896
    :cond_6
    :goto_5
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33892
    :cond_7
    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v0, :cond_6

    .line 33893
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33894
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_1
    move v1, v2

    .line 35954
    goto :goto_4

    :pswitch_2
    move v1, v3

    .line 35957
    goto :goto_4

    .line 35959
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_3

    .line 35963
    :cond_8
    iget v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_4

    :pswitch_5
    move v1, v2

    .line 35969
    goto :goto_4

    :pswitch_6
    move v1, v3

    .line 35971
    goto :goto_4

    .line 35948
    .line 35963
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Landroid/view/View;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .prologue
    .line 158
    .line 37226
    if-eqz p1, :cond_1

    .line 37230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37231
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_2

    .line 37232
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .end local p1    # "x1":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->lastSyncTime:J

    .line 37237
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ab:J

    .line 37238
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l()V

    .line 158
    :cond_1
    return-void

    .line 37233
    .restart local p1    # "x1":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    :cond_2
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v2, :cond_0

    .line 37234
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .end local p1    # "x1":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mLastSyncTime:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    .line 158
    .line 33625
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33626
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 33627
    const-string/jumbo v1, "handleSelectFolder error for folderModel: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33628
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33629
    const-string/jumbo v1, "isDestroy: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33630
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33631
    const-string/jumbo v1, "MultiMailListActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33636
    :goto_0
    return-void

    .line 33634
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 33635
    const-string/jumbo v0, "MultiMailListActivity"

    const-string/jumbo v1, "handleSelectFolder error for mHandler is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33639
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lyc;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Lyc;

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 158
    .line 33376
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 33377
    :cond_0
    :goto_0
    return-void

    .line 33379
    :cond_1
    iget v2, p1, Lyc;->c:I

    .line 33380
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    .line 33381
    packed-switch v2, :pswitch_data_0

    .line 33415
    :goto_1
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    if-eq v0, v1, :cond_0

    .line 33416
    const/4 v1, 0x0

    .line 33417
    const/4 v0, 0x0

    .line 33418
    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    packed-switch v3, :pswitch_data_1

    .line 33432
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 33433
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33434
    if-eq v2, v7, :cond_2

    if-ne v2, v8, :cond_3

    .line 33436
    :cond_2
    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 33437
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$25;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$25;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33459
    :cond_3
    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    aput-object v0, v2, v8

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 33460
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 33383
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 33384
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_send_mail_fail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33385
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33386
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->C:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 33389
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 33390
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_sending_mail_success:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33391
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33392
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->C:Landroid/view/View;

    invoke-direct {p0, v1, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 33395
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 33396
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lyc;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33405
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_sending_mail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 33408
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 33409
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33410
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 33411
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_sending_mail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 33421
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    const-string/jumbo v1, "translationY"

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v8

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 33422
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_2

    .line 33425
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    const-string/jumbo v1, "translationY"

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v8

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 33426
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 33427
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33428
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 33381
    .line 33418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 794
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 831
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->X:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->X:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 158
    .line 40049
    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40050
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 40058
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCustomMailFolder()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40061
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40069
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 41202
    invoke-virtual {v2, p1, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;Z)V

    .line 41678
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41679
    if-nez p1, :cond_4

    move v0, v1

    .line 40071
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 40072
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 158
    :cond_2
    return-void

    .line 40067
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 41683
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 42503
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 41683
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 41684
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    const-class v4, Lxv;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 41683
    invoke-interface {v2, v0}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryAllFolderMsgCountStatus(Lxv;)V

    move v0, v1

    .line 41723
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    return-void
.end method

.method private b(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1466
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->X:I

    return v0
.end method

.method private c(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1470
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    if-ne p1, v0, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1474
    :cond_0
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e:I

    goto :goto_0
.end method

.method private c(Z)V
    .locals 10
    .param p1, "isStart"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1299
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 22246
    iget-object v7, v7, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1302
    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 1304
    invoke-direct {p0, v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    invoke-direct {p0, v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 1310
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 23246
    iget-object v1, v7, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1311
    .local v1, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    instance-of v7, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v7, :cond_3

    move-object v2, v1

    .line 1312
    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1313
    .local v2, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1314
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1317
    :cond_2
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1323
    .end local v2    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :goto_1
    if-eqz p1, :cond_4

    .line 1324
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    sget v8, Laxo$i;->dt_mail_checking_newmail:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1320
    :cond_3
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1328
    :cond_4
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 23503
    iget-object v0, v7, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1329
    .local v0, "accountName":Ljava/lang/String;
    instance-of v7, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v7, :cond_5

    move-object v5, v1

    .line 1330
    check-cast v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1331
    .local v5, "oldFolderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    const-string/jumbo v7, "EVENTBUTLER"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;

    invoke-direct {v8, p0, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    const-class v9, Lxv;

    .line 1332
    invoke-interface {v7, v8, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxv;

    .line 1350
    .local v3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v7

    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v8

    invoke-interface {v7, v8, v9, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderById(JLxv;)V

    goto :goto_0

    .line 1351
    .end local v3    # "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v5    # "oldFolderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_5
    instance-of v7, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v7, :cond_0

    move-object v6, v1

    .line 1352
    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 1353
    .local v6, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    const-string/jumbo v7, "EVENTBUTLER"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;

    invoke-direct {v8, p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    const-class v9, Lxv;

    .line 1354
    invoke-interface {v7, v8, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxv;

    .line 1371
    .local v4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-static {v0}, Lafw;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v7

    iget-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Lcom/alibaba/alimei/sdk/api/TagApi;->queryTagModel(Ljava/lang/String;Lxv;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->M:Lrz;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 834
    .line 835
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Ljava/lang/String;Z)V

    .line 836
    return-void
.end method

.method private g(Ljava/lang/String;)Lcma;
    .locals 3
    .param p1, "bindEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2234
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ac:Lsd;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$23;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$23;-><init>()V

    .line 362
    sput-object v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ac:Lsd;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setAttachmentImageLoader(Lsd;)V

    .line 364
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, -0x1

    .line 585
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 586
    .local v2, "intent":Landroid/content/Intent;
    const-wide/16 v4, -0x1

    .line 587
    .local v4, "selectFolderId":J
    if-eqz v2, :cond_0

    .line 589
    :try_start_0
    const-string/jumbo v6, "mail_folder_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 594
    :cond_0
    :goto_0
    cmp-long v6, v4, v10

    if-nez v6, :cond_2

    .line 622
    :cond_1
    :goto_1
    return-void

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "MultiMailListActivity"

    const-string/jumbo v7, "handleIntent() "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 602
    new-instance v3, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    .line 621
    .local v3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderById(JLxv;)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private j()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 700
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v7

    .line 9415
    const-string/jumbo v6, "pref_key_mail_last_login_account"

    invoke-static {v6, v3}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9418
    if-nez v6, :cond_a

    .line 9419
    invoke-virtual {v7}, Lacr;->g()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 9420
    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "lastLoginMail":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v6, "loadDataAndView, lastLoginMail:"

    invoke-static {v6, v3}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {v3}, Lafh;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 704
    invoke-static {v3}, Lacn;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 705
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6}, Lacr;->f()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 706
    invoke-static {v3}, Lacg;->a(Ljava/lang/String;)V

    .line 735
    :cond_1
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->N:Landroid/content/Context;

    .line 9943
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 9946
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-nez v6, :cond_2

    .line 9947
    new-instance v6, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 10760
    :cond_2
    sget v6, Laxo$f;->tv_icon_menu_mail_filter:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 10761
    sget v6, Laxo$f;->icon_no_notice:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 10762
    sget v6, Laxo$f;->menu_mail_filter:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->A:Landroid/widget/TextView;

    .line 10765
    sget v6, Laxo$f;->ll_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->H:Landroid/view/View;

    .line 11478
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v6, :cond_3

    .line 11482
    invoke-direct {p0, v8}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Z)V

    .line 11483
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    .line 11777
    iput-object v7, v6, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->p:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    .line 9951
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->A:Landroid/widget/TextView;

    sget v7, Laxo$i;->alm_cmail_mailbox_name_display_inbox:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 9953
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 9954
    if-eqz v6, :cond_5

    .line 9955
    const-string/jumbo v7, "mail_list_type"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 9956
    if-ne v7, v9, :cond_4

    .line 9957
    iput v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->u:I

    .line 9959
    :cond_4
    const-string/jumbo v7, "mail_list_goto_login"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 9960
    if-eqz v6, :cond_5

    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6}, Lacr;->g()Z

    move-result v6

    if-nez v6, :cond_5

    .line 9961
    invoke-static {p0}, Lacg;->b(Landroid/content/Context;)V

    .line 9965
    :cond_5
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ljava/lang/String;)V

    .line 9967
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iget v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->u:I

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    .line 9968
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->Y:Ladr;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ladr;)V

    .line 9969
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 9971
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    invoke-static {p0, v6}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9976
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v6

    invoke-virtual {v6}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 9977
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    if-eqz v7, :cond_6

    .line 9978
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 9980
    :cond_6
    sget v7, Laxo$f;->fragment_container:I

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 9981
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 9983
    sget v6, Laxo$f;->tv_mail_menu:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 9984
    sget v6, Laxo$f;->actionbar:I

    .line 12372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 9984
    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->g:Landroid/view/View;

    .line 9985
    sget v6, Laxo$f;->filter_parent:I

    .line 13372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 9985
    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->O:Landroid/view/ViewGroup;

    .line 9986
    sget v6, Laxo$f;->filter_status_layout:I

    .line 14372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 9986
    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    .line 9987
    sget v6, Laxo$f;->tv_filter_status:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    .line 9988
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->O:Landroid/view/ViewGroup;

    new-instance v7, Landroid/animation/LayoutTransition;

    invoke-direct {v7}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 9990
    sget v6, Laxo$f;->tv_mail_new_mail:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->q:Landroid/view/View;

    .line 9992
    sget v6, Laxo$f;->title_ll:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o:Landroid/view/View;

    .line 9994
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->g:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$8;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10003
    sget v6, Laxo$f;->menu_search:I

    .line 15372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10003
    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->z:Landroid/view/View;

    .line 10004
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->z:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$9;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10017
    sget v6, Laxo$f;->close:I

    .line 16372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10017
    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->E:Landroid/view/View;

    .line 10018
    sget v6, Laxo$f;->sending_mail_err_layout:I

    .line 17372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10018
    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->C:Landroid/view/View;

    .line 10019
    sget v6, Laxo$f;->sending_mail_progress:I

    .line 18372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10019
    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->D:Landroid/widget/ProgressBar;

    .line 10020
    sget v6, Laxo$f;->sending_mail_status:I

    .line 19372
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10020
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    .line 10022
    sget v6, Laxo$f;->new_mail_dot:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->U:Landroid/view/View;

    .line 10023
    sget v6, Laxo$f;->new_mail_count:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    .line 10025
    sget v6, Laxo$f;->tv_mail_menu_layout:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10027
    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10043
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->q:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$11;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10057
    sget v6, Laxo$f;->menu_back:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$13;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10064
    sget v6, Laxo$f;->red_dot_iv:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->y:Landroid/widget/ImageView;

    .line 10065
    sget v6, Laxo$f;->rl_menu_setting:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10077
    sget v6, Laxo$f;->editor_layout:I

    invoke-static {p0, v6}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    .line 10079
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    sget v7, Laxo$f;->select_count_des:I

    invoke-static {v6, v7}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->j:Landroid/widget/TextView;

    .line 10081
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    sget v7, Laxo$f;->select_all_icon:I

    invoke-static {v6, v7}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l:Landroid/widget/TextView;

    .line 10082
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    sget v7, Laxo$f;->select_all_text:I

    invoke-static {v6, v7}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->m:Landroid/widget/TextView;

    .line 10083
    sget v6, Laxo$f;->divider:I

    invoke-static {p0, v6}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n:Landroid/view/View;

    .line 10085
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    sget v7, Laxo$f;->cancel:I

    invoke-static {v6, v7}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->i:Landroid/view/View;

    .line 10086
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->i:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$15;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$15;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10095
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    sget v7, Laxo$f;->select_all:I

    invoke-static {v6, v7}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k:Landroid/view/View;

    .line 10096
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$16;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$16;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10109
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->C:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10140
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->E:Landroid/view/View;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$18;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$18;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19834
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 19835
    const-string/jumbo v7, "mail_folder_selected"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19836
    const-string/jumbo v7, "action_mail_account_logout"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19837
    const-string/jumbo v7, "mail_folder_new_mail"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19839
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ag:Ldq;

    .line 19840
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ag:Ldq;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 10163
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k()V

    .line 10165
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 737
    :cond_7
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Ljava/lang/String;Z)V

    .line 740
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v6

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v2

    .line 741
    .local v2, "isCommonAccount":Z
    if-eqz v2, :cond_8

    .line 742
    const-class v6, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 743
    .local v4, "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    if-eqz v4, :cond_8

    .line 744
    new-instance v6, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$3;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-interface {v4, v6}, Lcom/alibaba/alimei/idl/service/CMailIService;->startShadeEmailPop(Liyv;)V

    .line 757
    .end local v2    # "isCommonAccount":Z
    .end local v4    # "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    :cond_8
    :goto_3
    return-void

    .line 9421
    .end local v3    # "lastLoginMail":Ljava/lang/String;
    :cond_9
    invoke-virtual {v7}, Lacr;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9422
    invoke-virtual {v7}, Lacr;->c()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    move-object v3, v6

    .line 9428
    goto/16 :goto_0

    .line 709
    .restart local v3    # "lastLoginMail":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6}, Lacr;->g()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 711
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lacg;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 713
    :cond_c
    invoke-static {}, Lacn;->a()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "bindEmail":Ljava/lang/String;
    const-string/jumbo v6, "loadDataAndView, bindEmail:"

    invoke-static {v6, v0}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 716
    invoke-static {v3}, Lacg;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 717
    :cond_d
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6}, Lacr;->f()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 718
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6}, Lacr;->c()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "dingTalkEmail":Ljava/lang/String;
    invoke-static {v1}, Lacg;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 724
    .end local v0    # "bindEmail":Ljava/lang/String;
    .end local v1    # "dingTalkEmail":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lafg;->b()V

    .line 725
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 726
    .local v5, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v5, :cond_f

    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6}, Lacr;->e()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 727
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v6}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lacg;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 729
    :cond_f
    const-string/jumbo v6, "MultiMailListActivity"

    const-string/jumbo v7, "mail list finished before displayed"

    invoke-static {v6, v7}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->finish()V

    goto/16 :goto_3

    .line 9972
    .end local v5    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catch_0
    move-exception v6

    .line 9973
    const-string/jumbo v7, "MultiMailListActivity"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->L:Lrz;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->Q:I

    .line 789
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxo$i;->icon_threeline_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 790
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    return-void
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->E:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1242
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(I)V

    .line 1244
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1264
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->C:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1557
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v1, :cond_0

    .line 1558
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1559
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 24246
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1559
    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 25246
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1560
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1564
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 25825
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1564
    invoke-static {v1}, Lafv;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$27;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$27;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderById(JLxv;)V

    .line 1585
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ab:J

    return-wide v0
.end method

.method private n()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2351
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 32246
    iget-object v0, v3, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 2352
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    if-nez v0, :cond_1

    .line 2353
    const-string/jumbo v2, ""

    .line 2364
    :cond_0
    :goto_0
    return-object v2

    .line 2355
    :cond_1
    invoke-static {p0, v0}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)Ljava/lang/String;

    move-result-object v2

    .line 2356
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 2357
    const-string/jumbo v2, ""

    .line 2360
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 32985
    iget v4, v3, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    packed-switch v4, :pswitch_data_0

    .line 32997
    const-string/jumbo v1, ""

    .line 2361
    .local v1, "filterText":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 32987
    .end local v1    # "filterText":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$i;->dt_mail_filter_unread_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 32990
    :pswitch_1
    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$i;->dt_mail_filter_flag_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 32993
    :pswitch_2
    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$i;->dt_mail_filter_attachment_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 32985
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->aa:I

    return v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->R:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->D:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->P:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->T:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 1922
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    invoke-static {}, Lacn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f(Ljava/lang/String;)V

    .line 1929
    :goto_0
    return-void

    .line 1926
    :cond_0
    invoke-static {}, Lacg;->d()V

    .line 1927
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 6
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2394
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 33067
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v1}, Lacv;->g()Z

    move-result v0

    .line 2395
    .local v0, "isSelectAll":Z
    if-eqz v0, :cond_0

    .line 2396
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l:Landroid/widget/TextView;

    sget v2, Laxo$i;->icon_checkbox_fill:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2397
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->cmail_color_3296FA:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2398
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->m:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_common_cancel_select_all:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2405
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->j:Landroid/widget/TextView;

    sget v2, Laxo$i;->dd_cmail_select_mail_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2406
    return-void

    .line 2400
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l:Landroid/widget/TextView;

    sget v2, Laxo$i;->icon_checkbox:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2401
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->cmail_color_e3e3e4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2402
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->m:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_mail_select_all:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 7
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2317
    if-eqz p1, :cond_0

    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2347
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    iput v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->aa:I

    .line 2321
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ab:J

    .line 2323
    invoke-static {p0, p1}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)Ljava/lang/String;

    .line 2325
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 2326
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2327
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2328
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->C:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/view/View;Z)V

    .line 2333
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->H:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->A:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2338
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Z)V

    .line 2339
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->m()V

    .line 2341
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 2342
    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 2343
    .local v1, "tm":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isFollowTag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2344
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v2

    .line 32030
    if-eqz p0, :cond_0

    .line 32037
    const-string/jumbo v3, "mail_follow_ups_tip"

    invoke-static {v3, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32038
    const-string/jumbo v3, "mail_follow_ups_tip"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 32039
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 32041
    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 32043
    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCancelable(Z)V

    .line 32044
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 32045
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Laxo$g;->alm_cmail_follow_ups_tips_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 32046
    sget v5, Laxo$f;->done:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lacp$21;

    invoke-direct {v6, v2, v3}, Lacp$21;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32052
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;I)V
    .locals 2
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2266
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2290
    :cond_0
    :goto_0
    return-void

    .line 2270
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2287
    iput p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->aa:I

    .line 2288
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 2
    .param p1, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2294
    if-eqz p1, :cond_0

    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2313
    :cond_0
    :goto_0
    return-void

    .line 2311
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Z)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 2085
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laha;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "newMailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laha;>;"
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 2410
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->U:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 2446
    :cond_0
    :goto_0
    return-void

    .line 2414
    :cond_1
    if-nez p1, :cond_2

    .line 2415
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->U:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2416
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2420
    :cond_2
    const/4 v1, 0x0

    .line 2421
    .local v1, "newMailCount":I
    const/4 v2, 0x0

    .line 2422
    .local v2, "newMailDotCount":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2423
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Laha;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laha;

    .line 2425
    .local v3, "newMailNumModel":Laha;
    int-to-long v4, v1

    invoke-virtual {v3}, Laha;->a()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 2426
    int-to-long v4, v2

    invoke-virtual {v3}, Laha;->b()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 2427
    goto :goto_1

    .line 2429
    .end local v3    # "newMailNumModel":Laha;
    :cond_3
    if-lez v1, :cond_5

    .line 2430
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2431
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->U:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2432
    const/16 v4, 0x63

    if-le v1, v4, :cond_4

    .line 2433
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    const-string/jumbo v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2435
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2438
    :cond_5
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2440
    if-lez v2, :cond_6

    .line 2441
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->U:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2443
    :cond_6
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->U:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isEditor"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2378
    if-eqz p1, :cond_1

    .line 2379
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2383
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2384
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2390
    :goto_0
    return-void

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2387
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 4
    .param p1, "isTop"    # Z
    .param p2, "firstVisibleItem"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2459
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2460
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->z:Landroid/view/View;

    if-lez p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2461
    return-void

    :cond_0
    move v0, v2

    .line 2459
    goto :goto_0

    :cond_1
    move v2, v1

    .line 2460
    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 2465
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->e()V

    .line 2466
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 2369
    invoke-static {p1}, Lacg;->a(Ljava/lang/String;)V

    .line 2371
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {p1}, Lacr;->a(Ljava/lang/String;)V

    .line 2373
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->w:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .end local p1    # "accountName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    return-void

    .line 2373
    .restart local p1    # "accountName":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2455
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 1933
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$32;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$32;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1944
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1909
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v0

    .line 1911
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->g(Ljava/lang/String;)Lcma;

    move-result-object v1

    .line 1909
    invoke-virtual {v0, p0, p1, v1}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcma;)Z

    .line 1912
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1917
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)Z

    .line 1918
    return-void
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 2470
    const/4 v0, 0x1

    return v0
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 2079
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->f()V

    .line 2080
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2089
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 2092
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->g(Ljava/lang/String;)Lcma;

    move-result-object v1

    .line 29162
    new-instance v2, Lacp$1;

    invoke-direct {v2, v0, p0, v1}, Lacp$1;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    .line 29208
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    .line 29209
    const-string/jumbo v1, "checkDingtalkOrg"

    invoke-interface {v0, v1, v2}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2093
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, "handle":Z
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v2, :cond_0

    .line 1518
    const-string/jumbo v2, "MultiMailListActivity"

    const-string/jumbo v3, "onBackPressed for CMailMainFragment"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->p()Z

    move-result v0

    .line 1521
    :cond_0
    if-eqz v0, :cond_1

    .line 1531
    :goto_0
    return-void

    .line 1524
    :cond_1
    const-string/jumbo v2, "MultiMailListActivity"

    const-string/jumbo v3, "onBackPressed"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v1

    .line 1528
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "MultiMailListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onBackPressed fail, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 459
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3311
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v5, v8, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v8, "pref_key_mail_has_set_shortcut"

    invoke-static {v5, v8}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3312
    invoke-static {}, Laey;->b()V

    .line 3313
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v8, "pref_key_mail_has_set_shortcut"

    invoke-static {v5, v8, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4137
    :cond_0
    const-string/jumbo v5, "CMailSettingsUtil"

    invoke-static {v5}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v8, Lajj$2;

    invoke-direct {v8, p0}, Lajj$2;-><init>(Landroid/app/Activity;)V

    invoke-interface {v5, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 462
    const-string/jumbo v5, "MultiMailListActivity"

    .line 4995
    const-string/jumbo v8, "mail_page_maillist_click"

    invoke-static {v5, v8, v9}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4996
    const-string/jumbo v8, "mail_page_multi_maillist_click"

    invoke-static {v5, v8, v9}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 463
    sget-object v5, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v8, "CMail"

    const-string/jumbo v9, "mail.maillist.appear"

    invoke-static {v5, v8, v9}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->p()V

    .line 466
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v8, v9}, Lacg;->a(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->I:Ljava/lang/String;

    .line 467
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    .line 468
    .local v2, "imInterface":Lcom/alibaba/android/dingtalkim/base/IMInterface;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->I:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n()V

    .line 470
    invoke-static {}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h()V

    .line 5285
    new-instance v5, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$12;

    invoke-direct {v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$12;-><init>()V

    invoke-static {v5}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnListAttachmentItemListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V

    .line 5536
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v5

    .line 5537
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5538
    const-string/jumbo v5, "MultiMailListActivity"

    const-string/jumbo v8, "preload mail fail for accountName is empty"

    invoke-static {v5, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    sget v5, Laxo$g;->activity_multi_mail_list:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->setContentView(I)V

    .line 475
    sget v5, Laxo$f;->layout_bottom:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    .line 476
    sget v5, Laxo$f;->account_name:I

    invoke-static {p0, v5}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->w:Landroid/widget/TextView;

    .line 478
    if-eqz p1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    const-class v8, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 480
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 479
    invoke-virtual {v5, p1, v8}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 481
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    const-class v8, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .line 482
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 481
    invoke-virtual {v5, p1, v8}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .line 487
    :cond_1
    const-class v5, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->d:Lxm;

    .line 6094
    invoke-static {v5, v8}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 488
    const-class v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ai:Lxm;

    .line 7094
    invoke-static {v5, v8}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 489
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->j()V

    .line 7618
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v5, :cond_2

    .line 7619
    sget v5, Laxo$f;->folder_guide_container:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->S:Landroid/view/View;

    .line 7620
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v8, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;

    invoke-direct {v8, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v8, v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7642
    :cond_2
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v5

    const-string/jumbo v8, "pref_key_freshmen_login"

    invoke-virtual {v5, v8}, Lacp;->a(Ljava/lang/String;)Z

    move-result v5

    .line 7644
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v8

    .line 7645
    invoke-static {v8}, Lacn;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v5, :cond_7

    .line 7646
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v5

    const-string/jumbo v8, "pref_key_freshmen_login"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lacp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7648
    invoke-direct {p0, p0, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/content/Context;Z)V

    .line 7654
    :goto_1
    invoke-static {}, Lack;->a()Lack;

    move-result-object v5

    .line 8132
    iget v5, v5, Lack;->a:I

    const/16 v8, 0xa

    if-ne v5, v8, :cond_8

    move v5, v6

    .line 7654
    :goto_2
    if-eqz v5, :cond_3

    .line 7655
    invoke-static {}, Lack;->a()Lack;

    move-result-object v5

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lack;->a(I)V

    .line 7657
    const-class v5, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 7658
    if-eqz v5, :cond_3

    .line 7659
    new-instance v8, Laag;

    invoke-direct {v8}, Laag;-><init>()V

    .line 7660
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Laag;->b:Ljava/lang/Boolean;

    .line 7661
    const-string/jumbo v9, "cmail_staff_guide"

    iput-object v9, v8, Laag;->a:Ljava/lang/String;

    .line 7662
    new-instance v9, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$29;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$29;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    invoke-interface {v5, v8, v9}, Lcom/alibaba/alimei/idl/service/CMailIService;->reportGuidenceStatus(Laag;Liyv;)V

    .line 491
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->i()V

    .line 493
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v5

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ad:Lacl$a;

    invoke-virtual {v5, v8}, Lacl;->a(Lacl$a;)V

    .line 494
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v5

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b:Lyb;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "FolderPushStateChange"

    aput-object v10, v9, v7

    const-string/jumbo v10, "FolderLastSyncTimeChanged"

    aput-object v10, v9, v6

    invoke-interface {v5, v8, v9}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v5

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c:Lyb;

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v9, "basic_SendMail"

    aput-object v9, v6, v7

    invoke-interface {v5, v8, v6}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 8675
    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$2;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    .line 8695
    const-class v6, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->I:Ljava/lang/String;

    invoke-interface {v6, v5, v8}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 499
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    .line 500
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 502
    .local v4, "window":Landroid/view/Window;
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 506
    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 507
    invoke-virtual {v4, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    sget v6, Laxo$c;->ui_common_content_bg_color:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 513
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x2500

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 520
    sget v5, Laxo$f;->mail_content:I

    invoke-static {p0, v5}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 521
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-static {p0}, Lss;->a(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v6, v8

    .line 522
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 521
    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 524
    sget v5, Laxo$f;->home_menu:I

    invoke-static {p0, v5}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 525
    .local v1, "folderMenuView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-static {p0}, Lss;->a(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v6, v8

    .line 526
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 525
    invoke-virtual {v1, v5, v6, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 528
    sget v5, Laxo$f;->ui_common_base_ui_activity_content:I

    invoke-static {p0, v5}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 529
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 530
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 533
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "folderMenuView":Landroid/view/View;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "window":Landroid/view/Window;
    :cond_4
    return-void

    .line 5542
    :cond_5
    invoke-static {v5}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v8

    .line 5543
    if-eqz v8, :cond_6

    .line 5544
    new-instance v9, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;

    invoke-direct {v9, p0, v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;)V

    .line 5569
    invoke-interface {v8, v7, v9}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByType(ILxv;)V

    goto/16 :goto_0

    .line 5571
    :cond_6
    const-string/jumbo v5, "MultiMailListActivity"

    const-string/jumbo v8, "preload mail fail for folderApi is null"

    invoke-static {v5, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7650
    :cond_7
    invoke-direct {p0, p0, v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 8132
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1535
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1738
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lacr;->a(Ljava/lang/String;)V

    .line 1740
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ad:Lacl$a;

    if-eqz v1, :cond_0

    .line 1741
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ad:Lacl$a;

    invoke-virtual {v1, v2}, Lacl;->b(Lacl$a;)V

    .line 1742
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ad:Lacl$a;

    .line 1745
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b:Lyb;

    if-eqz v1, :cond_1

    .line 1746
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 1747
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b:Lyb;

    .line 1750
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c:Lyb;

    if-eqz v1, :cond_2

    .line 1751
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 1752
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c:Lyb;

    .line 1762
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->d:Lxm;

    if-eqz v1, :cond_3

    .line 1763
    const-class v1, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->d:Lxm;

    .line 26102
    invoke-static {v1, v2}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 1764
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->d:Lxm;

    .line 1767
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ai:Lxm;

    if-eqz v1, :cond_4

    .line 1768
    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ai:Lxm;

    .line 27102
    invoke-static {v1, v2}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 1769
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ai:Lxm;

    .line 1772
    :cond_4
    invoke-static {}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->o()V

    .line 27341
    invoke-static {v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnListAttachmentItemListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V

    .line 1775
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .line 1776
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ag:Ldq;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ah:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1777
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ag:Ldq;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1778
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ag:Ldq;

    .line 1779
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->ah:Landroid/content/BroadcastReceiver;

    .line 1782
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->W:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_6

    .line 1783
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->W:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1786
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    .line 1787
    .local v0, "imInterface":Lcom/alibaba/android/dingtalkim/base/IMInterface;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Ljava/lang/String;)V

    .line 1789
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->Y:Ladr;

    .line 1794
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 1795
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v1, :cond_7

    .line 1796
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ladr;)V

    .line 1797
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l()V

    .line 1804
    :cond_7
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 1805
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 27818
    :cond_8
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 27819
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .line 27820
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 27821
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->q:Landroid/view/View;

    .line 27822
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->x:Landroid/view/View;

    .line 27823
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->t:Landroid/os/Handler;

    .line 27824
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v:Landroid/view/View;

    .line 27825
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->J:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 27826
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->K:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 27827
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->L:Lrz;

    .line 27828
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->M:Lrz;

    .line 1809
    invoke-static {}, Lacg;->f()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1810
    const-string/jumbo v1, "MailListActivity"

    const-string/jumbo v2, "removeAllBgTask"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28509
    invoke-static {}, Lpp;->b()V

    .line 1814
    :cond_9
    invoke-static {}, Lafh;->f()V

    .line 1815
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 577
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 579
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->setIntent(Landroid/content/Intent;)V

    .line 580
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->j()V

    .line 581
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->i()V

    .line 582
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1503
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1510
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1505
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->onBackPressed()V

    .line 1506
    const/4 v0, 0x0

    goto :goto_0

    .line 1503
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->af:Z

    .line 1732
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->k()V

    .line 1733
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 1734
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1542
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->af:Z

    .line 1543
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->l()V

    .line 1544
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 23589
    const-string/jumbo v0, "pref_key_mail_new_signature"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 23590
    const-string/jumbo v0, "pref_key_mail_domain_manager"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 23592
    invoke-static {}, Lacq;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23593
    const-string/jumbo v0, "pref_key_mail_subscribe_square_first_time"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 23597
    :goto_0
    invoke-static {}, Lacn;->g()Z

    move-result v5

    if-nez v5, :cond_5

    .line 23600
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    .line 23604
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->y:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 23605
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_4

    .line 23606
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->m()V

    .line 1554
    return-void

    .line 23595
    :cond_3
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe_is_setting_frist_time"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 23608
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->y:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 438
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 442
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .line 450
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->f:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2483
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStart()V

    .line 2484
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2478
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 2479
    return-void
.end method
