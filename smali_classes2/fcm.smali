.class public abstract Lfcm;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfcm$a;,
        Lfcm$b;
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

.field private D:Z

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lfdf;

.field private I:Lcom/alibaba/android/user/connection/anim/GoodView;

.field private J:J

.field private K:Z

.field private L:Z

.field private M:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private N:I

.field private O:Ljava/lang/String;

.field private P:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected a:Landroid/app/Activity;

.field public b:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
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

.field public g:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

.field public h:Lfcm$b;

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

.field private x:Lcom/alibaba/android/user/connection/ui/CommentListView;
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
    .line 100
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_circle_comment_reply2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfcm;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lfdf;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "timeDisplayStrategyInterface"    # Lfdf;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfcm;-><init>(Landroid/view/View;Lfdf;Z)V

    .line 275
    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lfdf;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "timeDisplayStrategyInterface"    # Lfdf;
    .param p3, "showCmtsDetailPrefix"    # Z

    .prologue
    .line 252
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 181
    const/4 v1, -0x1

    iput v1, p0, Lfcm;->N:I

    .line 319
    new-instance v1, Lfcm$5;

    invoke-direct {v1, p0}, Lfcm$5;-><init>(Lfcm;)V

    iput-object v1, p0, Lfcm;->i:Landroid/content/BroadcastReceiver;

    .line 254
    iput-boolean p3, p0, Lfcm;->D:Z

    .line 255
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lfcm;->J:J

    .line 256
    iput-object p2, p0, Lfcm;->H:Lfdf;

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context is not activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    .line 262
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_link_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lfcm;->E:I

    .line 263
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->icon_c_like_fill:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfcm;->F:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->icon_c_like:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfcm;->G:Ljava/lang/String;

    .line 265
    new-instance v1, Lcom/alibaba/android/user/connection/anim/GoodView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/connection/anim/GoodView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfcm;->I:Lcom/alibaba/android/user/connection/anim/GoodView;

    .line 266
    iget-object v1, p0, Lfcm;->I:Lcom/alibaba/android/user/connection/anim/GoodView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->icon_c_like:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/connection/anim/GoodView;->a(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1}, Lfcm;->a(Landroid/view/View;)V

    .line 2343
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2344
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lfcm;->i:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "connection_on_post_changed"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 270
    :cond_1
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_circle_and_block_list_block_time:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfcm;->O:Ljava/lang/String;

    .line 271
    return-void
.end method

