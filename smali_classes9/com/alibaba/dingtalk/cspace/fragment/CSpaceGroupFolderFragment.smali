.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
.super Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;
.source "CSpaceGroupFolderFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment",
        "<",
        "Lgiy;",
        ">;",
        "Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;"
    }
.end annotation


# instance fields
.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/TextView;

.field private S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private T:Landroid/view/View;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Lgdh;

.field private X:J

.field private Y:Z

.field private Z:Z

.field public a:J

.field private aa:I

.field private ab:Z

.field private ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/content/BroadcastReceiver;

.field private final af:I

.field private final ag:I

.field private final ah:I

.field private final ai:I

.field public b:J

.field public c:Z

.field public d:J

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Z:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ad:Landroid/widget/TextView;

    .line 102
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->af:I

    .line 103
    const/16 v0, 0x65

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ag:I

    .line 104
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ah:I

    .line 105
    const/16 v0, 0x190

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ai:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->aa:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d:J

    return-wide p1
.end method

.method public static a(J)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 108
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;-><init>()V

    .line 109
    .local v1, "groupFolderFragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "publicView"    # Landroid/view/View;
    .param p2, "tvSafeFlag"    # Landroid/widget/TextView;
    .param p3, "iftvPublicAreaMore"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p4, "aclSettingRedDot"    # Landroid/view/View;
    .param p5, "tvPublicModifiedTime"    # Landroid/widget/TextView;
    .param p6, "tvPublicCapacityUsed"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 279
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d:J

    invoke-static {v4, v5}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 286
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b:J

    .line 2046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {p6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    sget v3, Lfzs$f;->tv_share_tip:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 2322
    :cond_2
    if-eqz p2, :cond_3

    .line 2326
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Z:Z

    if-eqz v3, :cond_5

    .line 2327
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Y:Z

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 300
    :cond_3
    :goto_2
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "authFlag":Ljava/lang/String;
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 303
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static {v0}, Lgqd;->d(Ljava/lang/String;)Z

    move-result v2

    .line 304
    .local v2, "hasSuperAccess":Z
    invoke-static {}, Lgqd;->a()Lgqd;

    const-string/jumbo v3, "readPolicy"

    invoke-static {v0, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 310
    .local v1, "hasBrowserAccess":Z
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 312
    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;ZZ)V

    invoke-virtual {p3, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "authFlag":Ljava/lang/String;
    .end local v1    # "hasBrowserAccess":Z
    .end local v2    # "hasSuperAccess":Z
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lfzs$h;->cspace_no_file:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2331
    :cond_5
    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Landroid/widget/TextView;)V

    .line 2354
    const-class v4, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 2355
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v5, v6, v3}, Lgon;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_2

    .line 306
    .restart local v0    # "authFlag":Ljava/lang/String;
    :cond_6
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->c:Z

    .line 307
    .restart local v2    # "hasSuperAccess":Z
    const/4 v1, 0x0

    .restart local v1    # "hasBrowserAccess":Z
    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Landroid/view/View;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p4, "x4"    # Landroid/view/View;
    .param p5, "x5"    # Landroid/widget/TextView;
    .param p6, "x6"    # Landroid/widget/TextView;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Landroid/view/View;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->J:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->aa:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ab:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ab:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->J:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    .line 8528
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Y:Z

    .line 8529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Z:Z

    .line 69
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Lgdh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->W:Lgdh;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->R:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->T:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->U:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->V:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final J_()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 551
    .line 3221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 3225
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->cspace_public_sub_item:I

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    .line 3226
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->tv_safe_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->R:Landroid/widget/TextView;

    .line 3227
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->if_show_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 3228
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->red_dot_acl_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->T:Landroid/view/View;

    .line 3229
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->tv_share_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->U:Landroid/widget/TextView;

    .line 3230
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->tv_public_capacity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->V:Landroid/widget/TextView;

    .line 3232
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->rl_org_space_public:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->rl_link_shares:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3234
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->ll_org_group_file_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->P:Landroid/view/View;

    .line 3236
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->R:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->T:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->U:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->V:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Landroid/view/View;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 3238
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    sget v1, Lfzs$f;->icon_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3359
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_space_red_dot_of_public_area_"

    aput-object v2, v1, v9

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3240
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->b(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v10}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3241
    invoke-static {v0, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 3244
    :cond_0
    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3262
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "cspace_link_new_enable"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3264
    invoke-static {v8, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 3265
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3275
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->Q:Landroid/view/View;

    invoke-virtual {v0, v1, v11, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 552
    :cond_1
    return-void

    .line 3272
    :cond_2
    const/16 v0, 0x8

    invoke-static {v8, v0}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 539
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a()V

    .line 540
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b(Ljava/lang/String;)V

    .line 541
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$7;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b(Landroid/view/View$OnClickListener;)V

    .line 547
    return-void
.end method

.method protected final a(I)V
    .locals 11
    .param p1, "loadType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 576
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->J:Z

    if-eqz v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    if-ne p1, v10, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ab:Z

    if-eqz v1, :cond_0

    .line 584
    :cond_2
    iput-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->J:Z

    .line 586
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    .line 589
    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    if-eq p1, v8, :cond_3

    if-ne p1, v4, :cond_4

    :cond_3
    move v6, v8

    .line 4143
    .local v6, "needReload":Z
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4144
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->J:Z

    .line 4145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4146
    const/16 v1, 0x190

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4147
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 592
    :goto_2
    if-eqz v6, :cond_0

    .line 5598
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 5602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5603
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5605
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)V

    .line 5638
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5639
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    invoke-virtual {v2, v1, v8, v0}, Lgon;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0

    .end local v6    # "needReload":Z
    :cond_4
    move v6, v0

    .line 589
    goto :goto_1

    .line 4151
    .restart local v6    # "needReload":Z
    :cond_5
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$1;

    invoke-direct {v1, p0, v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Z)V

    .line 4210
    if-eqz v6, :cond_6

    .line 4211
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->aa:I

    .line 4213
    :cond_6
    const-class v0, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcma;

    .line 4214
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->H:I

    iget v9, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->aa:I

    .line 4722
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    .line 4724
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne v5, v10, :cond_7

    move v4, v8

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lgop$9;

    invoke-direct {v5, v7}, Lgop$9;-><init>(Lcma;)V

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;->getOrgConversations(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_2
.end method

.method public final a(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 372
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(Landroid/os/Message;)V

    .line 3051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    .line 373
    if-nez v7, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->p()V

    .line 378
    if-eqz p1, :cond_0

    .line 382
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 384
    :sswitch_0
    const/4 v6, 0x0

    .line 385
    .local v6, "reload":Z
    const/4 v5, 0x0

    .line 387
    .local v5, "hasMore":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 388
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "key_is_reload"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 389
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "key_has_more"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 392
    :cond_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_5

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_5

    .line 393
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 395
    .local v1, "dpOrgConversationModels":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "allData":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    if-eqz v6, :cond_4

    .line 398
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    :goto_1
    invoke-virtual {p0, v9, v0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(ZLjava/util/List;Z)V

    .line 405
    if-eqz v6, :cond_3

    .line 406
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 409
    :cond_3
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->c()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 410
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->P:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 400
    :cond_4
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 413
    .end local v0    # "allData":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    .end local v1    # "dpOrgConversationModels":Ljava/util/List;, "Ljava/util/List<Lgiy;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->g()V

    goto :goto_0

    .line 417
    .end local v5    # "hasMore":Z
    .end local v6    # "reload":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 418
    .local v2, "errorBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_6

    .line 419
    const-string/jumbo v7, "space_request_error_code_key"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "errorCode":Ljava/lang/String;
    const-string/jumbo v7, "space_request_error_message_key"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v7, Lggr;->a:Ljava/lang/CharSequence;

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 422
    sget v7, Lfzs$h;->and_lwp_error_408:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 428
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->g()V

    goto/16 :goto_0

    .line 424
    .restart local v3    # "errorCode":Ljava/lang/String;
    .restart local v4    # "errorMessage":Ljava/lang/String;
    :cond_7
    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 431
    .end local v2    # "errorBundle":Landroid/os/Bundle;
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :sswitch_2
    sget v7, Lfzs$h;->network_no_connection:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->g()V

    goto/16 :goto_0

    .line 435
    :sswitch_3
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->c()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v9, v7, v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(ZLjava/util/List;Z)V

    goto/16 :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 1
    .param p1, "tvSafeFlag"    # Landroid/widget/TextView;
    .param p2, "isReadOnly"    # Z
    .param p3, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 453
    if-nez p1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 459
    if-eqz p2, :cond_0

    .line 463
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 465
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    sget v0, Lfzs$h;->dt_cspace_acl_safe:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 469
    :cond_2
    sget v0, Lfzs$h;->dt_space_auth_read_only:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 69
    check-cast p1, Lgiy;

    .line 7663
    if-eqz p1, :cond_1

    .line 7667
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->W:Lgdh;

    if-eqz v0, :cond_1

    .line 7668
    invoke-static {p1}, Lgps;->a(Lgiy;)Ljava/lang/String;

    move-result-object v4

    .line 7669
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_group_folder_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7671
    new-instance v5, Lcem;

    invoke-direct {v5}, Lcem;-><init>()V

    .line 7672
    iget-object v0, p1, Lgiy;->a:Ljava/lang/String;

    iput-object v0, v5, Lcem;->a:Ljava/lang/String;

    .line 7673
    iget-object v0, p1, Lgiy;->d:Ljava/lang/String;

    iput-object v0, v5, Lcem;->b:Ljava/lang/String;

    .line 7674
    iget-object v0, p1, Lgiy;->f:Ljava/util/Map;

    iput-object v0, v5, Lcem;->c:Ljava/util/Map;

    .line 7675
    iget-object v0, p1, Lgiy;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 8109
    invoke-static {v4, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 7675
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 7676
    iget-object v0, p1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v1, "doc_readonly"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 7677
    iget-object v0, p1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v2, "watermark"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 7678
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    .line 7679
    iget-wide v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    invoke-virtual {v2, v4, v8, v9}, Lfzv;->a(Ljava/lang/String;J)V

    .line 7680
    invoke-virtual {v2, v4, v1}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 7681
    invoke-virtual {v2, v4, v0}, Lfzv;->c(Ljava/lang/String;Z)V

    .line 7682
    iget-object v0, p1, Lgiy;->l:Ljava/lang/Long;

    invoke-static {v0}, Lgpt;->a(Ljava/lang/Long;)Z

    move-result v0

    invoke-virtual {v2, v4, v0}, Lfzv;->a(Ljava/lang/String;Z)V

    .line 7683
    iget-object v0, p1, Lgiy;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7684
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v0

    iget-object v1, p1, Lgiy;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lgle;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7687
    :cond_0
    invoke-static {}, Lglr;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7688
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    .line 7689
    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 7690
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 7691
    iget-object v1, p1, Lgiy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setConversationName(Ljava/lang/String;)V

    .line 7692
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setFromConversation(Z)V

    .line 7693
    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setShowUploadRemindDialog(Z)V

    .line 7694
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v6, v2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    .line 7695
    :cond_1
    :goto_0
    return-void

    .line 7698
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->W:Lgdh;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    invoke-interface/range {v1 .. v6}, Lgdh;->a(JLjava/lang/String;Lcem;I)V

    goto :goto_0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 556
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-nez v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 561
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a(Z)V

    .line 562
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c(Z)V

    goto :goto_0
.end method

.method public final f()Lgoa;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 567
    new-instance v0, Lgoa;

    invoke-direct {v0}, Lgoa;-><init>()V

    .line 568
    .local v0, "categoryParamModel":Lgoa;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgoa;->d:Z

    .line 569
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    iput-wide v2, v0, Lgoa;->f:J

    .line 570
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->e:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->g:Ljava/lang/String;

    .line 571
    return-object v0
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 645
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 646
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 647
    return-void
.end method

.method protected final h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter",
            "<",
            "Lgiy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 651
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    .line 653
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->a(I)V

    .line 654
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    .line 6158
    iput-object p0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->a:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;

    .line 655
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    .line 7043
    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->b:J

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ac:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1477
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$6;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ae:Landroid/content/BroadcastReceiver;

    .line 1502
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1503
    const-string/jumbo v1, "com.alibaba.dingtalk.space.read.only.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 128
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgdh;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lgdh;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->W:Lgdh;

    .line 136
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v1, "space_org_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->X:J

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 364
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->onDestroy()V

    .line 365
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ae:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 368
    :cond_0
    return-void
.end method
