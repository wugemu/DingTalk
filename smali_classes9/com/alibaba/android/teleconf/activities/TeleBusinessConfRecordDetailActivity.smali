.class public Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleBusinessConfRecordDetailActivity.java"

# interfaces
.implements Lexg$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private B:J

.field private C:I

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Lexg$a;

.field private G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private o:Leum;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/TextView;

.field private r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private s:Leum;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/widget/TextView;

.field private v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private w:Leum;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->C:I

    .line 103
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->D:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->E:Landroid/view/View$OnClickListener;

    .line 125
    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Lexg$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->F:Lexg$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 63
    .line 8343
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 8346
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Goto person page "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8347
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 63
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "unreadUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 316
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 320
    .local v0, "uid":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 324
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->z:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    return-object p1
.end method

.method private b(Z)V
    .locals 9
    .param p1, "rejected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "keyUserObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 243
    .local v2, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v2, :cond_0

    .line 246
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    .line 247
    iget-object v1, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 248
    .local v1, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 249
    move-object v0, v2

    .line 256
    .end local v1    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v2    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_1
    if-eqz v0, :cond_4

    .line 257
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f()V

    .line 263
    if-eqz p1, :cond_5

    .line 264
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    if-nez v3, :cond_3

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    .line 267
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v3, v8}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->h()V

    .line 280
    :cond_4
    :goto_0
    return-void

    .line 272
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    if-nez v3, :cond_6

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    .line 275
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v3, v8}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 277
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->g()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->o:Leum;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->s:Leum;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->w:Leum;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 283
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->w:Leum;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->w:Leum;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-virtual {v1, v2}, Leum;->b(Ljava/util/List;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->u:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 288
    sget v1, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "memInfoStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .end local v0    # "memInfoStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 294
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->o:Leum;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->o:Leum;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    invoke-virtual {v1, v2}, Leum;->b(Ljava/util/List;)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 299
    sget v1, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "memInfoStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .end local v0    # "memInfoStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->D:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->s:Leum;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->s:Leum;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    invoke-virtual {v1, v2}, Leum;->b(Ljava/util/List;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 310
    sget v1, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "memInfoStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .end local v0    # "memInfoStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->h()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->g()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    .line 8376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8378
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8379
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 8380
    if-eqz v0, :cond_0

    .line 8383
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 8384
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 8385
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8390
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 8391
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 8392
    if-eqz v0, :cond_2

    .line 8395
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 8396
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 8397
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8402
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 8403
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 8404
    if-eqz v0, :cond_4

    .line 8407
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 8408
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 8409
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8414
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v1
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->B:J

    return-wide v0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->C:I

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 724
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 725
    return-void
.end method

.method public final a(Leuz;)V
    .locals 8
    .param p1, "confInfo"    # Leuz;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 421
    if-nez p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-wide v2, p1, Leuz;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->z:Ljava/lang/Long;

    .line 2686
    if-nez p1, :cond_7

    .line 3657
    :goto_1
    if-nez p1, :cond_a

    .line 4595
    :cond_2
    :goto_2
    if-nez p1, :cond_11

    .line 4596
    const/4 v1, 0x0

    .line 4461
    :cond_3
    :goto_3
    add-int/lit8 v3, v1, 0x0

    .line 5533
    if-nez p1, :cond_13

    .line 5534
    const/4 v1, 0x0

    .line 4463
    :cond_4
    :goto_4
    add-int/2addr v3, v1

    .line 6471
    if-nez p1, :cond_15

    .line 6472
    const/4 v1, 0x0

    .line 4465
    :cond_5
    :goto_5
    add-int/2addr v1, v3

    .line 4466
    sget v2, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4467
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget v1, p1, Leuz;->h:I

    if-nez v1, :cond_1a

    iget-wide v2, p1, Leuz;->b:J

    .line 431
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 7332
    if-nez v1, :cond_17

    .line 7339
    :cond_6
    const/4 v1, 0x0

    .line 431
    :goto_6
    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v1, v2, :cond_1a

    .line 434
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->g:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v1, p1, Leuz;->m:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Ljava/util/List;)Z

    move-result v0

    .line 436
    .local v0, "iUnreaded":Z
    if-eqz v0, :cond_18

    .line 437
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2689
    .end local v0    # "iUnreaded":Z
    :cond_7
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2694
    const/4 v1, 0x2

    iget v2, p1, Leuz;->h:I

    if-ne v1, v2, :cond_8

    .line 2695
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->l:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2696
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->l:Landroid/widget/ImageView;

    sget v2, Leuj$h;->teleconf_business_status_ended_tag:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2697
    :cond_8
    const/4 v1, 0x3

    iget v2, p1, Leuz;->h:I

    if-ne v1, v2, :cond_9

    .line 2698
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->l:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2699
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->l:Landroid/widget/ImageView;

    sget v2, Leuj$h;->teleconf_business_status_canceled_tag:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2701
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->l:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 3661
    :cond_a
    iget-object v1, p1, Leuz;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3662
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->h:Landroid/widget/TextView;

    iget-object v2, p1, Leuz;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3667
    :goto_7
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->i:Landroid/widget/TextView;

    iget-object v2, p1, Leuz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3669
    iget-wide v2, p1, Leuz;->e:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    .line 3671
    iget-wide v2, p1, Leuz;->g:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_1c

    .line 3672
    iget-wide v2, p1, Leuz;->e:J

    iget-wide v6, p1, Leuz;->g:J

    add-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    .line 3674
    :goto_8
    const/4 v1, 0x1

    invoke-static {v4, v5, v2, v3, v1}, Leyr;->a(JJZ)Ljava/lang/String;

    move-result-object v1

    .line 3675
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3677
    iget-wide v2, p1, Leuz;->f:J

    .line 4351
    const/4 v1, -0x1

    .line 4352
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    .line 4353
    const/4 v1, -0x1

    .line 3677
    :cond_b
    :goto_9
    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->C:I

    .line 3679
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->z:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 3680
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->z:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 3681
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    goto/16 :goto_2

    .line 3664
    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->h:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_txt_conference_theme_input_hint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Leuz;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4355
    :cond_d
    const-wide/16 v4, 0xe10

    div-long v4, v2, v4

    .line 4356
    const-wide/16 v6, 0xe10

    rem-long/2addr v2, v6

    .line 4357
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v4

    if-nez v6, :cond_e

    .line 4358
    const/4 v1, 0x0

    goto :goto_9

    .line 4359
    :cond_e
    const-wide/16 v6, 0x1

    cmp-long v6, v6, v4

    if-nez v6, :cond_10

    .line 4360
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_f

    .line 4361
    const/4 v1, 0x2

    goto :goto_9

    .line 4363
    :cond_f
    const/4 v1, 0x1

    goto :goto_9

    .line 4365
    :cond_10
    const-wide/16 v2, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    .line 4366
    const/4 v1, 0x3

    goto :goto_9

    .line 4598
    :cond_11
    const/4 v1, 0x0

    .line 4599
    iget-object v2, p1, Leuz;->k:Ljava/util/List;

    if-eqz v2, :cond_12

    iget-object v2, p1, Leuz;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 4600
    iget-object v1, p1, Leuz;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x0

    .line 4602
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 4603
    const-string/jumbo v1, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Loading accepted members information"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4604
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p1, Leuz;->k:Ljava/util/List;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 4605
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$7;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    const-class v6, Lcma;

    invoke-interface {v1, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 4604
    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    move v1, v2

    goto/16 :goto_3

    .line 4647
    :cond_12
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 4648
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 4649
    sget v2, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4650
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 5536
    :cond_13
    const/4 v1, 0x0

    .line 5537
    iget-object v2, p1, Leuz;->l:Ljava/util/List;

    if-eqz v2, :cond_14

    iget-object v2, p1, Leuz;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 5538
    iget-object v1, p1, Leuz;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x0

    .line 5540
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 5541
    const-string/jumbo v1, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "Loading rejected members information"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5542
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p1, Leuz;->l:Ljava/util/List;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 5543
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$6;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    const-class v7, Lcma;

    invoke-interface {v1, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 5542
    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    move v1, v2

    goto/16 :goto_4

    .line 5585
    :cond_14
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 5586
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->q:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 5587
    sget v2, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5588
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 6474
    :cond_15
    const/4 v1, 0x0

    .line 6475
    iget-object v2, p1, Leuz;->m:Ljava/util/List;

    if-eqz v2, :cond_16

    iget-object v2, p1, Leuz;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 6476
    iget-object v1, p1, Leuz;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x0

    .line 6478
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 6479
    const-string/jumbo v1, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "Loading unreaded members information"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6480
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p1, Leuz;->m:Ljava/util/List;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 6481
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$5;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    const-class v7, Lcma;

    invoke-interface {v1, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 6480
    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    move v1, v2

    goto/16 :goto_5

    .line 6523
    :cond_16
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 6524
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->u:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 6525
    sget v2, Leuj$l;->conf_txt_conference_members_count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6526
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 7335
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 7336
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 440
    .restart local v0    # "iUnreaded":Z
    :cond_18
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v1, p1, Leuz;->k:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 443
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_txt_conference_accepted_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 445
    :cond_19
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_txt_conference_rejected_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 448
    .end local v0    # "iUnreaded":Z
    :cond_1a
    const/4 v1, 0x2

    iget v2, p1, Leuz;->h:I

    if-eq v1, v2, :cond_1b

    const/4 v1, 0x3

    iget v2, p1, Leuz;->h:I

    if-ne v1, v2, :cond_0

    .line 450
    :cond_1b
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->g:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->d:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1c
    move-wide v2, v4

    goto/16 :goto_8
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isAccepted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 707
    if-eqz p1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_conference_accepted_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b(Z)V

    .line 720
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_conference_rejected_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b(Z)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 792
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 783
    return-void
.end method

.method public final b(Leuz;)V
    .locals 3
    .param p1, "confInfo"    # Leuz;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videocall_restart_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 734
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/businessConference/control.html"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 748
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->finish()V

    goto :goto_0
.end method

.method public final c(Leuz;)V
    .locals 3
    .param p1, "confInfo"    # Leuz;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 753
    if-nez p1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "micromeeting_restart_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 758
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/businessConference/control.html"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 772
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->finish()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    sget v0, Leuj$j;->activity_teleconf_business_conference_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->setContentView(I)V

    .line 1228
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1229
    if-eqz v0, :cond_0

    .line 1230
    const-string/jumbo v1, "conf_reservation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->y:Ljava/lang/String;

    .line 1231
    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->B:J

    .line 1232
    const-string/jumbo v1, "conf_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-nez v0, :cond_0

    .line 1234
    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 2144
    :cond_0
    sget v0, Leuj$i;->conf_reject:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b:Landroid/view/View;

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2147
    sget v0, Leuj$i;->conf_accept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->c:Landroid/view/View;

    .line 2148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2150
    sget v0, Leuj$i;->conf_restart:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->d:Landroid/widget/Button;

    .line 2151
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2152
    sget v0, Leuj$i;->conf_status_tag:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->l:Landroid/widget/ImageView;

    .line 2154
    sget v0, Leuj$i;->conf_control:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->e:Landroid/view/View;

    .line 2155
    sget v0, Leuj$i;->conf_result_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->f:Landroid/widget/TextView;

    .line 2156
    sget v0, Leuj$i;->conf_bottom_control_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->g:Landroid/view/View;

    .line 2158
    sget v0, Leuj$i;->conf_theme:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->h:Landroid/widget/TextView;

    .line 2159
    sget v0, Leuj$i;->conf_compere:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->i:Landroid/widget/TextView;

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2161
    sget v0, Leuj$i;->conf_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->j:Landroid/widget/TextView;

    .line 2162
    sget v0, Leuj$i;->conf_members_num:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->k:Landroid/widget/TextView;

    .line 2164
    sget v0, Leuj$i;->conf_members_accepted:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m:Landroid/widget/TextView;

    .line 2165
    sget v0, Leuj$i;->conf_members_accepted_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 2166
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2181
    sget v0, Leuj$i;->conf_members_rejected:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->q:Landroid/widget/TextView;

    .line 2182
    sget v0, Leuj$i;->conf_members_rejected_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 2183
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2198
    sget v0, Leuj$i;->conf_members_unread:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->u:Landroid/widget/TextView;

    .line 2199
    sget v0, Leuj$i;->conf_members_unread_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 2200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2215
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Leuj$l;->conf_txt_conference_detail_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 2217
    new-instance v0, Leum;

    invoke-direct {v0, p0}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->o:Leum;

    .line 2218
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->o:Leum;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2220
    new-instance v0, Leum;

    invoke-direct {v0, p0}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->s:Leum;

    .line 2221
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->r:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->s:Leum;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2223
    new-instance v0, Leum;

    invoke-direct {v0, p0}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->w:Leum;

    .line 2224
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->v:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->w:Leum;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    new-instance v0, Lexh;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->G:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    invoke-direct {v0, p0, p0, v1}, Lexh;-><init>(Landroid/app/Activity;Lexg$b;Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->F:Lexg$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-interface {v0, v1}, Lexg$a;->a(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 141
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lexg$a;

    .line 7777
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->F:Lexg$a;

    .line 63
    return-void
.end method
