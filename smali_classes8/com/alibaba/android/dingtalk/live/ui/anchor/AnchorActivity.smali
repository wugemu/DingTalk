.class public Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AnchorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxn$b;
.implements Lbxw;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;,
        Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

.field private P:Landroid/os/Handler;

.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/taobao/taolive/sdk/component/ChatFrame;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

.field private v:Ljjx;

.field private w:Lbxn$a;

.field private x:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

.field private y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

.field private z:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    .line 148
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    .line 1232
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->s()V

    return-void
.end method

.method static synthetic F(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    .line 26222
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v0, :cond_0

    .line 26225
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 26226
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljjx;->c(Z)V

    :cond_0
    :goto_0
    return-void

    .line 26228
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljjx;->c(Z)V

    goto :goto_0
.end method

.method static synthetic G(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->r()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->x:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Ljjx;)Ljjx;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Ljjx;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    return-object p1
.end method

.method private a(IIZ)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "backgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 615
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 617
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a:Landroid/view/View;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 618
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(IIZ)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "callStatus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 821
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    .line 16504
    iget-boolean v2, v2, Ljjx;->d:Z

    .line 821
    if-eqz v2, :cond_0

    .line 822
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    .line 17253
    iget-object v1, v2, Lbtq;->c:Ljava/lang/String;

    .line 823
    .local v1, "peerUserId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljjx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    if-eqz v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    .end local v1    # "peerUserId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "endLinkMic failed, error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18013
    const-string/jumbo v3, "live"

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->K:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->K:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->G:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->x:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->z:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->z:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "disableOrientationEventListener failed, error="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 312
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 311
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    .line 24406
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v0, :cond_0

    .line 24410
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    sget v0, Lbtp$e;->live_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 25213
    iput-object v0, v1, Ljjx;->b:Landroid/widget/RelativeLayout;

    .line 24411
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    invoke-virtual {v0}, Ljjx;->b()V

    .line 24412
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    const/4 v1, 0x1

    .line 26073
    iput-boolean v1, v0, Lbtq;->d:Z

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->A:I

    return v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 6022
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->a()Z

    move-result v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0}, Lbxm;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a()V

    goto :goto_0
.end method

.method private l()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-nez v1, :cond_0

    .line 362
    const-string/jumbo v1, "initData failed, mLiveInfo is null"

    .line 7013
    const-string/jumbo v2, "live"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string/jumbo v1, "initData failed, mCid is empty"

    .line 8013
    const-string/jumbo v2, "live"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    const-string/jumbo v1, "initData failed, title is empty"

    .line 9013
    const-string/jumbo v2, "live"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->I:Z

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$10;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    invoke-static {p0, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 403
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n()V

    return-void
.end method

.method private n()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v0, 0x1

    .line 457
    .local v0, "isBeautyEnabled":Z
    invoke-static {}, Lbyj;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 463
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->H:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lbyj;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    :cond_0
    const/4 v0, 0x0

    .line 468
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v2, :cond_2

    .line 471
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    invoke-virtual {v2}, Ljjx;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 472
    .local v1, "isFacebeautyEnable":Z
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 473
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    invoke-virtual {v2, v1}, Ljjx;->b(Z)V

    .line 475
    .end local v1    # "isFacebeautyEnable":Z
    :cond_2
    return-void

    .line 468
    :cond_3
    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    move v1, v3

    .line 471
    goto :goto_1
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 568
    .line 9490
    new-instance v0, Lcom/taobao/taolive/sdk/component/ChatFrame;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/taobao/taolive/sdk/component/ChatFrame;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    .line 9491
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->shareToCids:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->setLiveLinkCids(Ljava/util/List;)V

    .line 9492
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    sget v0, Lbtp$e;->stub_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onCreateView(Landroid/view/ViewStub;)V

    .line 9493
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-eqz v0, :cond_0

    .line 9494
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v0, v3}, Lcom/taobao/taolive/sdk/component/ChatFrame;->startListenMessage(Z)V

    .line 569
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n()V

    .line 570
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->w:Lbxn$a;

    invoke-interface {v0}, Lbxn$a;->b()V

    .line 571
    return-void

    .line 9496
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v0, v3}, Lcom/taobao/taolive/sdk/component/ChatFrame;->setWaitForStartSysMsg(Z)V

    .line 9497
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->startListenMessage(Z)V

    goto :goto_0
