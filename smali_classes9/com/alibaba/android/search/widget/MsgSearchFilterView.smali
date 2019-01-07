.class public Lcom/alibaba/android/search/widget/MsgSearchFilterView;
.super Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
.source "MsgSearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;,
        Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

.field private C:Landroid/content/BroadcastReceiver;

.field protected a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field protected b:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private r:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

.field private s:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

.field private t:Landroid/view/View;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private w:J

.field private x:Ljava/text/SimpleDateFormat;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;-><init>(Landroid/content/Context;)V

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_CONTACT"

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d:Ljava/lang/String;

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_GROUP"

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->e:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->x:Ljava/text/SimpleDateFormat;

    .line 80
    iput-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->z:I

    .line 85
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->C:Landroid/content/BroadcastReceiver;

    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->c()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_CONTACT"

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d:Ljava/lang/String;

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_GROUP"

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->e:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->x:Ljava/text/SimpleDateFormat;

    .line 80
    iput-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->z:I

    .line 85
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->C:Landroid/content/BroadcastReceiver;

    .line 116
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->c()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_CONTACT"

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d:Ljava/lang/String;

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_GROUP"

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->e:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->x:Ljava/text/SimpleDateFormat;

    .line 80
    iput-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->z:I

    .line 85
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->C:Landroid/content/BroadcastReceiver;

    .line 121
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->c()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 8
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 571
    .local p1, "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 572
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;

    .line 573
    .local v1, "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lemt$f;->item_search_condition_group:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 574
    .local v3, "view":Landroid/view/View;
    sget v5, Lemt$e;->avatar_view:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 575
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    iget-object v5, v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget v5, Lemt$e;->tv_group_name:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 578
    .local v2, "tvName":Landroid/widget/TextView;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 579
    iget-object v5, v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 584
    .end local v0    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v1    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    .end local v2    # "tvName":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 452
    if-nez p1, :cond_0

    .line 453
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .restart local p1    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v6

    .line 457
    .local v3, "update":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v2, "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    .line 461
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 462
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;B)V

    .line 463
    .local v1, "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->a:Ljava/lang/String;

    .line 464
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->b:Ljava/lang/String;

    .line 465
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->c:Ljava/lang/String;

    .line 466
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    .end local v2    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    .end local v3    # "update":Z
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    move v3, v5

    .line 455
    goto :goto_0

    .line 469
    .restart local v2    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    .restart local v3    # "update":Z
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v0, ""

    .line 470
    .local v0, "countHint":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->j:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->g:Landroid/view/View;

    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v5, 0x8

    :cond_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->o:Landroid/view/View;

    sget v6, Lemt$e;->ll_avatars:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v5}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 474
    iget-object v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getFilterConditions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .end local v0    # "countHint":Ljava/lang/String;
    .end local v2    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d()V

    .line 478
    return v3

    .line 469
    .restart local v2    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->dt_search_filter_sender_counts:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/util/Calendar;)Z
    .locals 10
    .param p1, "calendar"    # Ljava/util/Calendar;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    if-nez p1, :cond_0

    .line 550
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object p1

    .line 551
    invoke-virtual {p1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 553
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    move v0, v1

    .line 554
    .local v0, "updated":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    .line 556
    iget-wide v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 557
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lemt$g;->dt_search_narrow_startFrom:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->x:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    sget v1, Lemt$e;->iv_filter_time_add:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getFilterConditions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d()V

    .line 567
    return v0

    .end local v0    # "updated":Z
    :cond_2
    move v0, v2

    .line 553
    goto :goto_0

    .line 560
    .restart local v0    # "updated":Z
    :cond_3
    sget v1, Lemt$e;->iv_filter_time_add:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->i:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 482
    .local p1, "messageRecipientDataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-nez p1, :cond_0

    .line 483
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "messageRecipientDataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .restart local p1    # "messageRecipientDataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v5, 0x1

    .line 487
    .local v5, "update":Z
    :goto_0
    if-eqz v5, :cond_6

    .line 488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v3, "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    .line 491
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 492
    .local v4, "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 493
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v7, :cond_4

    .line 494
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 495
    .local v0, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    new-instance v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;B)V

    .line 496
    .local v2, "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_3

    .line 497
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->a:Ljava/lang/String;

    .line 498
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->c:Ljava/lang/String;

    .line 499
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v7, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->b:Ljava/lang/String;

    .line 500
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    .end local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    .end local v3    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    .end local v4    # "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v5    # "update":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 501
    .restart local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v2    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    .restart local v3    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    .restart local v4    # "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .restart local v5    # "update":Z
    :cond_3
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 502
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "cid"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->a:Ljava/lang/String;

    .line 503
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "title"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->c:Ljava/lang/String;

    .line 504
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "groupIcon"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->b:Ljava/lang/String;

    .line 505
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 507
    .end local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    :cond_4
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v7, :cond_1

    .line 508
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 509
    .local v6, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_1

    .line 510
    new-instance v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;B)V

    .line 511
    .restart local v2    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    iget-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->a:Ljava/lang/String;

    .line 512
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->c:Ljava/lang/String;

    .line 513
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;->b:Ljava/lang/String;

    .line 514
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 520
    .end local v2    # "filterObject":Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;
    .end local v4    # "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v6    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v1, ""

    .line 521
    .local v1, "countHint":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->k:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v8, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->h:Landroid/view/View;

    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->p:Landroid/view/View;

    sget v8, Lemt$e;->ll_avatars:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v7}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 525
    iget-object v7, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getFilterConditions()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .end local v1    # "countHint":Ljava/lang/String;
    .end local v3    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d()V

    .line 528
    return v5

    .line 520
    .restart local v3    # "filterObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/widget/MsgSearchFilterView$b;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->dt_search_filter_group_counts:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 522
    .restart local v1    # "countHint":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method

