.class public abstract Lbnv;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnv$a;,
        Lbnv$b;,
        Lbnv$c;,
        Lbnv$d;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private B:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private C:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private D:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private E:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private F:Z

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lboq;

.field private K:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private P:I
    .annotation build Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$ShieldType;
    .end annotation
.end field

.field private Q:Ljava/lang/String;

.field private R:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private S:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected a:Landroid/app/Activity;

.field public b:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

.field public h:Lbnv$d;

.field public i:Landroid/content/BroadcastReceiver;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private t:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private w:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private x:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private y:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private z:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_comment_reply2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbnv;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lboq;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "timeDisplayStrategyInterface"    # Lboq;

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbnv;-><init>(Landroid/view/View;Lboq;Z)V

    .line 265
    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lboq;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "timeDisplayStrategyInterface"    # Lboq;
    .param p3, "showCmtsDetailPrefix"    # Z

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lbnv;->P:I

    .line 309
    new-instance v1, Lbnv$3;

    invoke-direct {v1, p0}, Lbnv$3;-><init>(Lbnv;)V

    iput-object v1, p0, Lbnv;->i:Landroid/content/BroadcastReceiver;

    .line 244
    iput-boolean p3, p0, Lbnv;->F:Z

    .line 245
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lbnv;->L:J

    .line 246
    iput-object p2, p0, Lbnv;->J:Lboq;

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context is not activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    .line 252
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->ui_common_link_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lbnv;->G:I

    .line 253
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$f;->icon_c_like_fill:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbnv;->H:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$f;->icon_c_like:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbnv;->I:Ljava/lang/String;

    .line 255
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbnv;->K:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    .line 256
    iget-object v1, p0, Lbnv;->K:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbpu$f;->icon_c_like:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lbnv;->a(Landroid/view/View;)V

    .line 2333
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2334
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbnv;->i:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "circle_on_post_changed"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    sget v2, Lbpu$f;->dt_circle_and_block_list_block_time:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbnv;->Q:Ljava/lang/String;

    .line 261
    return-void
.end method