.end method

.method private p()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 574
    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C:I

    .line 575
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 579
    .local v0, "holderX":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 580
    .local v1, "holderY":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    .line 581
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 582
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 583
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 585
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$12;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 601
    return-void

    .line 578
    .line 579
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->o()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lbxn$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->w:Lbxn$a;

    return-object v0
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 682
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->x:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->x:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    invoke-virtual {v0, v1}, Ljjx;->b(Ljjx$b;)V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->x:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    .line 688
    :cond_0
    return-void
.end method

.method private r()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 837
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 838
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->p:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_live_linkmic_hands_up:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 842
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->s:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    return-void

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->p:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_lv_hands_up_counts:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 842
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->m()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private s()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    sget v0, Lbtp$g;->dt_lv_live_level_high:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget v0, Lbtp$g;->dt_lv_live_level_standard:I

    goto :goto_1
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->E:Z

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->B:I

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C:I

    return v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k()V

    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->p()V

    return-void
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->dismissLoadingDialog()V

    .line 1027
    return-void
.end method

.method public final a()V
    .locals 2
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.SYSTEM_ALERT_WINDOW"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->J:Z

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 335
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 949
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 4
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "gotoDataPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 914
    sget v0, Lbtp$g;->dt_lv_live_end:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 915
    sget v0, Lbtp$g;->dt_lv_live_ended:I

    sget v1, Lbtp$b;->taolive_live_over_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(IIZ)V

    .line 917
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 918
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)V

    .line 919
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 929
    return-void
.end method

.method public final a(J)V
    .locals 9
    .param p1, "count"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 956
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 957
    sget v4, Lbtp$a;->live_anim_praise:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 958
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 959
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 961
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 962
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21109
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 963
    sub-long v2, p1, v4

    .line 964
    .local v2, "diffCount":J
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->d:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 966
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "+"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    sget v4, Lbtp$a;->live_anim_praise_count:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 968
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$6;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 983
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 986
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "diffCount":J
    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1041
    if-nez p1, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1046
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 1047
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1048
    .local v2, "peerUserId":Ljava/lang/String;
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v3

    .line 23249
    iput-object v2, v3, Lbtq;->c:Ljava/lang/String;

    .line 1049
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v3

    const/4 v4, 0x1

    .line 23261
    iput v4, v3, Lbtq;->a:I

    .line 1050
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;-><init>()V

    .line 1051
    .local v0, "extension":Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->isLandscape:Z

    .line 1052
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->cid:Ljava/lang/String;

    .line 1053
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->liveUuid:Ljava/lang/String;

    .line 1054
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-static {v3, v0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "json":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v3, :cond_0

    .line 1056
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    .line 23454
    iput-object v2, v3, Ljjx;->c:Ljava/lang/String;

    .line 23455
    iget-object v4, v3, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v4, :cond_0

    .line 23456
    iget-object v3, v3, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v3, v2, v1}, Lcom/taobao/living/api/TBLiveStreamEngine;->startLinkLiveWithPeer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;)V
    .locals 4
    .param p1, "rspObject"    # Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 881
    const-string/jumbo v0, "onLiveStart"

    .line 19013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    if-eqz p1, :cond_0

    .line 883
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    .line 884
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;->liveUuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;->liveUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->inputStreamUrl:Ljava/lang/String;

    .line 886
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->w:Lbxn$a;

    invoke-interface {v0}, Lbxn$a;->a()V

    .line 887
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 19073
    iput-boolean v3, v0, Lbtq;->d:Z

    .line 889
    const-string/jumbo v0, "Live_GroupCreate"

    invoke-static {v0}, Lbym;->a(Ljava/lang/String;)V

    .line 891
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;)V
    .locals 4
    .param p1, "rspObject"    # Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 895
    const-string/jumbo v1, "onLiveStop"

    .line 20013
    const-string/jumbo v2, "live"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 20073
    iput-boolean v3, v1, Lbtq;->d:Z

    .line 897
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q()V

    .line 899
    if-nez p1, :cond_0

    .line 900
    .local v0, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;Z)V

    .line 901
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 20261
    iput v3, v1, Lbtq;->a:I

    .line 903
    const-string/jumbo v1, "Live_GroupEnded"

    invoke-static {v1}, Lbym;->a(Ljava/lang/String;)V

    .line 904
    return-void

    .line 899
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;Z)V
    .locals 7
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    .param p2, "notifyUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 933
    if-eqz p2, :cond_0

    .line 934
    sget v0, Lbtp$g;->dt_lv_live_end:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 936
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    .line 937
    .local v4, "anchorId":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$5;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 944
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 945
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 6
    .param p2, "clearOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 990
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 991
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 993
    :cond_0
    if-eqz p1, :cond_2

    .line 994
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 995
    .local v1, "uid":Ljava/lang/Long;
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 996
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1001
    .end local v1    # "uid":Ljava/lang/Long;
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->r()V

    .line 1002
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v4

    .line 21253
    iget-object v0, v4, Lbtq;->c:Ljava/lang/String;

    .line 1003
    .local v0, "peerUserId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 22109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1005
    .local v2, "userId":J
    if-eqz p1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1006
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v4

    const/4 v5, 0x0

    .line 22249
    iput-object v5, v4, Lbtq;->c:Ljava/lang/String;

    .line 1009
    .end local v2    # "userId":J
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    if-eqz v4, :cond_4

    .line 1010
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a(Ljava/util/List;)V

    .line 1012
    :cond_4
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1031
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->showLoadingDialog()V

    .line 1022
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1036
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 847
    return-object p0