.method static synthetic c(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lemt$f;->layout_search_filter_view:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 196
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->setOrientation(I)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    sget v1, Lemt$e;->filter_root_divider:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    .line 201
    sget v1, Lemt$e;->layout_contact_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lemt$e;->iv_filter_add:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->g:Landroid/view/View;

    .line 202
    sget v1, Lemt$e;->layout_group_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lemt$e;->iv_filter_add:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->h:Landroid/view/View;

    .line 203
    sget v1, Lemt$e;->layout_contact_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->o:Landroid/view/View;

    .line 204
    sget v1, Lemt$e;->layout_group_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->p:Landroid/view/View;

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->o:Landroid/view/View;

    sget v2, Lemt$e;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lemt$g;->dt_search_category_sender:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->p:Landroid/view/View;

    sget v2, Lemt$e;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lemt$g;->dt_search_narrow_group:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    sget v1, Lemt$e;->layout_contact_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lemt$e;->tv_count:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->j:Landroid/widget/TextView;

    .line 208
    sget v1, Lemt$e;->layout_group_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lemt$e;->tv_count:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->k:Landroid/widget/TextView;

    .line 209
    sget v1, Lemt$e;->tv_filter_conditions:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->l:Landroid/widget/TextView;

    .line 210
    sget v1, Lemt$e;->tv_filter_conditions_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b:Landroid/widget/TextView;

    .line 211
    sget v1, Lemt$e;->icon_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->o:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->p:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget v1, Lemt$e;->ll_layout_start_time:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    sget v1, Lemt$e;->btn_reset:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v1, Lemt$e;->btn_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v1, Lemt$e;->tv_start_time:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->i:Landroid/widget/TextView;

    .line 220
    sget v1, Lemt$e;->tv_filter_expand:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 221
    sget v1, Lemt$e;->rl_filter_conditions:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget v1, Lemt$e;->ll_filter_root:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->m:Landroid/view/View;

    .line 223
    sget v1, Lemt$e;->fill_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->n:Landroid/view/View;

    .line 224
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->n:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a()V

    .line 242
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->C:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 533
    :try_start_0
    iget-wide v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    :cond_1
    sget v1, Lemt$e;->btn_reset:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 536
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lemt$g;->icon_filter:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 537
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 546
    :goto_0
    return-void

    .line 539
    :cond_2
    sget v1, Lemt$e;->btn_reset:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 540
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lemt$g;->icon_filter_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 541
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkResetBtnStatus error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getFilterConditions()Ljava/lang/String;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 347
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 348
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lemt$g;->dt_search_filter_sender_counts:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 350
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-wide v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_2

    .line 352
    :cond_1
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 356
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lemt$g;->dt_search_filter_group_counts:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 358
    iget-wide v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    .line 359
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 363
    :cond_3
    iget-wide v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_4

    .line 364
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 365
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lemt$g;->dt_search_narrow_startFrom:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->x:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 369
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "conditions":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b:Landroid/widget/TextView;

    sget v4, Lemt$g;->dt_search_narrow_condition_none:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 375
    :goto_0
    return-object v1

    .line 373
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b:Landroid/widget/TextView;

    sget v4, Lemt$g;->dt_search_narrow_condition:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 392
    iget-boolean v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    if-nez v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 395
    :cond_0
    iput-boolean v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lemt$g;->icon_act_open:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 398
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 399
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 400
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 401
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_button_border_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->r:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    if-nez v1, :cond_2

    .line 406
    new-instance v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->n:Landroid/view/View;

    iget v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->A:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;-><init>(Landroid/view/View;Landroid/view/View;IZ)V

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->r:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    .line 408
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->r:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;->setDuration(J)V

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->r:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "needSearch"    # Z

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Ljava/util/ArrayList;)Z

    .line 381
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Ljava/util/ArrayList;)Z

    .line 382
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Ljava/util/Calendar;)Z

    .line 384
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d()V

    .line 385
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    .line 388
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 420
    iget-boolean v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iput-boolean v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lemt$g;->icon_act_close:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 425
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->m:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->n:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 429
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lemt$c;->global_search_homepage_normal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 431
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->t:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_level2_line_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->s:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    if-nez v1, :cond_3

    .line 436
    new-instance v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->n:Landroid/view/View;

    iget v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->A:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;-><init>(Landroid/view/View;Landroid/view/View;IZ)V

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->s:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    .line 438
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->s:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;->setDuration(J)V

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->s:Lcom/alibaba/android/search/widget/MsgSearchFilterView$a;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 442
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->c()V

    goto :goto_0
