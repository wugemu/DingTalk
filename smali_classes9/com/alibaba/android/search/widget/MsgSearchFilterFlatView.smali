.class public Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
.super Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
.source "MsgSearchFilterFlatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/support/v7/app/AlertDialog;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

.field private f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Z

.field private k:I

.field private l:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private final o:Z

.field private final p:Z

.field private q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;-><init>(Landroid/content/Context;Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_CONTACT"

    aput-object v1, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->c:Ljava/lang/String;

    .line 65
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SEARCH_FILTER_VIEW_IDENTIFY_CHOOSE_GROUP"

    aput-object v1, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->d:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i:J

    .line 73
    iput-boolean v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->k:I

    .line 93
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$1;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->u:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->v:Landroid/view/View$OnClickListener;

    .line 151
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a:Landroid/content/Context;

    .line 152
    iput-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->p:Z

    .line 153
    iput-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->o:Z

    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h()V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGroup"    # Z

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;-><init>(Landroid/content/Context;ZZ)V

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGroup"    # Z
    .param p3, "isFromGlobalSearch"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 138
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;-><init>(Landroid/content/Context;)V

    .line 64
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

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->c:Ljava/lang/String;

    .line 65
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

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->d:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i:J

    .line 73
    iput-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->k:I

    .line 93
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$1;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->u:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->v:Landroid/view/View$OnClickListener;

    .line 139
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a:Landroid/content/Context;

    .line 140
    iput-boolean p2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->p:Z

    .line 141
    iput-boolean p3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->o:Z

    .line 142
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h()V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2
    .param p1, "menu"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 231
    sget v0, Lemt$g;->dt_im_search_filter_at_msg:I

    if-ne p1, v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "menuName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 575
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->t:Ljava/lang/String;

    .line 576
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 581
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 582
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iput-boolean v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    .line 589
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->m:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;

    invoke-interface {v1, p1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;->a(Ljava/lang/String;)V

    .line 595
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 741
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p1, :cond_0

    .line 742
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .restart local p1    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 746
    .local v0, "update":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 747
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    .line 750
    :cond_1
    return v0

    .line 744
    .end local v0    # "update":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/ArrayList;)Z
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 754
    .local p1, "messageRecipientDataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-nez p1, :cond_0

    .line 755
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "messageRecipientDataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .restart local p1    # "messageRecipientDataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 759
    .local v0, "update":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 760
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    .line 762
    :cond_1
    return v0

    .line 757
    .end local v0    # "update":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getWithinOneWeek()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    .line 5540
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    .line 5541
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5545
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 5546
    iget-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->o:Z

    if-eqz v0, :cond_1

    .line 5547
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lemt$g;->dt_search_category_sender:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5551
    :goto_0
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5553
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 5555
    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getJoinStr()Ljava/lang/String;

    move-result-object v5

    .line 5557
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 5558
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5559
    if-eqz v0, :cond_0

    .line 5563
    add-int/lit8 v6, v4, -0x1

    if-eq v1, v6, :cond_2

    .line 5564
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5557
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5549
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lemt$g;->dt_im_search_group_member:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 5566
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 5571
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Ljava/lang/String;)V

    .line 62
    :cond_4
    return-void
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getWithinOneMonth()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()J
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getWithThreeMonth()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 62
    .line 6449
    iget-object v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    .line 6450
    invoke-static {v5}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6454
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 6455
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lemt$g;->dt_search_narrow_group:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6457
    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getJoinStr()Ljava/lang/String;

    move-result-object v7

    .line 6459
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v3, v4

    .line 6461
    :goto_0
    if-ge v3, v8, :cond_9

    .line 6462
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 6481
    if-nez v0, :cond_2

    .line 6482
    const-string/jumbo v0, "object = null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 6465
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6469
    add-int/lit8 v1, v8, -0x1

    if-eq v3, v1, :cond_8

    .line 6470
    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6461
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 6486
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v0

    .line 6487
    if-nez v0, :cond_3

    .line 6488
    const-string/jumbo v0, "data = null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 6489
    goto :goto_1

    .line 6493
    :cond_3
    instance-of v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v1, :cond_5

    .line 6494
    instance-of v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_4

    .line 6495
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 6496
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 6497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6498
    const-string/jumbo v0, "nick is empty"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move-object v0, v2

    .line 6505
    goto :goto_1

    .line 6503
    :cond_4
    const-string/jumbo v0, "data is not DingtalkConversation or UserIdentityObject either!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 6509
    :cond_5
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 6510
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 6512
    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 6513
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    goto :goto_1

    .line 6516
    :cond_6
    instance-of v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_7

    .line 6517
    const-string/jumbo v0, "conv is not ConversationImpl"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 6518
    goto :goto_1

    :cond_7
    move-object v0, v1

    .line 6521
    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 6522
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->title()Ljava/lang/String;

    move-result-object v0

    .line 6524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6525
    const-string/jumbo v0, "title is empty"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 6526
    goto/16 :goto_1

    .line 6472
    :cond_8
    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 6476
    :cond_9
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Ljava/lang/String;)V

    .line 62
    :cond_a
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->u:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private f()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 168
    :goto_0
    return v2

    :cond_0
    move-object v0, v1

    .line 167
    check-cast v0, Landroid/app/Activity;

    .line 168
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v2

    goto :goto_0