.end method

.method public final f()Lcom/taobao/taolive/sdk/component/ChatFrame;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    return-object v0
.end method

.method public finish()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->J:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 5106
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbtq$1;

    invoke-direct {v2, v0}, Lbtq$1;-><init>(Lbtq;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final g()Ljjx;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    return-object v0
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 862
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_start_retry_message:I

    .line 863
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 864
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 870
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 877
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 908
    const-string/jumbo v0, "onPushStreamStart"

    .line 21013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget v0, Lbtp$g;->dt_lv_live_status_living:I

    sget v1, Lbtp$b;->taolive_living_color:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(IIZ)V

    .line 910
    return-void
.end method

.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 319
    invoke-static {p0, p1}, Lbxm;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;I)V

    .line 320
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 705
    :cond_0
    const-string/jumbo v0, "show_live_float_view"

    invoke-static {v0}, Lbyp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k()V

    goto :goto_0

    .line 10621
    :cond_1
    const-string/jumbo v0, "showToSmallWarningDialog"

    .line 11013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10622
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_live_switch_small_view_warning:I

    .line 10623
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$13;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 10624
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 10633
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 753
    .local v1, "id":I
    sget v3, Lbtp$e;->iv_back:I

    if-ne v1, v3, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->onBackPressed()V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    sget v3, Lbtp$e;->tv_stop:I

    if-ne v1, v3, :cond_2

    .line 756
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-eqz v3, :cond_0

    .line 757
    const-string/jumbo v3, "live_stream_stop_click"

    invoke-static {v3}, Lcps;->a(Ljava/lang/String;)V

    .line 11644
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lbtp$g;->dt_lv_stop_live_confirm:I

    .line 11645
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lbtp$g;->sure:I

    new-instance v5, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 11646
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lbtp$g;->cancel:I

    .line 11655
    invoke-virtual {v3, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 11656
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 760
    :cond_2
    sget v3, Lbtp$e;->tv_comment:I

    if-ne v1, v3, :cond_4

    .line 761
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-eqz v2, :cond_0

    .line 12637
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v2, :cond_0

    .line 12638
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v2}, Lcom/taobao/taolive/sdk/component/ChatFrame;->switchVisibility()Z

    move-result v2

    .line 12639
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    sget v2, Lbtp$g;->icon_barrage_on:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    sget v2, Lbtp$g;->icon_barrage_off:I

    goto :goto_1

    .line 764
    :cond_4
    sget v3, Lbtp$e;->tv_camera:I

    if-ne v1, v3, :cond_5

    .line 765
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    invoke-virtual {v2}, Ljjx;->e()V

    goto :goto_0

    .line 768
    :cond_5
    sget v3, Lbtp$e;->tv_link:I

    if-ne v1, v3, :cond_6

    .line 769
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$15;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$15;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 13197
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://live.dingtalk.com/live_link_list.html"

    new-instance v7, Lbwp$3;

    invoke-direct {v7, v4, v2, v3, p0}, Lbwp$3;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 782
    :cond_6
    sget v3, Lbtp$e;->tv_beauty:I

    if-ne v1, v3, :cond_8

    .line 783
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v3, :cond_0

    .line 785
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    invoke-virtual {v3}, Ljjx;->a()Z

    move-result v3

    if-nez v3, :cond_7

    .line 786
    .local v0, "beautyEnabled":Z
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 787
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    invoke-virtual {v2, v0}, Ljjx;->b(Z)V

    goto/16 :goto_0

    .end local v0    # "beautyEnabled":Z
    :cond_7
    move v0, v2

    .line 785
    goto :goto_2

    .line 789
    :cond_8
    sget v3, Lbtp$e;->tv_clarity:I

    if-ne v1, v3, :cond_9

    .line 14200
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lbtp$g;->dt_lv_live_code_level_standard:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sget v2, Lbtp$g;->dt_lv_live_code_level_high:I

    .line 14201
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 14202
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$7;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 14203
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 14218
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 791
    :cond_9
    sget v3, Lbtp$e;->layout_linkmic_call:I

    if-ne v1, v3, :cond_b

    .line 14808
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    if-eqz v3, :cond_a

    .line 14809
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->dismiss()V

    .line 14811
    :cond_a
    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    .line 14812
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    .line 15026
    iput-object p0, v2, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->a:Lbxw;

    .line 14813
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->N:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a(Ljava/util/List;)V

    .line 14814
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->show()V

    .line 14816
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->s:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 793
    :cond_b
    sget v2, Lbtp$e;->tv_linkmic_close:I

    if-ne v1, v2, :cond_0

    .line 794
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lbtp$g;->dt_live_sure_to_end_linkmic:I

    .line 795
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lbtp$g;->sure:I

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$16;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$16;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 796
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lbtp$g;->cancel:I

    .line 802
    invoke-virtual {v2, v3, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 803
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 178
    :cond_0
    sget v0, Lbtp$f;->activity_anchor:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->setContentView(I)V

    .line 1348
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_key_live_info_object"

    invoke-static {v0, v4}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 1349
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "cid"

    invoke-static {v0, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->enableLinkMic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D:Z

    .line 1351
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_save_replay"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->E:Z

    .line 1352
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_is_enable_hw_code"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->G:Z

    .line 1353
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_is_enable_hd_beauty"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->H:Z

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_is_face_beauty_open"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->I:Z

    .line 1355
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_ding_remind_type"

    invoke-static {v0, v4, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->B:I

    .line 1356
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_camera_id"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->A:I

    .line 1736
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    .line 1737
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    .line 1736
    invoke-interface {v0, v4, v6, v7, v1}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v0

    .line 1738
    if-eqz v0, :cond_7

    .line 1739
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    .line 1742
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 1743
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1744
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1745
    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v5, ")"

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1747
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1357
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->M:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    sget v0, Lbtp$g;->and_wukong_error_param_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 205
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1350
    goto/16 :goto_0

    .line 2416
    :cond_3
    sget v0, Lbtp$e;->tv_watch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b:Landroid/widget/TextView;

    .line 2417
    sget v0, Lbtp$e;->tv_praise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->c:Landroid/widget/TextView;

    .line 2418
    sget v0, Lbtp$e;->tv_praise_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->d:Landroid/widget/TextView;

    .line 2419
    sget v0, Lbtp$e;->tv_praise_count_anim:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e:Landroid/widget/TextView;

    .line 2420
    sget v0, Lbtp$e;->tv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->f:Landroid/widget/TextView;

    .line 2421
    sget v0, Lbtp$e;->tv_duration:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->h:Landroid/widget/TextView;

    .line 2422
    sget v0, Lbtp$e;->view_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a:Landroid/view/View;

    .line 2423
    sget v0, Lbtp$e;->tv_anim_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    .line 2424
    sget v0, Lbtp$e;->tv_comment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->g:Landroid/widget/TextView;

    .line 2425
    sget v0, Lbtp$e;->tv_beauty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j:Landroid/widget/TextView;

    .line 2426
    sget v0, Lbtp$e;->tv_clarity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n:Landroid/widget/TextView;

    .line 2427
    sget v0, Lbtp$e;->net_state_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->l:Landroid/widget/TextView;

    .line 2428
    sget v0, Lbtp$e;->net_state_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->m:Landroid/widget/ImageView;

    .line 2429
    sget v0, Lbtp$e;->remote_live_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->o:Landroid/widget/RelativeLayout;

    .line 2430
    sget v0, Lbtp$e;->layout_linkmic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q:Landroid/view/View;

    .line 2431
    sget v0, Lbtp$e;->layout_linkmic_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->r:Landroid/view/View;

    .line 2432
    sget v0, Lbtp$e;->view_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->s:Landroid/view/View;

    .line 2433
    sget v0, Lbtp$e;->tv_link_mic_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->p:Landroid/widget/TextView;

    .line 2435
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->r:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2437
    sget v0, Lbtp$e;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2438
    invoke-static {p0, v0}, Lbyh;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ImageView;)V

    .line 2439
    invoke-static {p0, v0}, Lbyf;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/view/View;)V

    .line 2441
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeepScreenOn(Z)V

    .line 2443
    sget v0, Lbtp$e;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2444
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2445
    invoke-static {p0, v0}, Lbyf;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/view/View;)V

    .line 2447
    sget v0, Lbtp$e;->tv_stop:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2448
    invoke-static {p0, v0}, Lbyf;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/view/View;)V

    .line 2450
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n()V

    .line 2451
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->s()V

    .line 2478
    sget v0, Lbtp$e;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2479
    sget v0, Lbtp$e;->tv_stop:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2480
    sget v0, Lbtp$e;->tv_comment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2481
    sget v0, Lbtp$e;->tv_camera:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2482
    sget v0, Lbtp$e;->tv_link:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2483
    sget v0, Lbtp$e;->tv_beauty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2484
    sget v0, Lbtp$e;->tv_clarity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2485
    sget v0, Lbtp$e;->layout_linkmic_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2486
    sget v0, Lbtp$e;->tv_linkmic_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-virtual {v0, v4, v5}, Lbtq;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 190
    new-instance v0, Lbxo;

    invoke-direct {v0, p0}, Lbxo;-><init>(Lbxn$b;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->setRequestedOrientation(I)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2502
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    invoke-virtual {v0, v1, v2, v4}, Lbxe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 199
    const-string/jumbo v0, "Anchor start live "

    .line 3013
    const-string/jumbo v1, "live"

    invoke-static {v1, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2435
    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_3

    :cond_5
    move v2, v1

    .line 192
    goto :goto_4

    .line 202
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->o()V

    goto/16 :goto_2

    :cond_7
    move-object v0, v3

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 661
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 663
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->J:Z

    if-nez v0, :cond_0

    .line 665
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->e()V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->k:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->destroy()V

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->w:Lbxn$a;

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->w:Lbxn$a;

    invoke-interface {v0}, Lbxn$a;->i()V

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->O:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->dismiss()V

    .line 677
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q()V

    .line 9691
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    if-eqz v0, :cond_4

    .line 9692
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    if-eqz v0, :cond_4

    .line 9693
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v:Ljjx;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    invoke-virtual {v0, v1}, Ljjx;->b(Ljjx$a;)V

    .line 9694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->y:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;

    .line 679
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 714
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 715
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 731
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 717
    :pswitch_0
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0, v3, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 724
    :pswitch_1
    if-eqz v0, :cond_0

    .line 725
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 214
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->d()V

    .line 217
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->u:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->p()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->m()V

    .line 3255
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->z:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    .line 3256
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->z:Landroid/view/OrientationEventListener;

    .line 3296
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->z:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    :goto_0
    return-void

    .line 3297
    :catch_0
    move-exception v0

    .line 3299
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "enableOrientationEventListener failed, error="

    aput-object v3, v1, v2

    .line 3300
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 3299
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 227
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->F:Z

    if-nez v0, :cond_1

    .line 4604
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 4605
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 4606
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->t:Landroid/animation/ObjectAnimator;

    .line 4609
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4610
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->j()V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->P:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Z)V

    .line 236
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lbxn$a;

    .line 24016
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->w:Lbxn$a;

    .line 91
    return-void
.end method