.end method

.method public getFilterConversations()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 172
    .local v8, "user":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 175
    .local v7, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 182
    .local v9, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 183
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    iget-wide v4, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v8    # "user":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v9    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    return-object v0
.end method

.method public getFilterEndTimeSpan()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFilterStartTimeSpan()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFilterTimeSpan()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    return-wide v0
.end method

.method public getFilterUsers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 158
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 159
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->layout_contact_filter:I

    if-ne v1, v2, :cond_3

    .line 1256
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->B:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-nez v1, :cond_2

    .line 1257
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 1258
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1259
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1264
    :goto_1
    iget v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->z:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1265
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1266
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1267
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1269
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1270
    const-string/jumbo v3, "intent_key_contact_choose_request"

    .line 2053
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1270
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1271
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1261
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->B:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->builder()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->layout_group_filter:I

    if-ne v1, v2, :cond_4

    .line 2275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2276
    const-string/jumbo v2, "count_limit"

    iget v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->z:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2277
    const-string/jumbo v2, "activity_identify"

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string/jumbo v2, "intent_key_im_forward_edit_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2279
    const-string/jumbo v2, "intent_key_im_forward_mode"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2280
    const-string/jumbo v2, "intent_key_pick_org_contact"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2281
    const-string/jumbo v2, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2283
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 295
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->ll_layout_start_time:I

    if-ne v1, v2, :cond_6

    .line 296
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;)V

    .line 2362
    .local v0, "dateDialog":Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 2366
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lemt$g;->dt_common_clean_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/widget/MsgSearchFilterView$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$3;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)V

    .line 3345
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->d:Ljava/lang/String;

    .line 3346
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->e:Landroid/view/View$OnClickListener;

    .line 305
    iget-wide v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    iget-wide v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->w:J

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 306
    new-instance v1, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V

    .line 3414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 328
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto/16 :goto_0

    .line 305
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_2

    .line 329
    .end local v0    # "dateDialog":Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_reset:I

    if-ne v1, v2, :cond_7

    .line 330
    invoke-virtual {p0, v5}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Z)V

    goto/16 :goto_0

    .line 331
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_confirm:I

    if-ne v1, v2, :cond_8

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->b()V

    goto/16 :goto_0

    .line 335
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->rl_filter_conditions:I

    if-ne v1, v2, :cond_a

    .line 336
    iget-boolean v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->y:Z

    if-eqz v1, :cond_9

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a()V

    goto/16 :goto_0

    .line 339
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b()V

    goto/16 :goto_0

    .line 341
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->fill_view:I

    if-ne v1, v2, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 588
    iget v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->A:I

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 590
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->A:I

    .line 592
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->onMeasure(II)V

    .line 593
    return-void
.end method

.method public setCallback(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    .line 247
    return-void
.end method

.method public setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 0
    .param p1, "contactChooseRequest"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->B:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 252
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->z:I

    .line 136
    return-void
.end method

.method public setShowFilters(I)V
    .locals 4
    .param p1, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 125
    sget v0, Lemt$e;->layout_contact_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    sget v0, Lemt$e;->divider_contact_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    sget v0, Lemt$e;->layout_group_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    sget v0, Lemt$e;->divider_group_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    sget v0, Lemt$e;->ll_layout_start_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    sget v0, Lemt$e;->divider_time_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0

    :cond_1
    move v0, v2

    .line 126
    goto :goto_1

    :cond_2
    move v0, v2

    .line 127
    goto :goto_2

    :cond_3
    move v0, v2

    .line 128
    goto :goto_3

    :cond_4
    move v0, v2

    .line 129
    goto :goto_4

    :cond_5
    move v1, v2

    .line 130
    goto :goto_5
.end method
