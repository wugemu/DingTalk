.class public final Lgac;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgac$b;,
        Lgac$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lgac$a;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lgic;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lgiy;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lgiy;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:J

.field public h:I

.field public i:Landroid/app/Activity;

.field public j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->b:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->n:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->o:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->c:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->d:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->p:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->q:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->r:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgac;->s:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method static synthetic a(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2
    .param p1, "tvSize"    # Landroid/widget/TextView;
    .param p2, "size"    # J

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 623
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 7046
    invoke-static {p2, p3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lgac;->m:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_no_file:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;I)V
    .locals 10
    .param p1, "orgEmployee"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "viewHolder"    # Lgac$b;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 399
    iget v0, p0, Lgac;->j:I

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lgac;->c:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lgac;->j:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lgac;->d:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 400
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    :cond_1
    iget-object v0, p2, Lgac$b;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1, p3}, Lgac;->a(Lgac$b;JI)V

    .line 403
    iget-object v0, p0, Lgac;->a:Lgac$a;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lgac;->a:Lgac$a;

    iget-object v1, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lgac$a;->a_(I)V

    .line 488
    :cond_2
    :goto_0
    return-void

    .line 409
    :cond_3
    iget-object v0, p2, Lgac$b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 412
    iget-object v0, p2, Lgac$b;->m:Landroid/widget/LinearLayout;

    new-array v1, v9, [Ljava/lang/String;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string/jumbo v2, "_"

    aput-object v2, v1, v4

    iget v2, p0, Lgac;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 414
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lgac$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lgac$5;-><init>(Lgac;Lgac$b;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    const-class v3, Lcma;

    iget-object v1, p0, Lgac;->m:Landroid/content/Context;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 487
    .local v6, "listener":Lcma;, "Lcma<Ljava/util/List<Lgiy;>;>;"
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget v7, p0, Lgac;->j:I

    .line 4687
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    .line 4689
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne v7, v9, :cond_4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lgop$8;

    invoke-direct {v5, v6}, Lgop$8;-><init>(Lcma;)V

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;->getOrgConversations(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V
    .locals 6
    .param p1, "orgEmployee"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "viewHolder"    # Lgac$b;
    .param p3, "orgVisible"    # Z
    .param p4, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 296
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZZI)V

    .line 297
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZZI)V
    .locals 9
    .param p1, "orgEmployee"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "viewHolder"    # Lgac$b;
    .param p3, "orgVisible"    # Z
    .param p4, "publicVisible"    # Z
    .param p5, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 300
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-nez p3, :cond_2

    .line 305
    iget-object v0, p2, Lgac$b;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p2, Lgac$b;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p2, Lgac$b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p2, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p2, Lgac$b;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lgac$2;

    invoke-direct {v1, p0}, Lgac$2;-><init>(Lgac;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p2, Lgac$b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 318
    .local v6, "orgId":J
    iget-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p2, Lgac$b;->o:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->alm_cspace_arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v0, p2, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    invoke-direct {p0, p1, p2, p5}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;I)V

    .line 327
    :goto_1
    iget-object v0, p2, Lgac$b;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p2, Lgac$b;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v8, p2, Lgac$b;->n:Landroid/widget/RelativeLayout;

    new-instance v0, Lgac$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lgac$3;-><init>(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-boolean v0, p0, Lgac;->t:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    .line 336
    iput-boolean v4, p0, Lgac;->t:Z

    .line 337
    invoke-direct {p0, p1, p2, v4, p5}, Lgac;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p2, Lgac$b;->o:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->alm_cspace_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v0, p2, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Lgac$b;JI)V
    .locals 24
    .param p1, "viewHolder"    # Lgac$b;
    .param p2, "orgId"    # J
    .param p4, "position"    # I

    .prologue
    .line 498
    .line 5491
    move-object/from16 v0, p1

    iget-object v3, v0, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 5492
    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 5493
    move-object/from16 v0, p1

    iget-object v4, v0, Lgac$b;->m:Landroid/widget/LinearLayout;

    const/4 v6, 0x2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lgac;->j:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lgac;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 505
    .local v11, "groupModels":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    :goto_0
    if-eqz v11, :cond_c

    .line 508
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgiy;

    .line 509
    .local v8, "groupModel":Lgiy;
    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 512
    invoke-static {v8}, Lgps;->a(Lgiy;)Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "spaceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lgac;->m:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lfzs$g;->cspace_group_sub_item:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 515
    .local v19, "view":Landroid/view/View;
    sget v3, Lfzs$f;->img_icon:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 516
    .local v12, "icon":Landroid/widget/ImageView;
    sget v3, Lfzs$f;->tv_name:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 517
    .local v16, "tvName":Landroid/widget/TextView;
    sget v3, Lfzs$f;->tv_safe_mode:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 518
    .local v17, "tvSafeFlag":Landroid/widget/TextView;
    sget v3, Lfzs$f;->tv_time:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 519
    .local v18, "tvTime":Landroid/widget/TextView;
    sget v3, Lfzs$f;->tv_capacity:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 520
    .local v13, "tvCapacity":Landroid/widget/TextView;
    sget v3, Lfzs$f;->divider_line:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 521
    .local v10, "dividerLine":Landroid/view/View;
    sget v3, Lfzs$f;->bottom_line:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 523
    .local v2, "bottomLine":Landroid/view/View;
    invoke-interface {v11, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 524
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5696
    :goto_2
    if-eqz v8, :cond_2

    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    if-nez v3, :cond_5

    .line 533
    :cond_2
    :goto_3
    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v4, "S_M_T"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 535
    :try_start_0
    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v4, "S_M_T"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 536
    .local v14, "modifyTime":J
    invoke-static {v14, v15}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v14    # "modifyTime":J
    :goto_4
    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v4, "S_U_Q"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 545
    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v4, "S_U_Q"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 546
    .local v9, "capacity":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v7}, Lgac;->a(Landroid/widget/TextView;J)V

    .line 550
    .end local v9    # "capacity":Ljava/lang/String;
    :goto_5
    iget-object v3, v8, Lgiy;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    new-instance v3, Lgac$6;

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lgac$6;-><init>(Lgac;Ljava/lang/String;JLgiy;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    move-object/from16 v0, p1

    iget-object v3, v0, Lgac$b;->m:Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 503
    .end local v2    # "bottomLine":Landroid/view/View;
    .end local v5    # "spaceId":Ljava/lang/String;
    .end local v8    # "groupModel":Lgiy;
    .end local v10    # "dividerLine":Landroid/view/View;
    .end local v11    # "groupModels":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    .end local v12    # "icon":Landroid/widget/ImageView;
    .end local v13    # "tvCapacity":Landroid/widget/TextView;
    .end local v16    # "tvName":Landroid/widget/TextView;
    .end local v17    # "tvSafeFlag":Landroid/widget/TextView;
    .end local v18    # "tvTime":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lgac;->c:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .restart local v11    # "groupModels":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    goto/16 :goto_0

    .line 527
    .restart local v2    # "bottomLine":Landroid/view/View;
    .restart local v5    # "spaceId":Ljava/lang/String;
    .restart local v8    # "groupModel":Lgiy;
    .restart local v10    # "dividerLine":Landroid/view/View;
    .restart local v12    # "icon":Landroid/widget/ImageView;
    .restart local v13    # "tvCapacity":Landroid/widget/TextView;
    .restart local v16    # "tvName":Landroid/widget/TextView;
    .restart local v17    # "tvSafeFlag":Landroid/widget/TextView;
    .restart local v18    # "tvTime":Landroid/widget/TextView;
    .restart local v19    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 528
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 5700
    :cond_5
    invoke-static {v8}, Lgps;->a(Lgiy;)Ljava/lang/String;

    move-result-object v3

    .line 6109
    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v22

    .line 5701
    iget-object v3, v8, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v4, "doc_readonly"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 5702
    iget-object v4, v8, Lgiy;->l:Ljava/lang/Long;

    if-nez v4, :cond_7

    const-wide/16 v6, 0x0

    .line 5703
    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lgpt;->a(Ljava/lang/Long;)Z

    move-result v4

    .line 5705
    move-object/from16 v0, p0

    iget-object v6, v0, Lgac;->a:Lgac$a;

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v3, v7}, Lgac$a;->a(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 5707
    move-object/from16 v0, p0

    iget v6, v0, Lgac;->h:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_8

    :cond_6
    const/4 v3, 0x1

    .line 5708
    :goto_7
    invoke-static {v12, v3}, Lgpk;->b(Landroid/view/View;Z)V

    .line 5709
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lgpk;->b(Landroid/view/View;Z)V

    .line 5710
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lgpk;->b(Landroid/view/View;Z)V

    .line 5711
    invoke-static {v13, v3}, Lgpk;->b(Landroid/view/View;Z)V

    .line 5712
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lgpk;->b(Landroid/view/View;Z)V

    .line 5713
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 5702
    :cond_7
    iget-object v4, v8, Lgiy;->l:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_6

    .line 5707
    :cond_8
    const/4 v3, 0x0

    goto :goto_7

    :catch_0
    move-exception v3

    .line 542
    :cond_9
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 548
    :cond_a
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v7}, Lgac;->a(Landroid/widget/TextView;J)V

    goto/16 :goto_5

    .line 568
    .end local v2    # "bottomLine":Landroid/view/View;
    .end local v5    # "spaceId":Ljava/lang/String;
    .end local v8    # "groupModel":Lgiy;
    .end local v10    # "dividerLine":Landroid/view/View;
    .end local v12    # "icon":Landroid/widget/ImageView;
    .end local v13    # "tvCapacity":Landroid/widget/TextView;
    .end local v16    # "tvName":Landroid/widget/TextView;
    .end local v17    # "tvSafeFlag":Landroid/widget/TextView;
    .end local v18    # "tvTime":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lgac;->a:Lgac$a;

    if-eqz v3, :cond_c

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lgac;->a:Lgac$a;

    move/from16 v0, p4

    invoke-interface {v3, v0}, Lgac$a;->a(I)V

    .line 572
    :cond_c
    return-void
.end method

.method static synthetic a(Lgac;Landroid/widget/TextView;J)V
    .locals 0
    .param p0, "x0"    # Lgac;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lgac;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic a(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V
    .locals 0
    .param p0, "x0"    # Lgac;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Lgac$b;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    return-void
.end method

.method static synthetic a(Lgac;Lgac$b;JLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lgac;
    .param p1, "x1"    # Lgac$b;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p5}, Lgac;->a(Lgac$b;JI)V

    return-void
.end method

.method static synthetic b(Lgac;)Lgac$a;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->a:Lgac$a;

    return-object v0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V
    .locals 8
    .param p1, "orgEmployee"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "viewHolder"    # Lgac$b;
    .param p3, "publicVisible"    # Z
    .param p4, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4576
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 349
    .local v6, "orgId":J
    iget-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p2, Lgac$b;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p2, Lgac$b;->o:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->alm_cspace_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    :goto_1
    iget-object v0, p0, Lgac;->a:Lgac$a;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lgac;->a:Lgac$a;

    iget-object v1, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lgac$a;->a_(I)V

    .line 392
    :cond_2
    iget-boolean v0, p0, Lgac;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgac;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgac;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 393
    iput-boolean v4, p0, Lgac;->u:Z

    .line 394
    iget-object v2, p0, Lgac;->k:Ljava/util/List;

    .line 4575
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4578
    new-instance v0, Lglg;

    iget-object v1, p0, Lgac;->m:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 4579
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lgac$7;

    invoke-direct {v5, p0}, Lgac$7;-><init>(Lgac;)V

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V

    .line 4615
    invoke-virtual {v0}, Lglg;->a()V

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lgac;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p2, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p2, Lgac$b;->o:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->alm_cspace_arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    iget-object v0, p2, Lgac$b;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lgac$4;

    invoke-direct {v1, p0, p3, p1}, Lgac$4;-><init>(Lgac;ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-direct {p0, p1, p2, p4}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;I)V

    goto :goto_1
.end method

.method static synthetic b(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V
    .locals 0
    .param p0, "x0"    # Lgac;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Lgac$b;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lgac;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    return-void
.end method

.method static synthetic c(Lgac;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lgac;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lgac;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lgac;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lgac;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->s:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic l(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic m(Lgac;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgac;

    .prologue
    .line 59
    iget-object v0, p0, Lgac;->p:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    if-nez p2, :cond_3

    .line 164
    new-instance v4, Lgac$b;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lgac$b;-><init>(Lgac;)V

    .line 165
    .local v4, "viewHolder":Lgac$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lfzs$g;->cspace_share_item:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 166
    sget v2, Lfzs$f;->img_share_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lgac$b;->a:Landroid/widget/ImageView;

    .line 167
    sget v2, Lfzs$f;->tv_org_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->b:Landroid/widget/TextView;

    .line 168
    sget v2, Lfzs$f;->tv_share_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->j:Landroid/widget/TextView;

    .line 169
    sget v2, Lfzs$f;->tv_org_capacity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->c:Landroid/widget/TextView;

    .line 170
    sget v2, Lfzs$f;->rl_org_public:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v4, Lgac$b;->d:Landroid/widget/RelativeLayout;

    .line 171
    sget v2, Lfzs$f;->tv_share_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->e:Landroid/widget/TextView;

    .line 172
    sget v2, Lfzs$f;->tv_cspace_org_auth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->l:Landroid/widget/TextView;

    .line 173
    sget v2, Lfzs$f;->img_org_not_auth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lgac$b;->k:Landroid/widget/ImageView;

    .line 174
    sget v2, Lfzs$f;->ll_sub_container:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lgac$b;->m:Landroid/widget/LinearLayout;

    .line 175
    sget v2, Lfzs$f;->rl_org:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v4, Lgac$b;->n:Landroid/widget/RelativeLayout;

    .line 176
    sget v2, Lfzs$f;->img_arrow:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lgac$b;->o:Landroid/widget/ImageView;

    .line 177
    sget v2, Lfzs$f;->tv_public_capacity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->f:Landroid/widget/TextView;

    .line 178
    sget v2, Lfzs$f;->progress:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v4, Lgac$b;->p:Landroid/widget/ProgressBar;

    .line 179
    sget v2, Lfzs$f;->img_org_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lgac$b;->g:Landroid/widget/ImageView;

    .line 180
    sget v2, Lfzs$f;->tv_share_tip:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->h:Landroid/widget/TextView;

    .line 181
    sget v2, Lfzs$f;->tv_safe_mode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lgac$b;->i:Landroid/widget/TextView;

    .line 182
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->l:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 188
    .local v3, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_2

    .line 191
    iget-object v2, v4, Lgac$b;->b:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, v4, Lgac$b;->g:Landroid/widget/ImageView;

    sget v5, Lfzs$e;->cspace_default_org_icon:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lgac;->h:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 208
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_9

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->b:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->b:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgic;

    .line 210
    .local v13, "spaceUpdateInfo":Lgic;
    if-eqz v13, :cond_8

    .line 211
    iget-object v2, v4, Lgac$b;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgac;->m:Landroid/content/Context;

    sget v15, Lfzs$h;->cspace_capacity:I

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v6, v13, Lgic;->f:Ljava/lang/Long;

    if-eqz v6, :cond_5

    iget-object v6, v13, Lgic;->f:Ljava/lang/Long;

    .line 212
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1046
    :goto_2
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 212
    aput-object v6, v16, v17

    const/16 v17, 0x1

    iget-object v6, v13, Lgic;->e:Ljava/lang/Long;

    if-eqz v6, :cond_6

    iget-object v6, v13, Lgic;->e:Ljava/lang/Long;

    .line 213
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2046
    :goto_3
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 213
    aput-object v6, v16, v17

    .line 211
    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, v4, Lgac$b;->e:Landroid/widget/TextView;

    iget-object v5, v13, Lgic;->b:Ljava/lang/Long;

    if-eqz v5, :cond_7

    iget-object v5, v13, Lgic;->b:Ljava/lang/Long;

    .line 215
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_4
    invoke-static {v6, v7}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .end local v13    # "spaceUpdateInfo":Lgic;
    :goto_5
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "shareSpaceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->r:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 228
    iget-object v5, v4, Lgac$b;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->r:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lgac;->a(Landroid/widget/TextView;J)V

    .line 232
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->p:Ljava/util/HashMap;

    iget-object v5, v4, Lgac$b;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v12    # "shareSpaceId":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lgac;->h:I

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lgac;->h:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_c

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgac;->f:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-wide v6, v0, Lgac;->g:J

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    cmp-long v2, v6, v16

    if-eqz v2, :cond_b

    .line 239
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v5, "f_cspace_send_other_org_file_enable"

    .line 2083
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v11

    .line 241
    .local v11, "saveToOtherOrg":Z
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v11, v1}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    .line 289
    .end local v11    # "saveToOtherOrg":Z
    :goto_7
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lfzv;->a(Ljava/lang/Long;)Z

    move-result v2

    .line 3717
    if-eqz v4, :cond_2

    .line 3721
    iget-object v5, v4, Lgac$b;->i:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 3723
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-nez v5, :cond_10

    .line 291
    :cond_2
    :goto_8
    return-object p2

    .line 184
    .end local v3    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v4    # "viewHolder":Lgac$b;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgac$b;

    .restart local v4    # "viewHolder":Lgac$b;
    goto/16 :goto_0

    .line 197
    .restart local v3    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    const-string/jumbo v2, "IMAGE"

    .line 198
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 199
    .local v10, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v14

    .line 200
    .local v14, "strategy":Lhcj;
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    sget v5, Lcib;->a:I

    sget v6, Lcib;->a:I

    invoke-virtual {v14, v2, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "iconUrl":Ljava/lang/String;
    iget-object v2, v4, Lgac$b;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-interface {v10, v2, v8, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1

    .line 212
    .end local v8    # "iconUrl":Ljava/lang/String;
    .end local v10    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v14    # "strategy":Lhcj;
    .restart local v13    # "spaceUpdateInfo":Lgic;
    :cond_5
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    .line 213
    :cond_6
    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 215
    :cond_7
    const-wide/16 v6, 0x0

    goto/16 :goto_4

    .line 217
    :cond_8
    iget-object v2, v4, Lgac$b;->c:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, v4, Lgac$b;->e:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 221
    .end local v13    # "spaceUpdateInfo":Lgic;
    :cond_9
    iget-object v2, v4, Lgac$b;->c:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, v4, Lgac$b;->e:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 230
    .restart local v12    # "shareSpaceId":Ljava/lang/String;
    :cond_a
    iget-object v2, v4, Lgac$b;->f:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 244
    .end local v12    # "shareSpaceId":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZZI)V

    goto/16 :goto_7

    .line 247
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lgac;->h:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_f

    .line 248
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v5, "f_cspace_send_other_org_file_enable"

    .line 3083
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 248
    if-eqz v2, :cond_d

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->n:Ljava/util/HashMap;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v2, v1}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    goto/16 :goto_7

    .line 252
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->n:Ljava/util/HashMap;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->n:Ljava/util/HashMap;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v2, v1}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    goto/16 :goto_7

    .line 256
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v2, v1}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    .line 258
    iget-object v2, v4, Lgac$b;->n:Landroid/widget/RelativeLayout;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 259
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lgac$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v6, v0, v4, v3, v1}, Lgac$1;-><init>(Lgac;Lgac$b;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    const-class v7, Lcma;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgac;->m:Landroid/content/Context;

    check-cast v5, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v2, v6, v7, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 283
    .local v9, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgac;->i:Landroid/app/Activity;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v6, v7, v9}, Lfzu;->a(Landroid/app/Activity;JLcma;)V

    goto/16 :goto_7

    .line 286
    .end local v9    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_f
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZZI)V

    goto/16 :goto_7

    .line 3727
    :cond_10
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 3729
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v6

    invoke-virtual {v6, v5}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 3730
    iget-object v6, v4, Lgac$b;->h:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lgpk;->a(Landroid/view/View;I)V

    .line 3735
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lgac;->a:Lgac$a;

    iget-object v7, v4, Lgac$b;->i:Landroid/widget/TextView;

    invoke-interface {v6, v7, v2, v5}, Lgac$a;->a(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 3737
    invoke-static {}, Lgpz;->a()Lgpz;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Lgpz;->c(J)Z

    move-result v5

    .line 3739
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lfzv;->a(Ljava/lang/String;Z)V

    .line 3741
    move-object/from16 v0, p0

    iget v6, v0, Lgac;->h:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    if-eqz v2, :cond_11

    if-eqz v5, :cond_13

    :cond_11
    const/4 v2, 0x1

    .line 3742
    :goto_a
    iget-object v5, v4, Lgac$b;->a:Landroid/widget/ImageView;

    invoke-static {v5, v2}, Lgpk;->b(Landroid/view/View;Z)V

    .line 3743
    iget-object v5, v4, Lgac$b;->h:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lgpk;->b(Landroid/view/View;Z)V

    .line 3744
    iget-object v5, v4, Lgac$b;->j:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lgpk;->b(Landroid/view/View;Z)V

    .line 3745
    iget-object v5, v4, Lgac$b;->f:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lgpk;->b(Landroid/view/View;Z)V

    .line 3746
    iget-object v5, v4, Lgac$b;->e:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lgpk;->b(Landroid/view/View;Z)V

    .line 3747
    iget-object v5, v4, Lgac$b;->i:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lgpk;->b(Landroid/view/View;Z)V

    goto/16 :goto_8

    .line 3732
    :cond_12
    iget-object v6, v4, Lgac$b;->h:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_9

    .line 3741
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method
