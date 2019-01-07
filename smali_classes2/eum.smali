.class public Leum;
.super Leul;
.source "TeleBusinessConfRecordGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leum$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public c:Z

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Leum;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leum;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leum;->e:Ljava/util/HashMap;

    .line 58
    iput v1, p0, Leum;->f:I

    .line 59
    iput-boolean v1, p0, Leum;->c:Z

    .line 1533
    iget-object v0, p0, Leum;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1534
    :goto_0
    return-void

    .line 1536
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1539
    sget-object v1, Leum;->d:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 1540
    new-instance v2, Leum$1;

    invoke-direct {v2, p0, v0}, Leum$1;-><init>(Leum;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "showMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Leul;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leum;->e:Ljava/util/HashMap;

    .line 58
    iput v1, p0, Leum;->f:I

    .line 59
    iput-boolean v1, p0, Leum;->c:Z

    .line 68
    iput v1, p0, Leum;->f:I

    .line 69
    return-void
.end method

.method static synthetic a(Leum;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Leum;

    .prologue
    .line 48
    iget-object v0, p0, Leum;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Leum$a;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V
    .locals 5
    .param p1, "holder"    # Leum$a;
    .param p2, "userObject"    # Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 466
    iget v0, p0, Leum;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 467
    iget-boolean v0, p2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Leum;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_callselect_user_lowversion_state:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :goto_0
    iget-boolean v0, p2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    if-eqz v0, :cond_0

    .line 474
    iget-boolean v0, p2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    :cond_0
    iget-boolean v0, p2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->h:Z

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Leum;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_user_customer:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_1
    :goto_1
    return-void

    .line 471
    :cond_2
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_3
    iget-boolean v0, p2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    if-eqz v0, :cond_1

    .line 487
    :cond_4
    iget-object v0, p1, Leum$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private static b(Leum$a;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V
    .locals 4
    .param p0, "holder"    # Leum$a;
    .param p1, "userObject"    # Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 492
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :goto_0
    iget-boolean v0, p1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->i:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    sget v1, Leuj$h;->teleconf_ding_card:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 505
    :cond_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Leum$a;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 72
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput p1, p0, Leum;->f:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "extName"    # Ljava/lang/String;
    .param p2, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 84
    .local v0, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    .line 86
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iput-object p1, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    invoke-virtual {p0}, Leum;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 118
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 119
    .local v0, "end":I
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 120
    .local v1, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 121
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "extName"    # Ljava/lang/String;
    .param p2, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 129
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 130
    .local v0, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    .line 132
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iput-object p1, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    invoke-virtual {p0}, Leum;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public final b(Z)V
    .locals 4
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 143
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 144
    .local v0, "end":I
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 145
    .local v1, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 146
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-virtual {p0}, Leum;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public final c(Z)V
    .locals 3
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 154
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 156
    .local v0, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v0, :cond_0

    .line 159
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    goto :goto_0

    .line 163
    .end local v0    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_1
    invoke-virtual {p0}, Leum;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method public final d(Z)V
    .locals 3
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 194
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 196
    .local v0, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v0, :cond_0

    .line 199
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    goto :goto_0

    .line 203
    .end local v0    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_1
    invoke-virtual {p0}, Leum;->notifyDataSetChanged()V

    .line 205
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 264
    if-nez p2, :cond_1

    .line 265
    iget-object v2, p0, Leum;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2508
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Leuj$j;->layout_conf_grid_avatar:I

    .line 2509
    iget v3, p0, Leum;->f:I

    packed-switch v3, :pswitch_data_0

    .line 266
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 268
    new-instance v0, Leum$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Leum$a;-><init>(Leum;B)V

    .line 269
    .local v0, "holder":Leum$a;
    sget v2, Leuj$i;->avatar_local_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 270
    sget v2, Leuj$i;->avatar:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 271
    sget v2, Leuj$i;->nickname:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leum$a;->c:Landroid/widget/TextView;

    .line 272
    sget v2, Leuj$i;->avatar_delete:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Leum$a;->d:Landroid/view/View;

    .line 273
    sget v2, Leuj$i;->avatar_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    iput-object v2, v0, Leum$a;->e:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    .line 274
    sget v2, Leuj$i;->active_state:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leum$a;->f:Landroid/widget/TextView;

    .line 275
    sget v2, Leuj$i;->avatar_state:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leum$a;->g:Landroid/widget/TextView;

    .line 276
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3287
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    if-ltz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 283
    :cond_0
    :goto_2
    return-object p2

    .line 2511
    .end local v0    # "holder":Leum$a;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v2, Leuj$j;->layout_conf_grid_avatar:I

    goto :goto_0

    .line 2514
    :pswitch_1
    sget v2, Leuj$j;->layout_conf_grid_avatar_small:I

    goto :goto_0

    .line 2517
    :pswitch_2
    sget v2, Leuj$j;->layout_conf_grid_avatar_big:I

    goto :goto_0

    .line 2520
    :pswitch_3
    sget v2, Leuj$j;->layout_conf_grid_avatar_gray:I

    goto :goto_0

    .line 278
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leum$a;

    .line 279
    .restart local v0    # "holder":Leum$a;
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    goto :goto_1

    .line 3290
    :cond_2
    iget-object v2, p0, Leum;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 3291
    if-eqz v2, :cond_0

    .line 3292
    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v3

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 3294
    iget-object v3, v0, Leum$a;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3295
    iget-object v3, v0, Leum$a;->e:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a()V

    .line 3296
    iget-object v3, v0, Leum$a;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3297
    iget-object v3, v0, Leum$a;->g:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3298
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3299
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3300
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3301
    iget v2, p0, Leum;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3302
    iget-object v2, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3309
    :goto_3
    iget v2, p0, Leum;->f:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget v2, p0, Leum;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 3310
    :cond_3
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Leuj$h;->conf_add_member_bg:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 3314
    :goto_4
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Leum;->b:Landroid/app/Activity;

    sget v4, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3315
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3316
    iget-object v2, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3304
    :cond_4
    iget-object v2, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_3

    .line 3307
    :cond_5
    iget-object v2, v0, Leum$a;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 3312
    :cond_6
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Leuj$h;->conf_add_member_gray:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_4

    .line 3317
    :cond_7
    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v3

    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 3319
    iget-object v3, v0, Leum$a;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3320
    iget-object v3, v0, Leum$a;->e:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a()V

    .line 3321
    iget-object v3, v0, Leum$a;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3322
    iget-object v3, v0, Leum$a;->g:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3323
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3324
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3325
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3326
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3330
    :goto_5
    iget v2, p0, Leum;->f:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    iget v2, p0, Leum;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 3331
    :cond_8
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Leuj$h;->conf_delete_member_bg:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 3335
    :goto_6
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Leum;->b:Landroid/app/Activity;

    sget v4, Leuj$l;->dt_accessibility_conf_remove_members:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3336
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3337
    iget-object v2, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3328
    :cond_9
    iget-object v2, v0, Leum$a;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 3333
    :cond_a
    iget-object v2, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Leuj$h;->conf_delete_member_gray:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_6

    .line 3339
    :cond_b
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 3340
    const/4 v5, 0x0

    .line 3341
    const/4 v3, 0x0

    .line 3342
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v4, :cond_13

    .line 3343
    const/4 v6, 0x1

    .line 3344
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3346
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v7, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 3347
    iget-object v4, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    iget-object v4, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3349
    iget-object v4, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3350
    iget-object v4, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 3351
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v4

    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_11

    .line 3352
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 3353
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 3354
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 3356
    :cond_c
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_d

    .line 3357
    iget-object v4, p0, Leum;->b:Landroid/app/Activity;

    sget v7, Leuj$l;->conf_txt_me_flag:I

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3359
    :cond_d
    iget-object v7, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3360
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3361
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3363
    iget-boolean v4, p0, Leum;->c:Z

    if-eqz v4, :cond_e

    .line 3364
    invoke-static {v0, v2}, Leum;->b(Leum$a;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V

    .line 3365
    invoke-direct {p0, v0, v2}, Leum;->a(Leum$a;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V

    .line 3378
    :cond_e
    :goto_8
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_20

    .line 3379
    const/4 v3, 0x1

    :goto_9
    move v5, v3

    move v3, v6

    .line 3450
    :cond_f
    :goto_a
    if-eqz v3, :cond_0

    .line 3452
    iget-boolean v2, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    if-eqz v2, :cond_1f

    if-nez v5, :cond_1f

    .line 3453
    iget-object v2, v0, Leum$a;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3454
    iget-object v2, v0, Leum$a;->e:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    .line 7074
    iget-boolean v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    .line 7077
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    new-instance v4, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$1;

    invoke-direct {v4, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7094
    new-instance v3, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    invoke-direct {v3, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;Landroid/view/animation/Animation;)V

    iput-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->c:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;

    .line 7095
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    .line 7096
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 3346
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 3367
    :cond_11
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalStatusType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v4

    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_12

    .line 3368
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    .line 3369
    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget v7, v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->b:I

    .line 3370
    iget-object v8, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3371
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3372
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3373
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_8

    .line 3375
    :cond_12
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 3382
    :cond_13
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_1b

    .line 3383
    const/4 v6, 0x1

    .line 3384
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3386
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 3387
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v7, :cond_15

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_15

    .line 3388
    iget-object v7, p0, Leum;->e:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 3389
    iget-object v4, p0, Leum;->e:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3391
    :cond_14
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 3393
    :cond_15
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v7, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3395
    iget-object v4, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3396
    iget-object v4, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 3397
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v4

    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_19

    .line 3399
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    .line 3400
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_16

    .line 3401
    iget-object v4, p0, Leum;->b:Landroid/app/Activity;

    sget v7, Leuj$l;->conf_txt_me_flag:I

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3403
    :cond_16
    iget-object v7, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3404
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3405
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3407
    iget-boolean v4, p0, Leum;->c:Z

    if-eqz v4, :cond_17

    .line 3408
    invoke-static {v0, v2}, Leum;->b(Leum$a;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V

    .line 3409
    invoke-direct {p0, v0, v2}, Leum;->a(Leum$a;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V

    .line 3422
    :cond_17
    :goto_b
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_18

    .line 3423
    const/4 v5, 0x1

    :cond_18
    move v3, v6

    .line 3425
    goto/16 :goto_a

    .line 3411
    :cond_19
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalStatusType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v4

    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_1a

    .line 3412
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->a:Ljava/lang/String;

    .line 3413
    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    iget v7, v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;->b:I

    .line 3414
    iget-object v8, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3415
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3416
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3417
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_b

    .line 3419
    :cond_1a
    iget-object v4, v0, Leum$a;->c:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 3425
    :cond_1b
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    if-eqz v4, :cond_f

    .line 3426
    const/4 v4, 0x0

    .line 3427
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    .line 4046
    iget-object v6, v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->e:Ljava/lang/String;

    .line 4062
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->a:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    .line 3430
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;->UrlJump:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    if-ne v7, v8, :cond_1d

    .line 3431
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3432
    iget-object v7, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 3433
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 5046
    iget-object v8, v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->e:Ljava/lang/String;

    .line 6038
    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->d:Ljava/lang/String;

    .line 3433
    invoke-virtual {v7, v8, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    iget-object v3, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3442
    :cond_1c
    :goto_c
    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v3

    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v7

    if-ne v3, v7, :cond_1e

    .line 3443
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v4

    goto/16 :goto_a

    .line 3435
    :cond_1d
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;->LocalJump:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    if-ne v7, v8, :cond_1c

    .line 3436
    iget-object v7, v0, Leum$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3437
    iget-object v7, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 3438
    iget-object v7, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3439
    iget-object v7, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6070
    iget-object v8, v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->b:Ljava/lang/String;

    .line 3439
    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3440
    iget-object v7, v0, Leum$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6078
    iget v3, v3, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->c:I

    .line 3440
    invoke-virtual {v7, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_c

    .line 3445
    :cond_1e
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3446
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3447
    iget-object v3, v0, Leum$a;->c:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v4

    goto/16 :goto_a

    .line 3456
    :cond_1f
    iget-object v2, v0, Leum$a;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3457
    iget-object v2, v0, Leum$a;->e:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a()V

    goto/16 :goto_2

    :cond_20
    move v3, v5

    goto/16 :goto_9

    .line 2509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
