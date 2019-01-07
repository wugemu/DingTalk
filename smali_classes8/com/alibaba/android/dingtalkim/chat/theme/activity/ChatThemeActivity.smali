.class public Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChatThemeActivity.java"

# interfaces
.implements Ldfu$a;
.implements Ldgf$b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

.field private c:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Ldgf$a;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->e:J

    return-wide v0
.end method

.method private a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 3
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/chat_theme_set.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    const/4 v6, 0x0

    .line 47
    .line 7113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7115
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v1}, Ldgf$a;->c()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7117
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v1}, Ldgf$a;->d()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7119
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v1}, Ldgf$a;->e()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    .line 7120
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->g:Z

    if-nez v2, :cond_0

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 7123
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7125
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;-><init>(Landroid/content/Context;)V

    .line 7126
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a(Ljava/util/List;J)V

    .line 8041
    iput-object p0, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a:Ldfu$a;

    .line 7129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a:Landroid/view/View;

    if-nez v0, :cond_3

    .line 7130
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lctk$g;->layout_chat_theme_header:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a:Landroid/view/View;

    .line 7132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a:Landroid/view/View;

    .line 9095
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 9096
    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;

    if-nez v4, :cond_2

    .line 9097
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9100
    :cond_2
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;

    invoke-direct {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;-><init>(B)V

    .line 9101
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;Landroid/content/Context;)V

    .line 9102
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9103
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->a:Landroid/view/View;

    .line 9104
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->b:Landroid/view/ViewGroup;

    .line 9105
    const/4 v3, 0x0

    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->c:Ljava/lang/Object;

    .line 9106
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->d:Z

    .line 9107
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9110
    if-eqz v0, :cond_3

    .line 9111
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;

    .line 9433
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 7134
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a:Landroid/view/View;

    sget v2, Lctk$f;->grid_view_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    .line 7135
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 47
    .line 10140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v0}, Ldgf$a;->b()Ldge;

    move-result-object v0

    .line 10141
    if-eqz v0, :cond_0

    .line 10142
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    iget-object v0, v0, Ldge;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a(Ljava/util/List;J)V

    .line 10145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method private h()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v1}, Ldgf$a;->b()Ldge;

    move-result-object v0

    .line 150
    .local v0, "data":Ldge;
    if-eqz v0, :cond_0

    .line 151
    iget-wide v2, v0, Ldge;->d:J

    .line 153
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 330
    .line 4344
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->dismissLoadingDialog()V

    .line 333
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 275
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 298
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 337
    .line 5344
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 323
    .line 3344
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->showLoadingDialog()V

    .line 326
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 344
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 303
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->notifyDataSetChanged()V

    .line 314
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 261
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p3}, Ldgf$a;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 4
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 227
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 231
    :cond_0
    iget v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ldgf$a;->a(I)V

    goto :goto_0

    .line 234
    :cond_1
    iget v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->g:Z

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 236
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/chat_theme_preview.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v0, Lctk$g;->activity_chat_theme:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->setContentView(I)V

    .line 1086
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_menu_seed"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->e:J

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d:Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    sget v0, Lctk$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->finish()V

    .line 1091
    const/4 v0, 0x0

    .line 69
    :goto_0
    if-nez v0, :cond_2

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 1094
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v1, Lctk$i;->dt_im_choose_a_background:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setTitle(I)V

    .line 1102
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;

    .line 2041
    iput-object p0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a:Ldfu$a;

    .line 1104
    sget v0, Lctk$f;->grid_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    .line 1105
    new-instance v0, Ldgg;

    invoke-direct {v0, p0}, Ldgg;-><init>(Ldgf$b;)V

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2158
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->i:Landroid/content/BroadcastReceiver;

    .line 2172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2173
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2174
    const-string/jumbo v1, "intent_action_reload_chat_theme"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->i:Landroid/content/BroadcastReceiver;

    .line 2176
    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 207
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->g:Z

    if-eqz v1, :cond_0

    .line 208
    sget v1, Lctk$i;->dt_im_chat_group_background:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 210
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 212
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 201
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 3181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3182
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->i:Landroid/content/BroadcastReceiver;

    .line 203
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v0}, Ldgf$a;->e()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onStart()V

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v0}, Ldgf$a;->b()Ldge;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->f:Z

    .line 3109
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    invoke-interface {v0}, Ldgf$a;->a()V

    .line 83
    :cond_1
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ldgf$a;

    .line 6318
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->h:Ldgf$a;

    .line 47
    return-void
.end method
