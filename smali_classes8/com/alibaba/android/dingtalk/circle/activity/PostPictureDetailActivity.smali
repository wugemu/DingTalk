.class public Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostPictureDetailActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ScrollView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private d:Lbnv;

.field private e:Lboy;

.field private f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 164
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->b:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "isCommentChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 130
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->d:Lbnv;

    if-nez v2, :cond_1

    .line 131
    sget v2, Lbpu$d;->circle_detail_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 132
    .local v0, "contentView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v2, p0, v3, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$5;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lbnv;

    move-result-object v1

    .line 147
    .local v1, "viewHolder":Lbnv;
    if-nez v1, :cond_0

    .line 148
    const-string/jumbo v2, "viewHolder = null"

    .line 4076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 162
    .end local v0    # "contentView":Landroid/view/ViewGroup;
    .end local v1    # "viewHolder":Lbnv;
    :goto_0
    return-void

    .line 151
    .restart local v0    # "contentView":Landroid/view/ViewGroup;
    .restart local v1    # "viewHolder":Lbnv;
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    iget-object v2, v1, Lbnv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4203
    const/4 v2, 0x1

    iput-boolean v2, v1, Lbnv;->d:Z

    .line 154
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->d:Lbnv;

    .line 157
    .end local v0    # "contentView":Landroid/view/ViewGroup;
    .end local v1    # "viewHolder":Lbnv;
    :cond_1
    if-eqz p2, :cond_2

    .line 158
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v2, v3}, Lbnv;->b(J)V

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->d:Lbnv;

    invoke-virtual {v2, p1}, Lbnv;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)Lbnv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->d:Lbnv;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)Lboy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    invoke-virtual {v0}, Lboy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1070
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1074
    const-string/jumbo v2, "extra_post"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    if-nez v0, :cond_1

    .line 58
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "PostPictureDetailActivity getIntentData fail"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->finish()V

    .line 67
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1075
    goto :goto_0

    .line 62
    :cond_1
    sget v0, Lbpu$e;->activity_post_picture_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->setContentView(I)V

    .line 1079
    sget v0, Lbpu$d;->ui_common_base_ui_activity_toolbar_divide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    sget v0, Lbpu$d;->root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->a:Landroid/view/View;

    .line 1081
    sget v0, Lbpu$d;->circle_detail_scroll:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->b:Landroid/widget/ScrollView;

    .line 1082
    sget v0, Lbpu$d;->input_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 1086
    new-instance v0, Lboy;

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->a:Landroid/view/View;

    invoke-direct {v0, p0, v2, v3, v4}, Lboy;-><init>(Landroid/app/Activity;Lboy$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V

    .line 1176
    iput-object v2, v0, Lboy;->c:Lcov;

    .line 2113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2125
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    invoke-static {p0, v2, v3}, Lbqi;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2126
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)V

    .line 2114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->d:Lbnv;

    if-eqz v0, :cond_2

    .line 2115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->d:Lbnv;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V

    .line 2237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    .line 3184
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "circle_on_comment_sent_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3185
    const-string/jumbo v1, "circle_on_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3186
    const-string/jumbo v1, "circle_on_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3187
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->e:Lboy;

    invoke-virtual {v0}, Lboy;->a()V

    .line 204
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 205
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 206
    return-void
.end method