.method static synthetic a(Lbnv;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-object v0, p0, Lbnv;->p:Landroid/view/View;

    return-object v0
.end method

.method private static a(JLjava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 6
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;"
        }
    .end annotation

    .prologue
    .local p2, "profileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v1, 0x0

    .line 1179
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getProfile error: uid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    move-object v0, v1

    .line 1187
    :goto_0
    return-object v0

    .line 1183
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1184
    .local v0, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_1

    .line 1185
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v4, p0

    if-nez v3, :cond_1

    goto :goto_0

    .end local v0    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    move-object v0, v1

    .line 1187
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1378
    iget-object v0, p0, Lbnv;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lbnv;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1382
    :cond_0
    iget-object v0, p0, Lbnv;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1383
    iget-object v0, p0, Lbnv;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    :cond_1
    iget-object v0, p0, Lbnv;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1387
    iget-object v0, p0, Lbnv;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    :cond_2
    iget-object v0, p0, Lbnv;->A:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1391
    iget-object v0, p0, Lbnv;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    :cond_3
    iget-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 1413
    :goto_0
    return-void

    .line 1398
    :cond_4
    iget-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1400
    iget-boolean v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->hideTime:Z

    if-eqz v0, :cond_5

    .line 1401
    iget-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1404
    :cond_5
    iget-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1407
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->timeToDisplay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1408
    iget-object v0, p0, Lbnv;->J:Lboq;

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    invoke-interface {v0, p1, v2, v3}, Lboq;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->timeToDisplay:Ljava/lang/String;

    .line 1411
    :cond_6
    iget-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->timeToDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbnv;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .param p4, "x4"    # Landroid/text/SpannableStringBuilder;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lbnv;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbnv;Ljava/util/List;)V
    .locals 18
    .param p0, "x0"    # Lbnv;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 92
    .line 19150
    move-object/from16 v0, p0

    iget-object v14, v0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 19152
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 19153
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 19155
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 19157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 19158
    if-eqz v4, :cond_0

    .line 19160
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->isComment()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19215
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->y:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 19217
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 19218
    if-eqz v5, :cond_1

    iget-wide v2, v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    .line 19219
    :cond_1
    const-string/jumbo v2, "origUser = null || uid <= 0"

    .line 20076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 19223
    :cond_2
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19227
    iget-object v13, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 19228
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    .line 19229
    invoke-static {v8}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 19230
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->replacedUidContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19231
    iget-object v13, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->replacedUidContent:Ljava/lang/String;

    :cond_3
    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v10, p1

    move-object v11, v4

    move-object v12, v7

    .line 19243
    invoke-direct/range {v8 .. v13}, Lbnv;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 19234
    :cond_4
    new-instance v2, Lbnv$10;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lbnv$10;-><init>(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Landroid/text/SpannableStringBuilder;)V

    invoke-static {v13, v8, v2}, Lbqg;->a(Ljava/lang/String;Ljava/util/Map;Lcov;)V

    goto :goto_0

    .line 20191
    :cond_5
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 20192
    if-eqz v2, :cond_6

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gtz v3, :cond_7

    .line 20193
    :cond_6
    const-string/jumbo v2, "origUser = null || uid <= 0"

    .line 21076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 20197
    :cond_7
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Lbnv;->a(JLjava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 20198
    if-eqz v3, :cond_0

    .line 20202
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lbnv;->L:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_8

    .line 20203
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v4, v8, v9}, Lbnw;->b(J)V

    .line 20206
    :cond_8
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 20207
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v15, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 20208
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 20210
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v8, v0, Lbnv;->G:I

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x12

    invoke-virtual {v15, v6, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20211
    new-instance v5, Lbnv$c;

    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9, v2}, Lbnv$c;-><init>(Lbnv;JZ)V

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v3, 0x21

    invoke-virtual {v15, v5, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 19167
    :cond_9
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_a

    .line 19168
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 19171
    :cond_a
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    .line 19172
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 19175
    :cond_b
    iget-wide v10, v14, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 21968
    const/4 v3, 0x0

    .line 21969
    const/4 v2, 0x0

    .line 21970
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_10

    .line 21971
    const/4 v3, 0x1

    .line 21972
    const/4 v2, 0x1

    .line 21973
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->u:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 21974
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->u:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 21976
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->v:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    .line 21977
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    .line 21986
    :goto_1
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 21987
    add-int/lit8 v4, v2, 0x1

    .line 21988
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->y:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 21989
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 22143
    if-eqz v2, :cond_12

    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_12

    .line 22144
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 21990
    :goto_2
    cmp-long v2, v8, v10

    if-nez v2, :cond_d

    .line 21991
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    move v2, v4

    .line 21996
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->C:Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->x:Landroid/view/View;

    if-nez v4, :cond_13

    :cond_f
    :goto_3
    return-void

    .line 21980
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->u:Landroid/view/View;

    if-eqz v4, :cond_11

    .line 21981
    move-object/from16 v0, p0

    iget-object v4, v0, Lbnv;->u:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    goto :goto_1

    .line 22146
    :cond_12
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 21998
    :cond_13
    packed-switch v2, :pswitch_data_0

    .line 22001
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->C:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22037
    :cond_14
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lbnv;->d(J)V

    goto :goto_3

    .line 22004
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->C:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22006
    if-eqz v3, :cond_16

    .line 22007
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->x:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22008
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->B:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 22009
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->B:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22019
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->w:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 22020
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->w:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 22012
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->x:Landroid/view/View;

    if-eqz v2, :cond_17

    .line 22013
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->x:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22015
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->B:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 22016
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->B:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 22024
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->C:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22025
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->w:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 22026
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->w:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22028
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->B:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 22029
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->B:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22031
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->x:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 22032
    move-object/from16 v0, p0

    iget-object v2, v0, Lbnv;->x:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 21998
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 22
    .param p1, "origUser"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    .param p3, "commentObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .param p4, "commentUsers"    # Landroid/text/SpannableStringBuilder;
    .param p5, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p2, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lbnw;->a()Lbnw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbnv;->a:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lbnv;->y:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextSize()F

    move-result v20

    invoke-static/range {v19 .. v20}, Lcms;->a(Landroid/content/Context;F)F

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lbnw;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v12

    .line 1251
    .local v12, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lbnv;->a(JLjava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v9

    .line 1252
    .local v9, "orig":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v9, :cond_0

    if-nez v12, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-object/from16 v17, v0

    .line 1258
    .local v17, "targetUser":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-nez v17, :cond_2

    .line 1259
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 1260
    .local v13, "start":I
    iget-object v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v8, v13, v18

    .line 1262
    .local v8, "end":I
    iget-object v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1264
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lbnv;->G:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x12

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v8, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1265
    new-instance v18, Lbnv$c;

    iget-wide v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lbnv$c;-><init>(Lbnv;JZ)V

    const/16 v19, 0x21

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v8, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1267
    move v7, v8

    .line 1268
    .local v7, "commentStart":I
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 1299
    .end local v8    # "end":I
    .end local v13    # "start":I
    .local v6, "commentEnd":I
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_0

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_0

    if-ge v7, v6, :cond_0

    .line 1300
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbnv;->L:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_3

    .line 1301
    new-instance v18, Lbnv$a;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lbnv$a;-><init>(Lbnv;J)V

    const/16 v19, 0x21

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v7, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1272
    .end local v6    # "commentEnd":I
    .end local v7    # "commentStart":I
    :cond_2
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 1276
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lbnv;->a(JLjava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v14

    .line 1277
    .local v14, "target":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v14, :cond_0

    .line 1281
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 1282
    .local v11, "origStart":I
    iget-object v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v10, v11, v18

    .line 1284
    .local v10, "origEnd":I
    sget-object v18, Lbnv;->j:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v10, v18

    .line 1285
    .local v16, "targetStart":I
    iget-object v0, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v16, v18

    .line 1287
    .local v15, "targetEnd":I
    iget-object v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    sget-object v19, Lbnv;->j:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    iget-object v0, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1289
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lbnv;->G:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x12

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1290
    new-instance v18, Lbnv$c;

    iget-wide v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lbnv$c;-><init>(Lbnv;JZ)V

    const/16 v19, 0x21

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1292
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lbnv;->G:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x12

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1293
    new-instance v18, Lbnv$c;

    iget-wide v0, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lbnv$c;-><init>(Lbnv;JZ)V

    const/16 v19, 0x21

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1295
    move v7, v15

    .line 1296
    .restart local v7    # "commentStart":I
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .restart local v6    # "commentEnd":I
    goto/16 :goto_1

    .line 1303
    .end local v10    # "origEnd":I
    .end local v11    # "origStart":I
    .end local v14    # "target":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v15    # "targetEnd":I
    .end local v16    # "targetStart":I
    :cond_3
    new-instance v18, Lbnv$b;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lbnv$b;-><init>(Lbnv;JLcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V

    const/16 v19, 0x21

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v7, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lbnv;Z)Z
    .locals 1
    .param p0, "x0"    # Lbnv;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbnv;->M:Z

    return v0
.end method

.method public static b(J)V
    .locals 2
    .param p0, "postId"    # J

    .prologue
    .line 959
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 960
    :cond_0
    return-void
.end method

.method private b(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "avatar"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "name"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 916
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 917
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lbnv$8;

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbnv$8;-><init>(Lbnv;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;JLandroid/widget/TextView;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v7, p1, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 951
    return-void
.end method

.method static synthetic b(Lbnv;)Z
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-boolean v0, p0, Lbnv;->d:Z

    return v0
.end method

.method static synthetic b(Lbnv;Z)Z
    .locals 0
    .param p0, "x0"    # Lbnv;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lbnv;->N:Z

    return p1
.end method

.method static synthetic c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-object v0, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    return-object v0
.end method

.method private c(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 905
    iget-object v0, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnv;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnv;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lbnv;->l:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0, v1}, Lbnv;->b(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    .line 908
    :cond_0
    return-void
.end method

.method public static c(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Z
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    const/4 v0, 0x0

    .line 625
    if-nez p0, :cond_0

    .line 626
    const-string/jumbo v1, "like success but SNPostObject is null"

    .line 10076
    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 635
    :goto_0
    return v0

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    :cond_1
    const-string/jumbo v1, "like success but List<SNCommentObject> is null"

    .line 11076
    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lbnv;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-object v0, p0, Lbnv;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(J)V
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 1041
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbnw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbpu$a;->ui_common_theme_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1044
    iget-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lbnv;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lbnv;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lbnv;->t:Landroid/widget/TextView;

    sget v1, Lbpu$a;->ui_common_theme_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 1050
    :cond_2
    iget-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_3

    .line 1051
    iget-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbpu$a;->ui_common_link_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1052
    iget-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lbnv;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    :cond_3
    iget-object v0, p0, Lbnv;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lbnv;->t:Landroid/widget/TextView;

    sget v1, Lbpu$a;->ui_common_link_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 8
    .param p0, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 689
    if-nez p0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 691
    .local v2, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 692
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 693
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    const/4 v1, 0x0

    .line 694
    .local v1, "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v4

    .line 695
    .local v4, "myself":J
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 696
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 697
    .local v0, "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->isComment()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    .line 698
    move-object v1, v0

    .line 699
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 704
    .end local v0    # "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->removeCommentAsync(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V

    goto :goto_0
.end method

.method static synthetic e(Lbnv;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lbnv;)Lbnv$d;
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-object v0, p0, Lbnv;->h:Lbnv$d;

    return-object v0
.end method

.method private f(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 7
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 759
    iget-object v4, p0, Lbnv;->O:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 794
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isPostByMySelf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 763
    iget-object v4, p0, Lbnv;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 767
    :cond_1
    iget-object v4, p0, Lbnv;->O:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->mentionedUsers:Ljava/util/List;

    .line 770
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 771
    iget-object v4, p0, Lbnv;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 775
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 776
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v4, p0, Lbnv;->a:Landroid/app/Activity;

    sget v5, Lbpu$f;->dt_circle_feed_mentioned:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 780
    .local v2, "user":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v2, :cond_3

    .line 784
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 787
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 788
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 791
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 793
    iget-object v4, p0, Lbnv;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic g(Lbnv;)Z
    .locals 1
    .param p0, "x0"    # Lbnv;

    .prologue
    .line 92
    iget-boolean v0, p0, Lbnv;->N:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 537
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;

    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;->show()V

    .line 538
    return-void
.end method

.method final a(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 532
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 533
    return-void
.end method

.method final a(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "avatar"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "name"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 911
    invoke-direct {p0, p1, p2, p3, p4}, Lbnv;->b(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    .line 912
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    sget v0, Lbpu$d;->item_circle_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 352
    sget v0, Lbpu$d;->item_circle_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->l:Landroid/widget/TextView;

    .line 353
    sget v0, Lbpu$d;->item_circle_company:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->m:Landroid/widget/TextView;

    .line 355
    sget v0, Lbpu$d;->shield_pull:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->A:Landroid/view/View;

    .line 356
    iget-object v0, p0, Lbnv;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lbnv;->A:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_0
    sget v0, Lbpu$d;->item_circle_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->b:Landroid/view/View;

    .line 362
    iget-object v0, p0, Lbnv;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lbnv;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lbnv;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lbnv;->b:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbpu$f;->dt_circle_action_collapse:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbpu$f;->dt_circle_action_full_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_2
    sget v0, Lbpu$d;->item_circle_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->n:Landroid/widget/TextView;

    .line 371
    sget v0, Lbpu$d;->item_circle_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->o:Landroid/view/View;

    .line 372
    sget v0, Lbpu$d;->item_circle_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->p:Landroid/view/View;

    .line 373
    sget v0, Lbpu$d;->item_circle_ver_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->q:Landroid/view/View;

    .line 374
    sget v0, Lbpu$d;->item_circle_cmt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->r:Landroid/view/View;

    .line 375
    sget v0, Lbpu$d;->item_circle_like_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 376
    sget v0, Lbpu$d;->item_circle_like_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->t:Landroid/widget/TextView;

    .line 377
    sget v0, Lbpu$d;->item_circle_like_prefix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->u:Landroid/view/View;

    .line 379
    sget v0, Lbpu$d;->item_circle_likes_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->v:Landroid/widget/TextView;

    .line 380
    iget-object v0, p0, Lbnv;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lbnv;->v:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 382
    iget-object v0, p0, Lbnv;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 385
    :cond_3
    sget v0, Lbpu$d;->item_circle_like_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->w:Landroid/view/View;

    .line 386
    sget v0, Lbpu$d;->item_circle_cmts_detail_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->x:Landroid/view/View;

    .line 388
    sget v0, Lbpu$d;->item_circle_cmts_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->y:Landroid/widget/TextView;

    .line 389
    iget-object v0, p0, Lbnv;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lbnv;->y:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 391
    iget-object v0, p0, Lbnv;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 394
    :cond_4
    sget v0, Lbpu$d;->item_circle_cmts_prefix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->z:Landroid/view/View;

    .line 395
    iget-object v0, p0, Lbnv;->z:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 396
    iget-boolean v0, p0, Lbnv;->F:Z

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lbnv;->z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :cond_5
    :goto_0
    sget v0, Lbpu$d;->item_circle_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbnv;->C:Landroid/view/ViewGroup;

    .line 404
    sget v0, Lbpu$d;->item_circle_like_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->B:Landroid/view/View;

    .line 406
    sget v0, Lbpu$d;->location_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->S:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lbnv;->S:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 408
    iget-object v0, p0, Lbnv;->S:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_6
    sget v0, Lbpu$d;->location_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->R:Landroid/widget/TextView;

    .line 411
    sget v0, Lbpu$d;->ver_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->D:Landroid/view/View;

    .line 412
    sget v0, Lbpu$d;->item_circle_bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnv;->E:Landroid/view/View;

    .line 414
    sget v0, Lbpu$d;->mentioned_users:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnv;->O:Landroid/widget/TextView;

    .line 3555
    iget-object v0, p0, Lbnv;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 3556
    iget-object v0, p0, Lbnv;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3558
    :cond_7
    iget-object v0, p0, Lbnv;->p:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 3559
    iget-object v0, p0, Lbnv;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3561
    :cond_8
    iget-object v0, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_9

    .line 3562
    iget-object v0, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3564
    :cond_9
    iget-object v0, p0, Lbnv;->r:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 3565
    iget-object v0, p0, Lbnv;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3567
    :cond_a
    iget-object v0, p0, Lbnv;->o:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 3568
    iget-object v0, p0, Lbnv;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :cond_b
    return-void

    .line 399
    :cond_c
    iget-object v0, p0, Lbnv;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .param p1    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 710
    if-nez p1, :cond_0

    .line 711
    const-string/jumbo v2, "onBindData object = null"

    .line 12076
    invoke-static {v9, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 756
    :goto_0
    return-void

    .line 714
    :cond_0
    iput-object p1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 716
    iget-object v2, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-boolean v4, p0, Lbnv;->d:Z

    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)I

    move-result v2

    iput v2, p0, Lbnv;->P:I

    .line 718
    iget-object v2, p0, Lbnv;->D:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 719
    iget-boolean v2, p0, Lbnv;->d:Z

    if-eqz v2, :cond_8

    .line 720
    iget-object v2, p0, Lbnv;->D:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 726
    :cond_1
    :goto_1
    iget-object v2, p0, Lbnv;->E:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 727
    iget-boolean v2, p0, Lbnv;->d:Z

    if-eqz v2, :cond_9

    .line 728
    iget-object v2, p0, Lbnv;->E:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :cond_2
    :goto_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 735
    .local v1, "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v1, :cond_3

    .line 736
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 12839
    iget-object v2, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbnv;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbnv;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 12840
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lbnw;->d(J)Lbnj$a;

    move-result-object v2

    .line 12841
    if-eqz v2, :cond_a

    .line 12844
    iget-object v6, v2, Lbnj$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 12845
    iget-object v4, p0, Lbnv;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v2, Lbnj$a;->a:Ljava/lang/String;

    iget-object v6, v2, Lbnj$a;->b:Ljava/lang/String;

    .line 13167
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 12846
    iget-object v4, p0, Lbnv;->l:Landroid/widget/TextView;

    iget-object v5, v2, Lbnj$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12847
    iget-object v4, p0, Lbnv;->m:Landroid/widget/TextView;

    iget-object v2, v2, Lbnj$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 740
    .local v0, "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-eqz v0, :cond_6

    .line 13858
    iget-object v2, p0, Lbnv;->b:Landroid/view/View;

    .line 13862
    if-eqz p1, :cond_4

    if-nez v2, :cond_b

    .line 744
    :cond_4
    :goto_4
    invoke-virtual {p0, p1}, Lbnv;->e(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 14816
    iget v2, p0, Lbnv;->P:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f

    move v2, v3

    .line 14822
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 14831
    iget-object v2, p0, Lbnv;->a:Landroid/app/Activity;

    iget-object v3, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {p0, v2, v3}, Lbnv;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 748
    :cond_5
    :goto_6
    invoke-virtual {p0, p1}, Lbnv;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 16889
    iget-object v2, p0, Lbnv;->o:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 16890
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 16891
    if-nez v2, :cond_15

    .line 16892
    iget-object v2, p0, Lbnv;->o:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 16893
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CircleTag"

    const-string/jumbo v4, "[showDeleteIfPostByMyself] user == null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17797
    :cond_6
    :goto_7
    iget-object v2, p0, Lbnv;->S:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lbnv;->R:Landroid/widget/TextView;

    if-nez v2, :cond_17

    .line 755
    :cond_7
    :goto_8
    invoke-direct {p0, p1}, Lbnv;->f(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto/16 :goto_0

    .line 722
    .end local v0    # "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    .end local v1    # "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    :cond_8
    iget-object v2, p0, Lbnv;->D:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 730
    :cond_9
    iget-object v2, p0, Lbnv;->E:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 12849
    .restart local v1    # "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    :cond_a
    invoke-direct {p0, v4, v5}, Lbnv;->c(J)V

    goto :goto_3

    .line 13863
    .restart local v0    # "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    :cond_b
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 13864
    if-eqz v4, :cond_4

    .line 13866
    sget v5, Lbpu$d;->ll_tag:I

    invoke-virtual {p0}, Lbnv;->getAdapterPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13868
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 13869
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 13871
    :cond_c
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 13872
    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 13873
    check-cast v2, Landroid/widget/TextView;

    .line 13874
    invoke-static {}, Lbnw;->a()Lbnw;

    iget-object v5, p0, Lbnv;->a:Landroid/app/Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-static {v6, v7}, Lcms;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v5, v4, v6}, Lbnw;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 13875
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 13876
    :cond_d
    instance-of v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v5, :cond_4

    .line 13877
    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 13878
    invoke-static {}, Lbnw;->a()Lbnw;

    iget-object v5, p0, Lbnv;->a:Landroid/app/Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getTextSize()F

    move-result v7

    invoke-static {v6, v7}, Lcms;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v5, v4, v6}, Lbnw;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 13879
    iget-object v5, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lbnv;->f:Ljava/util/Map;

    if-eqz v5, :cond_e

    .line 13880
    iget-object v5, p0, Lbnv;->f:Ljava/util/Map;

    iget-object v6, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 13882
    :cond_e
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 14819
    :cond_f
    iget v2, p0, Lbnv;->P:I

    goto/16 :goto_5

    .line 15310
    :pswitch_0
    iget-object v2, p0, Lbnv;->r:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 15311
    iget-object v2, p0, Lbnv;->r:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 15314
    :cond_10
    iget-object v2, p0, Lbnv;->p:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 15315
    iget-object v2, p0, Lbnv;->p:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 15318
    :cond_11
    iget-object v2, p0, Lbnv;->q:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 15319
    iget-object v2, p0, Lbnv;->q:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 15322
    :cond_12
    iget-object v2, p0, Lbnv;->A:Landroid/view/View;

    if-eqz v2, :cond_13

    .line 15323
    iget-object v2, p0, Lbnv;->A:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 15326
    :cond_13
    iget-object v2, p0, Lbnv;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 15330
    iget-object v2, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldAt:J

    invoke-static {v4, v5}, Lbqi;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 15332
    iget-object v4, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldOperator:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 15333
    if-eqz v4, :cond_5

    .line 15334
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    .line 15335
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 15336
    iget-wide v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 15337
    iget-object v5, p0, Lbnv;->n:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "nick = null while uid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16076
    invoke-static {v9, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 15339
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v5, Lbnv$2;

    invoke-direct {v5, p0, v4}, Lbnv$2;-><init>(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)V

    const-class v4, Lcma;

    iget-object v8, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-interface {v2, v5, v4, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v6, v7, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_6

    .line 15365
    :cond_14
    iget-object v4, p0, Lbnv;->n:Landroid/widget/TextView;

    iget-object v6, p0, Lbnv;->Q:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const/4 v2, 0x1

    aput-object v5, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 14827
    :pswitch_1
    iget-object v2, p0, Lbnv;->a:Landroid/app/Activity;

    iget-object v3, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 16370
    invoke-direct {p0, v2, v3}, Lbnv;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 16372
    iget-object v2, p0, Lbnv;->A:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 16373
    iget-object v2, p0, Lbnv;->A:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 16896
    :cond_15
    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    .line 16897
    iget-object v2, p0, Lbnv;->o:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 16899
    :cond_16
    iget-object v2, p0, Lbnv;->o:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 17800
    :cond_17
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 17801
    if-nez v2, :cond_18

    .line 17802
    iget-object v2, p0, Lbnv;->S:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 17804
    :cond_18
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 17805
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 17806
    iget-object v2, p0, Lbnv;->S:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 17808
    :cond_19
    iget-object v3, p0, Lbnv;->S:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 17809
    iget-object v3, p0, Lbnv;->R:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 14822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 10
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 1066
    if-nez p1, :cond_1

    .line 18097
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v1, p0, Lbnv;->p:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1069
    iget-object v1, p0, Lbnv;->p:Landroid/view/View;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1070
    iget-object v4, p0, Lbnv;->p:Landroid/view/View;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1073
    :cond_2
    iget-object v1, p0, Lbnv;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 1074
    iget-object v1, p0, Lbnv;->y:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1077
    :cond_3
    iget-object v1, p0, Lbnv;->r:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1078
    iget-object v1, p0, Lbnv;->r:Landroid/view/View;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1082
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 18089
    .local v0, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    iget-object v1, p0, Lbnv;->C:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 18090
    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-direct {p0, v4, v5}, Lbnv;->d(J)V

    .line 18093
    :cond_6
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18094
    iget-object v1, p0, Lbnv;->C:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 18095
    iget-object v1, p0, Lbnv;->C:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    :cond_7
    move v1, v3

    .line 1070
    goto :goto_1

    .line 18100
    .restart local v0    # "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 18101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 18102
    if-eqz v1, :cond_9

    .line 18104
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 18105
    if-eqz v5, :cond_a

    .line 18106
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 18107
    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 18108
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18112
    :cond_a
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 18113
    if-eqz v1, :cond_9

    .line 18114
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 18115
    cmp-long v1, v6, v8

    if-lez v1, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 18116
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18121
    :cond_b
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v5, Lbnv$9;

    invoke-direct {v5, p0}, Lbnv$9;-><init>(Lbnv;)V

    const-class v6, Lcma;

    iget-object v7, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-interface {v1, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v4, v3, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v10, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 423
    .local v0, "id":I
    sget v1, Lbpu$d;->item_circle_like:I

    if-ne v0, v1, :cond_5

    .line 4465
    iget-boolean v1, p0, Lbnv;->M:Z

    if-nez v1, :cond_0

    .line 4468
    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 4469
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbnv;->M:Z

    .line 4470
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v2, v4, v5}, Lbnw;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4471
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 4645
    iget-object v1, p0, Lbnv;->p:Landroid/view/View;

    if-eqz v1, :cond_0

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 4647
    :cond_1
    invoke-static {}, Lbqn;->a()Ljava/util/Map;

    move-result-object v4

    .line 4648
    const-string/jumbo v1, "contentType"

    iget-object v5, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getContentType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    iget-boolean v1, p0, Lbnv;->d:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "detail_delete_likes"

    :goto_1
    invoke-interface {v5, v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 4650
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 4652
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v4

    .line 4653
    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 4654
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lbnv$7;

    invoke-direct {v5, p0, v1, v8}, Lbnv$7;-><init>(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcov;)V

    const-class v1, Lcma;

    iget-object v6, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-interface {v3, v5, v1, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v4, v2, v1}, Lbou;->b(Ljava/lang/Long;Lcma;)V

    goto :goto_0

    .line 4649
    :cond_2
    const-string/jumbo v1, "feed_delete_likes"

    goto :goto_1

    .line 4473
    :cond_3
    iget-object v2, p0, Lbnv;->K:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    iget-object v3, p0, Lbnv;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a(Landroid/view/View;)V

    .line 4474
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 5579
    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    .line 5581
    invoke-static {}, Lbqn;->a()Ljava/util/Map;

    move-result-object v4

    .line 5582
    const-string/jumbo v1, "contentType"

    iget-object v5, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getContentType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5583
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    iget-boolean v1, p0, Lbnv;->d:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "detail_posts_like"

    :goto_2
    invoke-interface {v5, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5584
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 5586
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v4

    .line 5587
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v7, Lbnv$6;

    invoke-direct {v7, p0, v2, v3, v8}, Lbnv$6;-><init>(Lbnv;JLcov;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-interface {v1, v7, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v4, v5, v6, v1}, Lbou;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 5583
    :cond_4
    const-string/jumbo v1, "feed_posts_like"

    goto :goto_2

    .line 425
    :cond_5
    sget v1, Lbpu$d;->item_circle_avatar:I

    if-eq v0, v1, :cond_6

    sget v1, Lbpu$d;->item_circle_name:I

    if-ne v0, v1, :cond_8

    .line 6479
    :cond_6
    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 6480
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 6481
    if-nez v1, :cond_7

    .line 6482
    const-string/jumbo v1, "Circle"

    const-string/jumbo v2, "CircleTag"

    const-string/jumbo v3, "circle click on avatar, but has no user object"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6486
    :cond_7
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "feed_click_post_author_avatar"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 6488
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-virtual {p0, v2, v3}, Lbnv;->a(J)V

    goto/16 :goto_0

    .line 427
    :cond_8
    sget v1, Lbpu$d;->item_circle_cmt:I

    if-ne v0, v1, :cond_a

    .line 6541
    iget-object v1, p0, Lbnv;->h:Lbnv$d;

    if-eqz v1, :cond_0

    .line 6543
    iget-boolean v1, p0, Lbnv;->d:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "detail_posts_comment"

    .line 6545
    :goto_3
    invoke-static {}, Lbqn;->a()Ljava/util/Map;

    move-result-object v2

    .line 6546
    const-string/jumbo v3, "contentType"

    iget-object v4, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getContentType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6547
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 6548
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 6550
    iget-object v1, p0, Lbnv;->h:Lbnv$d;

    iget-object v2, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {p0}, Lbnv;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v8, v3}, Lbnv$d;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V

    goto/16 :goto_0

    .line 6543
    :cond_9
    const-string/jumbo v1, "feed_posts_comment"

    goto :goto_3

    .line 429
    :cond_a
    sget v1, Lbpu$d;->item_circle_delete:I

    if-ne v0, v1, :cond_b

    .line 7502
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lbpu$f;->dt_circle_delete_for_sure:I

    .line 7503
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbpu$f;->dt_circle_cancel:I

    new-instance v3, Lbnv$5;

    invoke-direct {v3, p0}, Lbnv$5;-><init>(Lbnv;)V

    .line 7504
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbpu$f;->dt_circle_action_delete:I

    new-instance v3, Lbnv$4;

    invoke-direct {v3, p0}, Lbnv$4;-><init>(Lbnv;)V

    .line 7510
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 7528
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 431
    :cond_b
    iget-object v1, p0, Lbnv;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 433
    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isShielded()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lbnv;->e:Z

    if-eqz v1, :cond_0

    :cond_c
    iget-boolean v1, p0, Lbnv;->d:Z

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lbnv;->a:Landroid/app/Activity;

    iget-object v2, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto/16 :goto_0

    .line 438
    :cond_d
    sget v1, Lbpu$d;->shield_pull:I

    if-ne v0, v1, :cond_e

    .line 8492
    iget-object v1, p0, Lbnv;->A:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8496
    iget-object v2, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-boolean v1, p0, Lbnv;->d:Z

    .line 9212
    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 9215
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$a;-><init>()V

    .line 8498
    :goto_4
    iget-object v2, p0, Lbnv;->a:Landroid/app/Activity;

    iget-object v3, p0, Lbnv;->A:Landroid/view/View;

    iget-object v4, p0, Lbnv;->g:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;)V

    goto/16 :goto_0

    .line 9216
    :pswitch_0
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_4

    .line 9217
    :pswitch_1
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_4

    .line 440
    :cond_e
    sget v1, Lbpu$d;->location_layout:I

    if-ne v0, v1, :cond_0

    .line 9446
    iget-object v1, p0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 9447
    if-eqz v1, :cond_0

    .line 9451
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9452
    const-string/jumbo v3, "location_latitude"

    iget v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 9453
    const-string/jumbo v3, "location_longitude"

    iget v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 9454
    const-string/jumbo v3, "location_text"

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9456
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 9457
    sget v3, Lbpu$c;->msg_select_location_mark:I

    iput v3, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 9458
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 9459
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 9460
    const-string/jumbo v3, "location_select_marker"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9461
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v3, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 9212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    .line 3297
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 3298
    check-cast p1, Landroid/widget/TextView;

    .line 3299
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v0, v1

    .line 274
    .local v0, "summaryText":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 292
    :goto_2
    return v1

    .line 3300
    .end local v0    # "summaryText":Ljava/lang/String;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v4, p1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v4, :cond_3

    .line 3301
    check-cast p1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 3302
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 3303
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 277
    .restart local v0    # "summaryText":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Lbnv;->a:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v4, v3, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lbnv;->a:Landroid/app/Activity;

    sget v6, Lbpu$f;->and_chat_menu_copy:I

    .line 278
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v2, Lbnv$1;

    invoke-direct {v2, p0, v0}, Lbnv$1;-><init>(Lbnv;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v1, v3

    .line 292
    goto :goto_2

    .end local v0    # "summaryText":Ljava/lang/String;
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
