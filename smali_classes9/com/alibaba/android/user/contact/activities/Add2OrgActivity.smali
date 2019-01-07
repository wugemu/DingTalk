.class public Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "Add2OrgActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# instance fields
.field private A:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private B:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private C:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private D:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private E:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private F:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private G:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Z

.field private J:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

.field private P:Lcom/alibaba/android/user/model/SWHrmObject;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Landroid/support/v7/app/AlertDialog;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/LinearLayout;

.field private Z:Landroid/widget/TextView;

.field private a:Landroid/view/View;

.field private aa:Ljava/lang/String;

.field private ab:Landroid/content/BroadcastReceiver;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private v:J

.field private w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field private x:Lcom/alibaba/android/user/model/OrgInviteObject;

.field private y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

.field private z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 125
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    .line 126
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    .line 127
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p:Z

    .line 132
    iput-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s:Ljava/lang/String;

    .line 140
    iput-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    .line 156
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->I:Z

    .line 166
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->K:Z

    .line 779
    new-instance v0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->ab:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->S:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Lcom/alibaba/android/user/model/SWHrmObject;)Lcom/alibaba/android/user/model/SWHrmObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/SWHrmObject;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->P:Lcom/alibaba/android/user/model/SWHrmObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->aa:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "checkedStr"    # Ljava/lang/String;

    .prologue
    .line 868
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, " "

    .end local p0    # "checkedStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 10
    .param p1, "group"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "choiceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;>;"
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 425
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 427
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 428
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 429
    .local v0, "choice":Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

    .line 10421
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->item_add_member_to_org:I

    invoke-virtual {v5, v6, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 429
    invoke-direct {v3, v5}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;-><init>(Landroid/view/View;)V

    .line 431
    .local v3, "viewHolder":Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 11111
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->a:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_0
    sget-object v5, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->TEAM_ID:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Q:Ljava/lang/String;

    .line 12053
    iput-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->h:Ljava/lang/String;

    .line 12057
    :cond_1
    iput-object v0, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->g:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 12064
    if-eqz v0, :cond_2

    .line 12065
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 12067
    iget-object v6, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->g:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->getIconFontColorResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 12068
    iget-object v7, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 12069
    iget-object v6, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->g:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->getIconFontResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 12070
    iget-object v7, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 12071
    iget-object v6, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->g:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->getTitleStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12072
    iget-object v6, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12073
    sget-object v5, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Face2FaceQrScan:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    if-ne v0, v5, :cond_4

    .line 12074
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v5, v9}, Lfxp;->a(Landroid/view/View;I)V

    .line 12075
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->f:Landroid/widget/TextView;

    invoke-static {v5, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 12076
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v6, Lezg$l;->icon_QRcode:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 12077
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12078
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v6, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lezg$e;->ui_common_level1_base_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 12116
    :cond_2
    :goto_1
    iget-object v2, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->itemView:Landroid/view/View;

    .line 443
    .local v2, "itemView":Landroid/view/View;
    sget-object v5, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Wechat:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 444
    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->J:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

    .line 446
    :cond_3
    new-instance v5, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42600000    # 56.0f

    .line 566
    invoke-static {p0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 565
    invoke-virtual {p1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    add-int/lit8 v1, v1, -0x1

    .line 569
    goto/16 :goto_0

    .line 12080
    .end local v2    # "itemView":Landroid/view/View;
    :cond_4
    sget-object v5, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->TEAM_ID:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    if-ne v0, v5, :cond_6

    .line 12081
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v5, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 12082
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->f:Landroid/widget/TextView;

    invoke-static {v5, v9}, Lfxp;->a(Landroid/view/View;I)V

    .line 12083
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 12084
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->f:Landroid/widget/TextView;

    invoke-static {v5, v8}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 12086
    :cond_5
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->f:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12089
    :cond_6
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v5, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 12090
    iget-object v5, v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->f:Landroid/widget/TextView;

    invoke-static {v5, v8}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 571
    .end local v0    # "choice":Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;
    .end local v1    # "i":I
    .end local v3    # "viewHolder":Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 87
    .line 16796
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 16797
    :cond_0
    :goto_0
    return-void

    .line 16799
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16800
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 16801
    if-eqz v0, :cond_2

    .line 16802
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16805
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16808
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16809
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 16810
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 16811
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 16812
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16813
    new-instance v1, Lcfi;

    invoke-direct {v1}, Lcfi;-><init>()V

    .line 16814
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcfi;->a:Ljava/lang/Long;

    .line 16815
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->showLoadingDialog()V

    .line 16816
    new-instance v3, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    .line 16846
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 16847
    new-instance v3, Lcom/alibaba/android/user/model/OrgAttachObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/model/OrgAttachObject;-><init>()V

    .line 16848
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    .line 16849
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3, v0}, Lezt;->a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "mAllPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 372
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 378
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v2

    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->I:Z

    .line 376
    const-string/jumbo v2, "Add2OrgActivity"

    const-string/jumbo v3, "getAllInstalledApp: get packageInfo failed: has no permission!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->A:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method private c()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/16 v12, 0x8

    const/4 v2, 0x0

    .line 401
    .line 8902
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "contact"

    const-string/jumbo v5, "edu_industry_invite_patriarch"

    .line 8903
    invoke-virtual {v0, v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 8905
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d()Z

    move-result v7

    .line 8929
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 8930
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    move-object v5, v3

    .line 8910
    :goto_0
    if-eqz v5, :cond_14

    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v0, :cond_14

    .line 8911
    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    .line 8912
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 8913
    :goto_1
    iget-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->eduIndustry:Z

    .line 8915
    :goto_2
    const-string/jumbo v5, "user"

    const-string/jumbo v8, "invite"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "canUseLinkInvite:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "isEdu:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "hasCorpId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "isSwitchOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8917
    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 8918
    const-string/jumbo v0, "https://h5.dingtalk.com/edu/invite.html?corpId=%s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->aa:Ljava/lang/String;

    .line 8919
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8920
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8921
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f:Ljava/util/List;

    .line 8923
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->PatriarchInvite:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8924
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Y:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 9577
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9579
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_invite_member_to_organization:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9580
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    .line 9583
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->DingTalkInner:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9587
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    if-eqz v0, :cond_9

    .line 9588
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Wechat:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9589
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->QQ:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9594
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->SMS:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9597
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    if-nez v0, :cond_2

    .line 9598
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->System:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9601
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9602
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 9604
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9615
    :goto_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p:Z

    if-nez v0, :cond_b

    .line 9616
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9617
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9647
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    if-nez v0, :cond_e

    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g()Z

    move-result v0

    if-nez v0, :cond_e

    .line 9648
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9649
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10417
    :goto_6
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g()Z

    move-result v0

    if-nez v0, :cond_12

    .line 10409
    :goto_7
    if-eqz v1, :cond_13

    .line 10410
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    :goto_8
    return-void

    .line 8934
    :cond_5
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8935
    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_6

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    .line 8936
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object v5, v0

    goto/16 :goto_0

    :cond_7
    move-object v5, v3

    .line 8939
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 8912
    goto/16 :goto_1

    .line 9591
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->WhatsApp:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9592
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Facebook:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 9608
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9609
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 9619
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->h:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_add_member_to_organization:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9620
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j:Ljava/util/List;

    .line 9627
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    if-eqz v0, :cond_c

    .line 9628
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->PhoneContact:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9629
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Manually:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9635
    :cond_c
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p:Z

    if-eqz v0, :cond_d

    .line 9636
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->EntryRegistration:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9639
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9640
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 9641
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 9651
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->k:Landroid/widget/TextView;

    sget v3, Lezg$l;->org_invite_share_more:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9652
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->m:Ljava/util/List;

    .line 9658
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9659
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->m:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Face2FaceQrScan:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9662
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9663
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->m:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->TEAM_ID:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9668
    :cond_10
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    if-eqz v0, :cond_11

    .line 9669
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->m:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Batch:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9672
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9673
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->m:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 9674
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    move v1, v2

    .line 10417
    goto/16 :goto_7

    .line 10412
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_14
    move v0, v2

    move-object v4, v3

    move v3, v2

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->T:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->H:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->B:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->T:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->K:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->C:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->D:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->E:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->G:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->F:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    .line 15853
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 87
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    return-wide v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->P:Lcom/alibaba/android/user/model/SWHrmObject;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/OrgInviteObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    .line 16776
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Add2OrgActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    return v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    .line 16947
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->dismissLoadingDialog()V

    .line 16948
    const-string/jumbo v0, "Add2OrgActivity"

    new-array v1, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initArgs: mOrgId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], mDeptId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], mCanManage=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], canUseLinkInvite=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 16950
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], canUseOrgCodeInvite=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], mIsInChina=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], mOpenHrmSupport=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 16949
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 16948
    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16953
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->c()V

    .line 17756
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17757
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 17758
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 17759
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 17760
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 17761
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    const-string/jumbo v1, "https://gw.alicdn.com/tfs/TB1h7EVr4GYBuNjy0FnXXX5lpXa-222-320.png"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 17762
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->O:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    const-string/jumbo v1, "invite_share_click"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 17763
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->J:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

    if-eqz v0, :cond_0

    .line 17764
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->J:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->a(Z)V

    .line 17765
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->K:Z

    :cond_0
    :goto_0
    return-void

    .line 17768
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->J:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

    if-eqz v0, :cond_0

    .line 17769
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->J:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->a(Z)V

    .line 17770
    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->K:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 4
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 689
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 693
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->T:Z

    .line 694
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->U:Z

    .line 695
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->V:Z

    .line 697
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    .line 12873
    new-instance v0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v2, v3, v0}, Lfvz;->b(JLcma;)V

    .line 13718
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-nez v0, :cond_1

    .line 14036
    sget v0, Lezg$l;->wrong_arguments:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 13720
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->finish()V

    .line 13721
    :cond_0
    :goto_0
    return-void

    .line 13723
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->redPacketTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->L:Ljava/lang/String;

    .line 13724
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->redPacketContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->M:Ljava/lang/String;

    .line 13725
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->redPacketInviteUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->N:Ljava/lang/String;

    .line 13728
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 13729
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13730
    const-string/jumbo v0, "Add2OrgActivity"

    const-string/jumbo v1, "initShare: url should not be null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13731
    const-string/jumbo v0, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    .line 13733
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13734
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->x:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13735
    new-instance v3, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 13736
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-virtual {v3, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 13737
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 13738
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 13739
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    const-string/jumbo v1, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 13740
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->y:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    const-string/jumbo v1, "invite_share_click"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 13743
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 13744
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 13746
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->A:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 13747
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->B:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 13748
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->C:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 13749
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->D:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 13750
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFacebookFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->E:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 13751
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->F:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 13752
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->z:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->G:Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->dismissLoadingDialog()V

    .line 706
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 712
    :goto_0
    const-string/jumbo v0, "Add2OrgActivity"

    const-string/jumbo v1, "funcDidLoadInviteInfoFailed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15036
    sget v0, Lezg$l;->wrong_arguments:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 714
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->finish()V

    .line 715
    return-void

    .line 709
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    .line 213
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 6262
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->showLoadingDialog()V

    .line 6264
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    if-eqz v0, :cond_1

    .line 6267
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 6268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    .line 7104
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b(JJ)V

    .line 6270
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b(JJ)V

    goto :goto_0

    .line 8036
    :cond_1
    sget v0, Lezg$l;->wrong_arguments:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 6277
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    sget v1, Lezg$j;->activity_add_member_to_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->setContentView(I)V

    .line 193
    sget v1, Lezg$l;->dt_add_member_to_organization:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->setTitle(I)V

    .line 196
    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 1239
    sget v1, Lezg$h;->layout_group_industry_invite:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->X:Landroid/view/View;

    .line 1240
    sget v1, Lezg$h;->layout_group_invite:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a:Landroid/view/View;

    .line 1241
    sget v1, Lezg$h;->layout_group_add:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b:Landroid/view/View;

    .line 1242
    sget v1, Lezg$h;->layout_group_more:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->c:Landroid/view/View;

    .line 1244
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->X:Landroid/view/View;

    sget v5, Lezg$h;->tv_tip:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Z:Landroid/widget/TextView;

    .line 1245
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->X:Landroid/view/View;

    sget v5, Lezg$h;->ll_group:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Y:Landroid/widget/LinearLayout;

    .line 1246
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a:Landroid/view/View;

    sget v5, Lezg$h;->tv_tip:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d:Landroid/widget/TextView;

    .line 1247
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a:Landroid/view/View;

    sget v5, Lezg$h;->ll_group:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e:Landroid/widget/LinearLayout;

    .line 1248
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b:Landroid/view/View;

    sget v5, Lezg$h;->tv_tip:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->h:Landroid/widget/TextView;

    .line 1249
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b:Landroid/view/View;

    sget v5, Lezg$h;->ll_group:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->i:Landroid/widget/LinearLayout;

    .line 1250
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->c:Landroid/view/View;

    sget v5, Lezg$h;->tv_tip:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->k:Landroid/widget/TextView;

    .line 1251
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->c:Landroid/view/View;

    sget v5, Lezg$h;->ll_group:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l:Landroid/widget/LinearLayout;

    .line 1285
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1286
    if-eqz v5, :cond_c

    .line 1288
    const-string/jumbo v1, "org_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    .line 1290
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 1291
    if-nez v6, :cond_1

    .line 1292
    const-string/jumbo v1, "Add2OrgActivity"

    const-string/jumbo v2, "initArgs: Has no userInfo!"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2036
    sget v1, Lezg$l;->wrong_arguments:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1295
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->finish()V

    .line 4255
    .end local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_0
    :goto_0
    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 4256
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$l;->icon_blacklistI_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 4257
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$l;->dt_team_close_invite_member_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 4258
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$l;->dt_team_close_invite_member_desc:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(Ljava/lang/String;)V

    .line 5230
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b()Ljava/util/List;

    move-result-object v1

    .line 5232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->H:Ljava/util/List;

    .line 5233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 5234
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->H:Ljava/util/List;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1300
    .restart local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_1
    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    invoke-static {v6, v8, v9}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1301
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v1, :cond_2

    .line 1302
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s:Ljava/lang/String;

    .line 1306
    :cond_2
    const-string/jumbo v1, "corp_id"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1307
    const-string/jumbo v1, "corp_id"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    .line 1309
    .end local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .local v0, "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :goto_2
    iput-object v1, v0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->Q:Ljava/lang/String;

    .line 1311
    const-string/jumbo v1, "org_name"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1312
    const-string/jumbo v1, "org_name"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->R:Ljava/lang/String;

    .line 1318
    :goto_3
    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    invoke-static {v6, v8, v9}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1319
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v1, :cond_8

    .line 1320
    const-string/jumbo v1, "Add2OrgActivity"

    const-string/jumbo v2, "initArgs: Has no orgInfo!"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3036
    sget v1, Lezg$l;->wrong_arguments:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1322
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->finish()V

    goto/16 :goto_0

    .line 1309
    .end local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_3
    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    .line 2963
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    .line 2964
    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 2965
    if-eqz v1, :cond_6

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 2966
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2967
    if-eqz v1, :cond_4

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v10, v10, v8

    if-nez v10, :cond_4

    .line 2970
    iget-object v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v10, :cond_4

    .line 2971
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    .line 2972
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2975
    invoke-static {v1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 2976
    if-nez v1, :cond_5

    move-object v1, v2

    move-object v0, p0

    .end local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    goto :goto_2

    .end local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_5
    const-string/jumbo v2, "applyCode"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    .end local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    goto/16 :goto_2

    .end local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_6
    move-object v1, v2

    move-object v0, p0

    .line 2980
    .end local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    goto/16 :goto_2

    .line 1314
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->R:Ljava/lang/String;

    goto :goto_3

    .line 1326
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1327
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s:Ljava/lang/String;

    .line 1331
    :cond_9
    const-string/jumbo v1, "dept_object"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1332
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_a

    .line 1333
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v6, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v:J

    .line 1336
    :cond_a
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r:J

    invoke-static {v6, v7}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o:Z

    .line 1348
    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n:Z

    .line 1354
    const-string/jumbo v1, "org_request_from_source_type"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->t:Ljava/lang/String;

    .line 1355
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->t:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1356
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->t:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    move v1, v4

    .line 1348
    goto :goto_4

    .line 1359
    .end local v0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    .restart local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_c
    const-string/jumbo v1, "Add2OrgActivity"

    const-string/jumbo v2, "initArgs: Has no intent!"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4036
    sget v1, Lezg$l;->wrong_arguments:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1361
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->finish()V

    goto/16 :goto_0

    .line 6222
    .end local p0    # "this":Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
    :cond_d
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 6223
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6224
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 209
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->ab:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 384
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 385
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->ab:Landroid/content/BroadcastReceiver;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 8039
    iput-object v2, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    .line 389
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->S:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->S:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->S:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 394
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 395
    return-void
.end method