.end method

.method private g()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 173
    iget-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->o:Z

    if-eqz v4, :cond_1

    .line 174
    new-array v3, v11, [[I

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_search_narrow_group:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_search_category_sender:I

    aput v6, v4, v10

    aput-object v4, v3, v5

    new-array v4, v10, [I

    sget v6, Lemt$g;->dt_im_search_filter_date:I

    aput v6, v4, v5

    aput-object v4, v3, v10

    .line 210
    .local v3, "menus":[[I
    :goto_0
    sget v4, Lemt$e;->filter_menu:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 211
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 213
    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->m:Landroid/view/View;

    .line 215
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v2, v3, v4

    .line 216
    .local v2, "menu":[I
    array-length v7, v2

    if-ne v7, v11, :cond_5

    .line 217
    new-instance v7, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;-><init>(Landroid/content/Context;)V

    aget v8, v2, v5

    invoke-direct {p0, v8}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->v:Landroid/view/View$OnClickListener;

    .line 1083
    iput-object v8, v7, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->b:Landroid/view/View$OnClickListener;

    .line 217
    aget v8, v2, v10

    .line 218
    invoke-direct {p0, v8}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 2063
    iget-object v9, v7, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v8, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->v:Landroid/view/View$OnClickListener;

    .line 2088
    iput-object v8, v7, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->c:Landroid/view/View$OnClickListener;

    .line 217
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v2    # "menu":[I
    .end local v3    # "menus":[[I
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->p:Z

    if-eqz v4, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    new-array v3, v6, [[I

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_group_member:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_date:I

    aput v6, v4, v10

    aput-object v4, v3, v5

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_pic_and_video:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_file:I

    aput v6, v4, v10

    aput-object v4, v3, v10

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_link:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_journal:I

    aput v6, v4, v10

    aput-object v4, v3, v11

    .restart local v3    # "menus":[[I
    goto :goto_0

    .line 187
    .end local v3    # "menus":[[I
    :cond_2
    new-array v3, v6, [[I

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_group_member:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_date:I

    aput v6, v4, v10

    aput-object v4, v3, v5

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_pic_and_video:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_file:I

    aput v6, v4, v10

    aput-object v4, v3, v10

    new-array v4, v10, [I

    sget v6, Lemt$g;->dt_im_search_filter_link:I

    aput v6, v4, v5

    aput-object v4, v3, v11

    .restart local v3    # "menus":[[I
    goto/16 :goto_0

    .line 195
    .end local v3    # "menus":[[I
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    new-array v3, v6, [[I

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_date:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_pic_and_video:I

    aput v6, v4, v10

    aput-object v4, v3, v5

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_file:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_link:I

    aput v6, v4, v10

    aput-object v4, v3, v10

    new-array v4, v10, [I

    sget v6, Lemt$g;->dt_im_search_filter_journal:I

    aput v6, v4, v5

    aput-object v4, v3, v11

    .restart local v3    # "menus":[[I
    goto/16 :goto_0

    .line 202
    .end local v3    # "menus":[[I
    :cond_4
    new-array v3, v11, [[I

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_date:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_pic_and_video:I

    aput v6, v4, v10

    aput-object v4, v3, v5

    new-array v4, v11, [I

    sget v6, Lemt$g;->dt_im_search_filter_file:I

    aput v6, v4, v5

    sget v6, Lemt$g;->dt_im_search_filter_link:I

    aput v6, v4, v10

    aput-object v4, v3, v10

    .restart local v3    # "menus":[[I
    goto/16 :goto_0

    .line 219
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "menu":[I
    :cond_5
    array-length v7, v2

    if-ne v7, v10, :cond_0

    .line 220
    new-instance v7, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;-><init>(Landroid/content/Context;)V

    aget v8, v2, v5

    invoke-direct {p0, v8}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->v:Landroid/view/View$OnClickListener;

    .line 3083
    iput-object v8, v7, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->b:Landroid/view/View$OnClickListener;

    .line 220
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 224
    .end local v2    # "menu":[I
    :cond_6
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "line":Landroid/view/View;
    sget v4, Lemt$b;->divider_line_color:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i()V

    return-void
.end method

.method private static getJoinStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string/jumbo v0, "\u3001"

    .line 536
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    goto :goto_0
.end method

.method private static getWithThreeMonth()J
    .locals 4

    .prologue
    .line 445
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    const-wide v2, 0x1cf7c5800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getWithinOneMonth()J
    .locals 4

    .prologue
    .line 441
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getWithinOneWeek()J
    .locals 4

    .prologue
    .line 437
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    return-object v0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 304
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lemt$f;->layout_search_filter_flat_view:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 305
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->setOrientation(I)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    sget v1, Lemt$e;->icon_filter:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 310
    sget v1, Lemt$e;->tv_filter_conditions_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    .line 312
    sget v1, Lemt$e;->tv_filter_expand:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 314
    sget v1, Lemt$e;->rl_filter_conditions:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g()V

    .line 318
    new-instance v1, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$2;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 333
    return-void
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 614
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->l:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-nez v2, :cond_0

    .line 615
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 616
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 617
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 622
    :goto_0
    iget v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->k:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 623
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 624
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 625
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 627
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 628
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_contact_choose_request"

    .line 4053
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 628
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 629
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 630
    return-void

    .line 619
    .end local v0    # "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->l:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->builder()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .restart local v0    # "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "count_limit"

    iget v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v1, "intent_key_im_forward_edit_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string/jumbo v1, "intent_key_im_forward_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string/jumbo v1, "intent_key_pick_org_contact"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 641
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 642
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    .line 716
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lemt$g;->icon_act_open:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "needSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 679
    iput-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->t:Ljava/lang/String;

    .line 680
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i:J

    .line 681
    iput-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    .line 682
    iput-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    .line 4695
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_im_filter_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4696
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4697
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 4699
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    .line 4701
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4703
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4704
    if-eqz v0, :cond_0

    .line 4705
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 686
    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Ljava/util/ArrayList;)Z

    .line 687
    invoke-direct {p0, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b(Ljava/util/ArrayList;)Z

    .line 689
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    .line 692
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lemt$g;->dt_search_im_filter_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    .line 732
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lemt$g;->icon_act_close:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 734
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->c()V

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
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h:Ljava/util/ArrayList;

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

    .line 281
    .local v8, "user":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 284
    .local v7, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    .end local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 291
    .local v9, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 292
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

    .line 300
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
    .line 259
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFilterStartTimeSpan()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFilterTimeSpan()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i:J

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
    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g:Ljava/util/ArrayList;

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

    .line 267
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 268
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    return-object v1
.end method

.method public getSelectedMenuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->t:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 646
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->layout_contact_filter:I

    if-ne v1, v2, :cond_2

    .line 650
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i()V

    goto :goto_0

    .line 651
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->layout_group_filter:I

    if-ne v1, v2, :cond_3

    .line 652
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j()V

    goto :goto_0

    .line 653
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_reset:I

    if-ne v1, v2, :cond_4

    .line 654
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Z)V

    goto :goto_0

    .line 655
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_confirm:I

    if-ne v1, v2, :cond_5

    .line 656
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->b()V

    goto :goto_0

    .line 659
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->rl_filter_conditions:I

    if-ne v1, v2, :cond_8

    .line 4674
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 660
    :goto_1
    if-eqz v0, :cond_0

    .line 663
    iget-boolean v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->j:Z

    if-eqz v0, :cond_7

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a()V

    goto :goto_0

    .line 4674
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 666
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b()V

    goto :goto_0

    .line 668
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->fill_view:I

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a()V

    goto :goto_0
.end method

.method public setCallback(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    .line 600
    return-void
.end method

.method public setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 0
    .param p1, "contactChooseRequest"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->l:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 610
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->k:I

    .line 245
    return-void
.end method

.method public setOnAttachmentClickListener(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->f:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    .line 605
    return-void
.end method

.method public setOnMenuChangedListener(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;

    .line 160
    return-void
.end method

.method public setShowFilters(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 240
    return-void
.end method
