.class public Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "MyCustomerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public b:Lfmb;

.field public c:Lfhx;

.field public d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field private f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lfma;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field private m:Lfmk;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Landroid/widget/TextView;

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->i:I

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->s:Z

    .line 106
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 189
    new-instance v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$3;-><init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;
    .param p1, "x1"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Ljava/util/List;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 9
    .param p2, "getMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->s:Z

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->r:Ljava/util/List;

    .line 237
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b(Z)V

    .line 238
    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->j:Ljava/lang/String;

    .line 239
    .local v3, "staffId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->m:Lfmk;

    iget-wide v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k:J

    iget-object v5, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    if-eqz p2, :cond_1

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->n:J

    :goto_0
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c(Z)Lcma;

    move-result-object v8

    move-object v4, p1

    invoke-interface/range {v0 .. v8}, Lfmk;->a(JLjava/lang/String;Ljava/util/List;Lcom/alibaba/android/user/crm/service/CrmCustomerListType;JLcma;)V

    .line 243
    return-void

    .line 242
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method private c(Z)Lcma;
    .locals 4
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 246
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;-><init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Z)V

    const-class v2, Lcma;

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 246
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lcom/alibaba/android/user/crm/service/CrmCustomerListType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lfma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lfmb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->n:J

    return-wide v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 66
    .line 3300
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    invoke-virtual {v0}, Lfma;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    invoke-virtual {v0}, Lfma;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    .line 3302
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3303
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3304
    iget-boolean v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->s:Z

    if-eqz v1, :cond_1

    .line 3305
    sget v1, Lezg$l;->empty_filter_customer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3309
    :goto_0
    return-void

    .line 3307
    :cond_1
    sget v1, Lezg$l;->empty_no_customer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3310
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    .line 3311
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 224
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->r:Ljava/util/List;

    .line 226
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Z)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 9
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 210
    iput-boolean v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->s:Z

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v4, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->j:Ljava/lang/String;

    .line 213
    .local v4, "staffId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->m:Lfmk;

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k:J

    iget-object v5, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    if-eqz p1, :cond_1

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->n:J

    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c(Z)Lcma;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lfmk;->a(JLjava/lang/String;Lcom/alibaba/android/user/crm/service/CrmCustomerListType;JLcma;)V

    .line 217
    return-void

    .line 216
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4
    .param p1, "showBottomAction"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->btn_tips:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->btn_add_friends:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->tv_how_to_use:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    return-void

    :cond_0
    move v0, v2

    .line 316
    goto :goto_0

    :cond_1
    move v0, v2

    .line 317
    goto :goto_1

    :cond_2
    move v1, v2

    .line 318
    goto :goto_2
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 322
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 323
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Z)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    sget v1, Lezg$l;->who_customer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->q:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfmb;->a(Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    sget v1, Lezg$l;->my_customer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfmb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 350
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Z)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    sget v1, Lezg$l;->dt_user_crm_free_customer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfmb;->a(Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    new-instance v1, Lfma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->i:I

    iget-object v4, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c:Lfhx;

    invoke-direct {v1, v2, v3, v4}, Lfma;-><init>(Landroid/app/Activity;ILfhx;)V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    new-instance v2, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$2;-><init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    .line 1148
    iput-object v2, v1, Lfma;->a:Lfmc;

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->header_title:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "headerTitle":Landroid/view/View;
    sget v1, Lezg$h;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->t:Landroid/widget/TextView;

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->addHeaderView(Landroid/view/View;)V

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k:J

    invoke-virtual {v1, v2, v3}, Lccr;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 177
    invoke-static {}, Lfml;->a()Lfmk;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->m:Lfmk;

    .line 1184
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1185
    const-string/jumbo v2, "action_crm_client_refresh"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1201
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g()V

    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 360
    .local v0, "vid":I
    sget v1, Lezg$h;->tv_how_to_use:I

    if-ne v0, v1, :cond_1

    .line 361
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/crmintroduction"

    invoke-virtual {v1, v2, v3, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v1, "crm_clientlistblank_help_click"

    const-string/jumbo v2, "org_id=%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    sget v1, Lezg$h;->btn_add_friends:I

    if-ne v0, v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/add_customer.html"

    new-instance v3, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$5;-><init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 371
    const-string/jumbo v1, "crm_clientlistblank_add_contack_click"

    const-string/jumbo v2, "org_id=%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 2315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->i:I

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "staff_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->j:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k:J

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->p:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->o:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->q:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    new-instance v2, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;-><init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnScrollChange(Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->ll_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g:Landroid/widget/LinearLayout;

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->tv_how_to_use:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, "guideView":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->btn_add_friends:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->layout_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->I:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h:Lfma;

    const/4 v1, 0x0

    .line 3148
    iput-object v1, v0, Lfma;->a:Lfmc;

    .line 389
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseFragment;->onDestroy()V

    .line 390
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lezg$j;->customer_list_fragment:I

    return v0
.end method
