.class public Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private l:Landroid/os/Handler;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "from_album_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->i:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 156
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->n:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->o:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "desc"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 195
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Lfrs;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
    .param p1, "x1"    # Lfrs;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lfrs;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lfrs;)V
    .locals 4
    .param p1, "feedbackObject"    # Lfrs;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 281
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, p1, v0}, Lfac;->a(Lfrs;Lcma;)V

    .line 303
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget v0, Lezg$l;->feedback_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {p0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 42
    .line 3208
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3209
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3210
    sget v0, Lezg$l;->feedback_no_content:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3226
    :goto_0
    return-void

    .line 3212
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_1

    .line 3213
    sget v0, Lezg$l;->feedback_text_too_long:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3216
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3218
    sget v0, Lezg$l;->feedback_text_invalid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3221
    :cond_2
    new-instance v1, Lfrs;

    invoke-direct {v1}, Lfrs;-><init>()V

    .line 3222
    iput-object v0, v1, Lfrs;->a:Ljava/lang/String;

    .line 3223
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getWKUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfrs;->b:Ljava/lang/String;

    .line 3224
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 3225
    sget v0, Lezg$l;->feedbacking:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(I)V

    .line 3226
    invoke-direct {p0, v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lfrs;)V

    goto :goto_0

    .line 3228
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lfrs;->c:Ljava/util/List;

    .line 3229
    sget v0, Lezg$l;->feedbacking:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(I)V

    .line 3230
    sget-object v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Lfrs;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 142
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->o:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    if-ge v1, v5, :cond_1

    .line 146
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lezg$g;->feedback_add_image:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    :cond_1
    add-int/lit8 v0, v1, 0x1

    :goto_1
    if-ge v0, v5, :cond_2

    .line 152
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2306
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g()V

    .line 2307
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x77b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lezg$j;->activity_feedback_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->setContentView(I)V

    .line 69
    const-string/jumbo v0, "IMAGE"

    .line 70
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->l:Landroid/os/Handler;

    .line 1095
    sget v0, Lezg$h;->feedback_et:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d:Landroid/widget/EditText;

    .line 1096
    sget v0, Lezg$h;->feedback_submit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->e:Landroid/widget/Button;

    .line 1097
    sget v0, Lezg$h;->feedback_iv1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->f:Landroid/widget/ImageView;

    .line 1098
    sget v0, Lezg$h;->feedback_iv2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g:Landroid/widget/ImageView;

    .line 1099
    sget v0, Lezg$h;->feedback_iv3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->h:Landroid/widget/ImageView;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->h:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->f:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->h:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 1117
    add-int/lit8 v0, v0, -0x40

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v0, v0, 0x3

    .line 1119
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1120
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1121
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1122
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1124
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1125
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1126
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1127
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1130
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1131
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->d()V

    .line 2077
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->j:Landroid/content/BroadcastReceiver;

    .line 2088
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2089
    sget-object v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2091
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v2, p0, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    :cond_0
    return-void
.end method