.method static synthetic a(Lfcm;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lfcm;

    .prologue
    .line 96
    iget-object v0, p0, Lfcm;->p:Landroid/view/View;

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

    .line 1214
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getProfile error: uid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    move-object v0, v1

    .line 1226
    :goto_0
    return-object v0

    .line 1218
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

    .line 1219
    .local v0, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_1

    .line 1222
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v4, p0

    if-nez v3, :cond_1

    goto :goto_0

    .end local v0    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    move-object v0, v1

    .line 1226
    goto :goto_0
.end method

.method static synthetic a(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 0
    .param p0, "x0"    # Lfcm;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 96
    iput-object p1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1323
    iget-object v0, p0, Lfcm;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lfcm;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    :cond_0
    iget-object v0, p0, Lfcm;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lfcm;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    :cond_1
    iget-object v0, p0, Lfcm;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1332
    iget-object v0, p0, Lfcm;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    :cond_2
    iget-object v0, p0, Lfcm;->A:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1336
    iget-object v0, p0, Lfcm;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    :cond_3
    iget-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 1358
    :goto_0
    return-void

    .line 1343
    :cond_4
    iget-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1345
    iget-boolean v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->hideTime:Z

    if-eqz v0, :cond_5

    .line 1346
    iget-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1349
    :cond_5
    iget-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1352
    iget-object v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->timeToDisplay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1353
    iget-object v0, p0, Lfcm;->H:Lfdf;

    iget-wide v2, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    invoke-interface {v0, p1, v2, v3}, Lfdf;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->timeToDisplay:Ljava/lang/String;

    .line 1356
    :cond_6
    iget-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->timeToDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lfcm;JJ)V
    .locals 7
    .param p0, "x0"    # Lfcm;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 96
    .line 18382
    iget-boolean v0, p0, Lfcm;->L:Z

    if-nez v0, :cond_0

    .line 18386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcm;->L:Z

    .line 18387
    iget-object v0, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 18388
    new-instance v1, Lfcm$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lfcm$4;-><init>(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;J)V

    const-class v0, Lcma;

    iget-object v2, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 19036
    sget-object v1, Lfdm$a;->a:Lfdk;

    move-wide v2, p3

    move-wide v4, p1

    .line 18411
    invoke-interface/range {v1 .. v6}, Lfdk;->a(JJLcma;)V

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic a(Lfcm;Ljava/util/List;)V
    .locals 13
    .param p0, "x0"    # Lfcm;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    .line 16134
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 16136
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 16137
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 16139
    iget-object v0, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 16140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 16142
    if-eqz v0, :cond_0

    .line 16145
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->isComment()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16146
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16230
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 16231
    if-eqz v0, :cond_2

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 16232
    :cond_2
    const-string/jumbo v0, "origUser = null || uid <= 0"

    .line 17060
    const/4 v6, 0x0

    invoke-static {v6, v0}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 16236
    :cond_3
    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {v6, v7, p1}, Lfcm;->a(JLjava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 16237
    if-eqz v6, :cond_0

    .line 16241
    iget-wide v8, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iget-wide v10, p0, Lfcm;->J:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 16242
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v7

    iget-object v8, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v7, v8, v9}, Lfcn;->b(J)V

    .line 16245
    :cond_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 16246
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 16247
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 16249
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget v10, p0, Lfcm;->E:I

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x12

    invoke-virtual {v3, v9, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16250
    new-instance v8, Lfcm$a;

    iget-wide v10, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    const/4 v0, 0x1

    invoke-direct {v8, p0, v10, v11, v0}, Lfcm$a;-><init>(Lfcm;JZ)V

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    const/16 v6, 0x21

    invoke-virtual {v3, v8, v7, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 16154
    :cond_5
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    if-eqz v0, :cond_6

    .line 16155
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    iget-boolean v5, p0, Lfcm;->D:Z

    iget-boolean v6, p0, Lfcm;->d:Z

    .line 17206
    iput-boolean v5, v0, Lcom/alibaba/android/user/connection/ui/CommentListView;->b:Z

    .line 17207
    iput-boolean v6, v0, Lcom/alibaba/android/user/connection/ui/CommentListView;->c:Z

    .line 17208
    iput-object v4, v0, Lcom/alibaba/android/user/connection/ui/CommentListView;->a:Ljava/util/List;

    .line 17209
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->a()V

    .line 16156
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    new-instance v5, Lfcm$12;

    invoke-direct {v5, p0, v4}, Lfcm$12;-><init>(Lfcm;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/connection/ui/CommentListView;->setOnItemClickListener(Lcom/alibaba/android/user/connection/ui/CommentListView$a;)V

    .line 16184
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    new-instance v5, Lfcm$2;

    invoke-direct {v5, p0, v4}, Lfcm$2;-><init>(Lfcm;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/connection/ui/CommentListView;->setOnItemLongClickListener(Lcom/alibaba/android/user/connection/ui/CommentListView$b;)V

    .line 16202
    :cond_6
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_7

    .line 16203
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 16206
    :cond_7
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_8

    .line 16207
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 16210
    :cond_8
    iget-wide v6, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    .line 17955
    :goto_1
    const/4 v2, 0x0

    .line 17956
    const/4 v1, 0x0

    .line 17957
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 17958
    const/4 v2, 0x1

    .line 17959
    const/4 v1, 0x1

    .line 17960
    iget-object v4, p0, Lfcm;->u:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 17961
    iget-object v4, p0, Lfcm;->u:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17963
    :cond_9
    iget-object v4, p0, Lfcm;->v:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 17964
    iget-object v4, p0, Lfcm;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v12, v1

    move v1, v2

    move v2, v12

    .line 17973
    :goto_2
    if-eqz v0, :cond_12

    .line 17974
    add-int/lit8 v0, v1, 0x1

    .line 17983
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 17986
    iget-object v0, p0, Lfcm;->C:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 18019
    :cond_a
    :goto_4
    invoke-direct {p0, v6, v7}, Lfcm;->d(J)V

    .line 96
    return-void

    .line 16210
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 17967
    :cond_c
    iget-object v3, p0, Lfcm;->u:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 17968
    iget-object v3, p0, Lfcm;->u:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    move v12, v1

    move v1, v2

    move v2, v12

    goto :goto_2

    .line 17989
    :pswitch_0
    iget-object v0, p0, Lfcm;->C:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 17991
    if-eqz v2, :cond_f

    .line 17992
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 17993
    iget-object v0, p0, Lfcm;->B:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 17994
    iget-object v0, p0, Lfcm;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18002
    :cond_e
    :goto_5
    iget-object v0, p0, Lfcm;->w:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 18003
    iget-object v0, p0, Lfcm;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 17997
    :cond_f
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 17998
    iget-object v0, p0, Lfcm;->B:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 17999
    iget-object v0, p0, Lfcm;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 18007
    :pswitch_1
    iget-object v0, p0, Lfcm;->C:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 18008
    iget-object v0, p0, Lfcm;->w:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 18009
    iget-object v0, p0, Lfcm;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18011
    :cond_10
    iget-object v0, p0, Lfcm;->B:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 18012
    iget-object v0, p0, Lfcm;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18015
    :cond_11
    iget-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_4

    :cond_12
    move v0, v1

    goto/16 :goto_3

    .line 17983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lfcm;Z)Z
    .locals 1
    .param p0, "x0"    # Lfcm;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcm;->K:Z

    return v0
.end method

.method static synthetic b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lfcm;

    .prologue
    .line 96
    iget-object v0, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object v0
.end method

.method public static b(J)V
    .locals 2
    .param p0, "postId"    # J

    .prologue
    .line 944
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 947
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
    .line 897
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 898
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lfcm$10;

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lfcm$10;-><init>(Lfcm;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;JLandroid/widget/TextView;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v7, p1, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 936
    return-void
.end method

.method static synthetic b(Lfcm;Z)Z
    .locals 1
    .param p0, "x0"    # Lfcm;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcm;->L:Z

    return v0
.end method

.method static synthetic c(Lfcm;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lfcm;

    .prologue
    .line 96
    iget-object v0, p0, Lfcm;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 886
    iget-object v0, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcm;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcm;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lfcm;->l:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0, v1}, Lfcm;->b(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    .line 889
    :cond_0
    return-void
.end method

.method public static c(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 8
    .param p0, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 674
    if-nez p0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 678
    .local v2, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 681
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 682
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    const/4 v1, 0x0

    .line 683
    .local v1, "commentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v4

    .line 684
    .local v4, "myself":J
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 685
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 686
    .local v0, "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->isComment()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v6, v6, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    .line 687
    move-object v1, v0

    .line 688
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 693
    .end local v0    # "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->removeCommentAsync(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V

    goto :goto_0
.end method

.method static synthetic d(Lfcm;)J
    .locals 2
    .param p0, "x0"    # Lfcm;

    .prologue
    .line 96
    iget-wide v0, p0, Lfcm;->J:J

    return-wide v0
.end method

.method private d(J)V
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 1023
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lfcn;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$e;->ui_common_theme_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1026
    iget-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lfcm;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    :cond_0
    iget-object v0, p0, Lfcm;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lfcm;->t:Landroid/widget/TextView;

    sget v1, Lezg$e;->ui_common_theme_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1040
    :cond_1
    :goto_0
    return-void

    .line 1032
    :cond_2
    iget-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$e;->ui_common_link_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1034
    iget-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lfcm;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    :cond_3
    iget-object v0, p0, Lfcm;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lfcm;->t:Landroid/widget/TextView;

    sget v1, Lezg$e;->ui_common_link_text_fg:I

    invoke-static {v1}, Leda;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method static synthetic e(Lfcm;)Lfcm$b;
    .locals 1
    .param p0, "x0"    # Lfcm;

    .prologue
    .line 96
    iget-object v0, p0, Lfcm;->h:Lfcm$b;

    return-object v0
.end method

.method private e(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 7
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 732
    iget-object v4, p0, Lfcm;->M:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 769
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isPostByMySelf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 737
    iget-object v4, p0, Lfcm;->M:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v4, p0, Lfcm;->M:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v3, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->mentionedUsers:Ljava/util/List;

    .line 745
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    invoke-static {v3}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 746
    iget-object v4, p0, Lfcm;->M:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 750
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 751
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v4, p0, Lfcm;->a:Landroid/app/Activity;

    sget v5, Lezg$l;->dt_circle_feed_mentioned:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
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

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 755
    .local v2, "user":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v2, :cond_3

    .line 759
    iget-object v5, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 762
    .end local v2    # "user":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 766
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 768
    iget-object v4, p0, Lfcm;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic f(Lfcm;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lfcm;

    .prologue
    .line 96
    iget-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 534
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 535
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
    .line 892
    invoke-direct {p0, p1, p2, p3, p4}, Lfcm;->b(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    .line 893
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sget v0, Lezg$h;->item_circle_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 362
    sget v0, Lezg$h;->item_circle_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->l:Landroid/widget/TextView;

    .line 363
    sget v0, Lezg$h;->item_circle_company:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->m:Landroid/widget/TextView;

    .line 365
    sget v0, Lezg$h;->shield_pull:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->A:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lfcm;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lfcm;->A:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    :cond_0
    sget v0, Lezg$h;->item_circle_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->b:Landroid/view/View;

    .line 372
    iget-object v0, p0, Lfcm;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lfcm;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 375
    :cond_1
    iget-object v0, p0, Lfcm;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lfcm;->b:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_circle_action_collapse:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->dt_circle_action_full_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_2
    sget v0, Lezg$h;->item_circle_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->n:Landroid/widget/TextView;

    .line 381
    sget v0, Lezg$h;->item_circle_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->o:Landroid/view/View;

    .line 382
    sget v0, Lezg$h;->item_circle_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->p:Landroid/view/View;

    .line 383
    sget v0, Lezg$h;->item_circle_ver_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->q:Landroid/view/View;

    .line 384
    sget v0, Lezg$h;->item_circle_cmt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->r:Landroid/view/View;

    .line 385
    sget v0, Lezg$h;->item_circle_like_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 386
    sget v0, Lezg$h;->item_circle_like_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->t:Landroid/widget/TextView;

    .line 387
    sget v0, Lezg$h;->item_circle_like_prefix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->u:Landroid/view/View;

    .line 389
    sget v0, Lezg$h;->item_circle_likes_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->v:Landroid/widget/TextView;

    .line 390
    iget-object v0, p0, Lfcm;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lfcm;->v:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 392
    iget-object v0, p0, Lfcm;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 395
    :cond_3
    sget v0, Lezg$h;->item_circle_like_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->w:Landroid/view/View;

    .line 396
    sget v0, Lezg$h;->item_circle_cmts_detail_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/CommentListView;

    iput-object v0, p0, Lfcm;->x:Lcom/alibaba/android/user/connection/ui/CommentListView;

    .line 398
    sget v0, Lezg$h;->item_circle_cmts_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->y:Landroid/widget/TextView;

    .line 399
    iget-object v0, p0, Lfcm;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lfcm;->y:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 401
    iget-object v0, p0, Lfcm;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 404
    :cond_4
    sget v0, Lezg$h;->item_circle_cmts_prefix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->z:Landroid/view/View;

    .line 405
    iget-object v0, p0, Lfcm;->z:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 406
    iget-boolean v0, p0, Lfcm;->D:Z

    if-eqz v0, :cond_c

    .line 407
    iget-object v0, p0, Lfcm;->z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :cond_5
    :goto_0
    sget v0, Lezg$h;->item_circle_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfcm;->C:Landroid/view/ViewGroup;

    .line 414
    sget v0, Lezg$h;->item_circle_like_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcm;->B:Landroid/view/View;

    .line 416
    sget v0, Lezg$h;->location_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->P:Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lfcm;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 418
    iget-object v0, p0, Lfcm;->P:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :cond_6
    sget v0, Lezg$h;->mentioned_users:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcm;->M:Landroid/widget/TextView;

    .line 3551
    iget-object v0, p0, Lfcm;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 3552
    iget-object v0, p0, Lfcm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3554
    :cond_7
    iget-object v0, p0, Lfcm;->p:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 3555
    iget-object v0, p0, Lfcm;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3557
    :cond_8
    iget-object v0, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_9

    .line 3558
    iget-object v0, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3560
    :cond_9
    iget-object v0, p0, Lfcm;->r:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 3561
    iget-object v0, p0, Lfcm;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3563
    :cond_a
    iget-object v0, p0, Lfcm;->o:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 3564
    iget-object v0, p0, Lfcm;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_b
    return-void

    .line 409
    :cond_c
    iget-object v0, p0, Lfcm;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .param p1    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 699
    if-nez p1, :cond_0

    .line 700
    const-string/jumbo v2, "onBindData object = null"

    .line 10060
    invoke-static {v9, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 729
    :goto_0
    return-void

    .line 703
    :cond_0
    iput-object p1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 705
    iget-object v2, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-boolean v4, p0, Lfcm;->d:Z

    invoke-static {v2, v4}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Z)I

    move-result v2

    iput v2, p0, Lfcm;->N:I

    .line 707
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 708
    .local v1, "userObject":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v1, :cond_1

    .line 709
    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 10814
    iget-object v2, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lfcm;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lfcm;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 10815
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lfcn;->d(J)Lfbz$a;

    move-result-object v2

    .line 10816
    if-eqz v2, :cond_6

    .line 10819
    iget-object v6, v2, Lfbz$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 10820
    iget-object v4, p0, Lfcm;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v2, Lfbz$a;->a:Ljava/lang/String;

    iget-object v6, v2, Lfbz$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10821
    iget-object v4, p0, Lfcm;->l:Landroid/widget/TextView;

    iget-object v5, v2, Lfbz$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10822
    iget-object v4, p0, Lfcm;->m:Landroid/widget/TextView;

    iget-object v2, v2, Lfbz$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 713
    .local v0, "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-eqz v0, :cond_4

    .line 10833
    iget-object v2, p0, Lfcm;->b:Landroid/view/View;

    .line 10837
    if-eqz p1, :cond_2

    if-nez v2, :cond_7

    .line 717
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lfcm;->d(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 11791
    iget v2, p0, Lfcm;->N:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    move v2, v3

    .line 11797
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 11806
    iget-object v2, p0, Lfcm;->a:Landroid/app/Activity;

    iget-object v3, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {p0, v2, v3}, Lfcm;->a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 721
    :cond_3
    :goto_4
    invoke-virtual {p0, p1}, Lfcm;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 13868
    iget-object v2, p0, Lfcm;->o:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 13871
    iget-object v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 13872
    if-nez v2, :cond_11

    .line 13873
    iget-object v2, p0, Lfcm;->o:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 13874
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CircleTag"

    const-string/jumbo v4, "[showDeleteIfPostByMyself] user == null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14772
    :cond_4
    :goto_5
    iget-object v2, p0, Lfcm;->P:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 14775
    iget-object v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 14776
    if-nez v2, :cond_13

    .line 14777
    iget-object v2, p0, Lfcm;->P:Landroid/widget/TextView;

    invoke-static {v2, v10}, Lfxp;->a(Landroid/view/View;I)V

    .line 728
    :cond_5
    :goto_6
    invoke-direct {p0, p1}, Lfcm;->e(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto/16 :goto_0

    .line 10824
    .end local v0    # "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    :cond_6
    invoke-direct {p0, v4, v5}, Lfcm;->c(J)V

    goto :goto_1

    .line 10840
    .restart local v0    # "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    :cond_7
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 10841
    if-eqz v4, :cond_2

    .line 10845
    sget v5, Lezg$h;->ll_tag:I

    invoke-virtual {p0}, Lfcm;->getAdapterPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10847
    iget-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10848
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10850
    :cond_8
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 10851
    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 10852
    check-cast v2, Landroid/widget/TextView;

    .line 10853
    invoke-static {}, Lfcn;->a()Lfcn;

    iget-object v5, p0, Lfcm;->a:Landroid/app/Activity;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-static {v6, v7}, Lcms;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v5, v4, v6}, Lfcn;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 10854
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 10855
    :cond_9
    instance-of v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v5, :cond_2

    .line 10856
    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 10857
    invoke-static {}, Lfcn;->a()Lfcn;

    iget-object v5, p0, Lfcm;->a:Landroid/app/Activity;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getTextSize()F

    move-result v7

    invoke-static {v6, v7}, Lcms;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v5, v4, v6}, Lfcn;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 10858
    iget-object v5, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lfcm;->f:Ljava/util/Map;

    if-eqz v5, :cond_a

    .line 10859
    iget-object v5, p0, Lfcm;->f:Ljava/util/Map;

    iget-object v6, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v6, v6, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 10861
    :cond_a
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 11794
    :cond_b
    iget v2, p0, Lfcm;->N:I

    goto/16 :goto_3

    .line 12255
    :pswitch_0
    iget-object v2, p0, Lfcm;->r:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 12256
    iget-object v2, p0, Lfcm;->r:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 12259
    :cond_c
    iget-object v2, p0, Lfcm;->p:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 12260
    iget-object v2, p0, Lfcm;->p:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 12263
    :cond_d
    iget-object v2, p0, Lfcm;->q:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 12264
    iget-object v2, p0, Lfcm;->q:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 12267
    :cond_e
    iget-object v2, p0, Lfcm;->A:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 12268
    iget-object v2, p0, Lfcm;->A:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 12271
    :cond_f
    iget-object v2, p0, Lfcm;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 12275
    iget-object v2, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v4, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldAt:J

    invoke-static {v4, v5}, Lfff;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 12277
    iget-object v4, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldOperator:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 12278
    if-eqz v4, :cond_3

    .line 12279
    iget-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    .line 12280
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 12281
    iget-wide v2, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 12282
    iget-object v5, p0, Lfcm;->n:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "nick = null while uid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13060
    invoke-static {v9, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 12284
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v6, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v5, Lfcm$3;

    invoke-direct {v5, p0, v4}, Lfcm$3;-><init>(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)V

    const-class v4, Lcma;

    iget-object v8, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-interface {v2, v5, v4, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v6, v7, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_4

    .line 12310
    :cond_10
    iget-object v4, p0, Lfcm;->n:Landroid/widget/TextView;

    iget-object v6, p0, Lfcm;->O:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const/4 v2, 0x1

    aput-object v5, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 11802
    :pswitch_1
    iget-object v2, p0, Lfcm;->a:Landroid/app/Activity;

    iget-object v3, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 13315
    invoke-direct {p0, v2, v3}, Lfcm;->a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 13317
    iget-object v2, p0, Lfcm;->A:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 13318
    iget-object v2, p0, Lfcm;->A:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 13877
    :cond_11
    iget-wide v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 13878
    iget-object v2, p0, Lfcm;->o:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 13880
    :cond_12
    iget-object v2, p0, Lfcm;->o:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 14779
    :cond_13
    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 14780
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 14781
    iget-object v2, p0, Lfcm;->P:Landroid/widget/TextView;

    invoke-static {v2, v10}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 14783
    :cond_14
    iget-object v3, p0, Lfcm;->P:Landroid/widget/TextView;

    invoke-static {v3, v9}, Lfxp;->a(Landroid/view/View;I)V

    .line 14784
    iget-object v3, p0, Lfcm;->P:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 11797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 10
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 1046
    if-nez p1, :cond_1

    .line 15079
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v1, p0, Lfcm;->p:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1051
    iget-object v1, p0, Lfcm;->p:Landroid/view/View;

    iget-wide v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1052
    iget-object v4, p0, Lfcm;->p:Landroid/view/View;

    iget-wide v6, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1055
    :cond_2
    iget-object v1, p0, Lfcm;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 1056
    iget-object v1, p0, Lfcm;->y:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1059
    :cond_3
    iget-object v1, p0, Lfcm;->r:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1060
    iget-object v1, p0, Lfcm;->r:Landroid/view/View;

    iget-wide v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1064
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 15071
    .local v0, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    iget-object v1, p0, Lfcm;->C:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 15072
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-direct {p0, v4, v5}, Lfcm;->d(J)V

    .line 15075
    :cond_6
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15076
    iget-object v1, p0, Lfcm;->C:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 15077
    iget-object v1, p0, Lfcm;->C:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    :cond_7
    move v1, v3

    .line 1052
    goto :goto_1

    .line 15082
    .restart local v0    # "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 15083
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 15084
    if-eqz v1, :cond_9

    .line 15088
    iget-object v5, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 15089
    if-eqz v5, :cond_a

    .line 15090
    iget-wide v6, v5, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 15091
    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 15092
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15096
    :cond_a
    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 15097
    if-eqz v1, :cond_9

    .line 15098
    iget-wide v6, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 15099
    cmp-long v1, v6, v8

    if-lez v1, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 15100
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15105
    :cond_b
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v5, Lfcm$11;

    invoke-direct {v5, p0}, Lfcm$11;-><init>(Lfcm;)V

    const-class v6, Lcma;

    iget-object v7, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-interface {v1, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v4, v3, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 429
    .local v0, "id":I
    sget v1, Lezg$h;->item_circle_like:I

    if-ne v0, v1, :cond_3

    .line 4471
    iget-boolean v1, p0, Lfcm;->K:Z

    if-nez v1, :cond_0

    .line 4474
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 4475
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfcm;->K:Z

    .line 4476
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v2, v4, v5}, Lfcn;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4477
    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 4632
    iget-object v1, p0, Lfcm;->p:Landroid/view/View;

    if-eqz v1, :cond_0

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 4636
    :cond_1
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 4637
    new-instance v4, Lfcm$9;

    invoke-direct {v4, p0, v1, v7}, Lfcm$9;-><init>(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcov;)V

    const-class v1, Lcma;

    iget-object v5, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-static {v4, v1, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 5036
    sget-object v4, Lfdm$a;->a:Lfdk;

    .line 4669
    invoke-interface {v4, v2, v3, v1}, Lfdk;->b(JLcma;)V

    goto :goto_0

    .line 4479
    :cond_2
    iget-object v2, p0, Lfcm;->I:Lcom/alibaba/android/user/connection/anim/GoodView;

    iget-object v3, p0, Lfcm;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/connection/anim/GoodView;->a(Landroid/view/View;)V

    .line 5575
    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 6036
    sget-object v2, Lfdm$a;->a:Lfdk;

    .line 5579
    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v6, Lfcm$8;

    invoke-direct {v6, p0, v7}, Lfcm$8;-><init>(Lfcm;Lcov;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-interface {v1, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v4, v5, v3, v1}, Lfdk;->a(JLjava/lang/String;Lcma;)V

    goto :goto_0

    .line 431
    :cond_3
    sget v1, Lezg$h;->item_circle_avatar:I

    if-eq v0, v1, :cond_4

    sget v1, Lezg$h;->item_circle_name:I

    if-ne v0, v1, :cond_6

    .line 6485
    :cond_4
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 6486
    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 6487
    if-nez v1, :cond_5

    .line 6488
    const-string/jumbo v1, "Circle"

    const-string/jumbo v2, "CircleTag"

    const-string/jumbo v3, "circle click on avatar, but has no user object"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6492
    :cond_5
    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-virtual {p0, v2, v3}, Lfcm;->a(J)V

    goto :goto_0

    .line 433
    :cond_6
    sget v1, Lezg$h;->item_circle_cmt:I

    if-ne v0, v1, :cond_7

    .line 6545
    iget-object v1, p0, Lfcm;->h:Lfcm$b;

    if-eqz v1, :cond_0

    .line 6546
    iget-object v1, p0, Lfcm;->h:Lfcm$b;

    iget-object v2, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {p0}, Lfcm;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v7, v3}, Lfcm$b;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V

    goto :goto_0

    .line 435
    :cond_7
    sget v1, Lezg$h;->item_circle_delete:I

    if-ne v0, v1, :cond_8

    .line 7506
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lezg$l;->dt_circle_delete_for_sure:I

    .line 7507
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_circle_cancel:I

    new-instance v3, Lfcm$7;

    invoke-direct {v3, p0}, Lfcm$7;-><init>(Lfcm;)V

    .line 7508
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_circle_action_delete:I

    new-instance v3, Lfcm$6;

    invoke-direct {v3, p0}, Lfcm$6;-><init>(Lfcm;)V

    .line 7514
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 7530
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 437
    :cond_8
    iget-object v1, p0, Lfcm;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 439
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isShielded()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lfcm;->e:Z

    if-eqz v1, :cond_0

    :cond_9
    iget-boolean v1, p0, Lfcm;->d:Z

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lfcm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto/16 :goto_0

    .line 444
    :cond_a
    sget v1, Lezg$h;->shield_pull:I

    if-ne v0, v1, :cond_b

    .line 8496
    iget-object v1, p0, Lfcm;->A:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8500
    iget-object v2, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-boolean v1, p0, Lfcm;->d:Z

    .line 9217
    invoke-static {v2, v1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 9221
    new-instance v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$a;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$a;-><init>()V

    .line 8502
    :goto_1
    iget-object v2, p0, Lfcm;->a:Landroid/app/Activity;

    iget-object v3, p0, Lfcm;->A:Landroid/view/View;

    iget-object v4, p0, Lfcm;->g:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation;->a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;)V

    goto/16 :goto_0

    .line 9223
    :pswitch_0
    new-instance v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$b;

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$b;-><init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_1

    .line 9225
    :pswitch_1
    new-instance v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$c;

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$c;-><init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_1

    .line 446
    :cond_b
    sget v1, Lezg$h;->location_tips:I

    if-ne v0, v1, :cond_0

    .line 9452
    iget-object v1, p0, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 9453
    if-eqz v1, :cond_0

    .line 9457
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9458
    const-string/jumbo v3, "location_latitude"

    iget v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 9459
    const-string/jumbo v3, "location_longitude"

    iget v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 9460
    const-string/jumbo v3, "location_text"

    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9462
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 9463
    sget v3, Lezg$g;->msg_select_location_mark:I

    iput v3, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 9464
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 9465
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 9466
    const-string/jumbo v3, "location_select_marker"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9467
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v3, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 9217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    .line 3307
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 3308
    check-cast p1, Landroid/widget/TextView;

    .line 3309
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v0, v1

    .line 284
    .local v0, "summaryText":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 302
    :goto_2
    return v1

    .line 3310
    .end local v0    # "summaryText":Ljava/lang/String;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v4, p1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v4, :cond_3

    .line 3311
    check-cast p1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 3312
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 3313
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    .restart local v0    # "summaryText":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Lfcm;->a:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v4, v3, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lfcm;->a:Landroid/app/Activity;

    sget v6, Lezg$l;->and_chat_menu_copy:I

    .line 288
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v2, Lfcm$1;

    invoke-direct {v2, p0, v0}, Lfcm$1;-><init>(Lfcm;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v1, v3

    .line 302
    goto :goto_2

    .end local v0    # "summaryText":Ljava/lang/String;
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
