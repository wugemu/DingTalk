.class public Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleBusinessConfSelectedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;,
        Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;,
        Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;,
        Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field public final a:[Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private n:[Z

.field private o:[Ljava/lang/String;

.field private p:Landroid/os/Handler;

.field private q:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->k:Ljava/util/HashMap;

    .line 95
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->B:Z

    .line 96
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->C:Z

    .line 98
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a:[Ljava/lang/String;

    .line 575
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c:Landroid/widget/Button;

    sget v1, Leuj$l;->sure:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c:Landroid/widget/Button;

    sget v1, Leuj$l;->ding_select_user_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    .line 2558
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    if-lt v0, v1, :cond_0

    .line 2559
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2561
    :cond_0
    const/4 v0, 0x1

    .line 64
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    return v0
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x23

    .line 284
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a()V

    .line 285
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    .line 2329
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2331
    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$6;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 286
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 287
    .local v4, "size":I
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    .line 288
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 290
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "i":I
    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->o:[Ljava/lang/String;

    .line 295
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 296
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 297
    .local v0, "currentStr":C
    add-int/lit8 v5, v1, -0x1

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    .line 298
    .local v3, "previewStr":C
    :goto_2
    if-eq v3, v0, :cond_2

    .line 299
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v2

    .line 300
    .local v2, "name":C
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->k:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->o:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 295
    .end local v2    # "name":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    .end local v3    # "previewStr":C
    :cond_3
    const/16 v3, 0x20

    goto :goto_2

    .line 305
    .end local v0    # "currentStr":C
    :cond_4
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->p:Landroid/os/Handler;

    .line 306
    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->q:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    .line 307
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->q:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    .line 2439
    iput-object v6, v5, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;

    .line 324
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->e:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->q:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 566
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->z:I

    if-lez v2, :cond_0

    .line 567
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->z:I

    .line 571
    .local v1, "limitTipId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "limitTip":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 573
    return-void

    .line 569
    .end local v0    # "limitTip":Ljava/lang/String;
    .end local v1    # "limitTipId":I
    :cond_0
    sget v1, Leuj$l;->conference_choose_limit:I

    .restart local v1    # "limitTipId":I
    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->z:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->C:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->B:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    const/4 v0, 0x0

    .line 64
    .line 3384
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    if-le v1, v2, :cond_0

    .line 3385
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c()V

    .line 3386
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3387
    :goto_0
    return-void

    .line 3389
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    array-length v1, v1

    .line 3390
    :goto_1
    if-ge v0, v1, :cond_1

    .line 3391
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 3390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3393
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3394
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3395
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a()V

    .line 3396
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->q:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 3400
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    array-length v2, v0

    move v0, v1

    .line 3401
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3402
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    aput-boolean v1, v3, v0

    .line 3401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3405
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a()V

    .line 3406
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->q:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a()V

    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    .line 3410
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.workapp.choose.people.from.contact"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3411
    const-string/jumbo v2, "choose_user_identities"

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3412
    const-string/jumbo v0, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3413
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3414
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->finish()V

    .line 64
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n:[Z

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->finish()V

    .line 118
    :goto_0
    return-void

    .line 1121
    :cond_0
    sget v0, Leuj$j;->activity_teleconf_selected:I

    .line 113
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1125
    const-string/jumbo v1, "seleced_members"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    .line 1126
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    .line 1129
    :cond_1
    const-string/jumbo v1, "count_limit"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    .line 1130
    const-string/jumbo v1, "need_check_all"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->t:Z

    .line 1131
    const-string/jumbo v1, "need_show_header"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->u:Z

    .line 1132
    const-string/jumbo v1, "send_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->v:Ljava/lang/String;

    .line 1133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    .line 1134
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1135
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s:I

    if-gt v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->t:Z

    if-eqz v1, :cond_2

    .line 1136
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1139
    :cond_2
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->x:Ljava/lang/String;

    .line 1140
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->w:Ljava/lang/String;

    .line 1141
    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->z:I

    .line 1142
    const-string/jumbo v1, "conf_next_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->y:Ljava/lang/String;

    .line 1143
    const-string/jumbo v1, "conf_header_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->A:Ljava/lang/String;

    .line 1144
    const-string/jumbo v1, "can_choose_current_user"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->B:Z

    .line 1145
    const-string/jumbo v1, "filter_myself"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->C:Z

    .line 1362
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->actbar_button:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1363
    sget v0, Leuj$i;->btn_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c:Landroid/widget/Button;

    .line 1364
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c:Landroid/widget/Button;

    sget v2, Leuj$l;->sure:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->b:Landroid/view/View;

    .line 1176
    sget v0, Leuj$i;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->e:Landroid/widget/ListView;

    .line 1177
    sget v0, Leuj$i;->letter_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 1180
    sget v0, Leuj$i;->tv_overlay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->f:Landroid/widget/TextView;

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->u:Z

    if-eqz v0, :cond_3

    .line 1183
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->activity_teleconf_selected_add_header:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->i:Landroid/view/View;

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->i:Landroid/view/View;

    sget v1, Leuj$i;->add_receiver_tip_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1185
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1186
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1191
    sget v0, Leuj$i;->ding_selected_add_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->j:Landroid/view/View;

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_header_check:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h:Landroid/view/View;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h:Landroid/view/View;

    sget v1, Leuj$i;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d:Landroid/widget/CheckBox;

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->t:Z

    if-eqz v0, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1235
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2264
    :cond_5
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->r:Landroid/content/BroadcastReceiver;

    .line 2277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2278
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2280
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->b()V

    goto/16 :goto_0

    .line 1188
    :cond_6
    sget v1, Leuj$l;->conf_txt_conference_add_member:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 376
    const/4 v1, 0x1

    sget v2, Leuj$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 377
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 378
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 380
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 355
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 357
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 359
    :cond_0
    return-void
.end method
