.class public Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailSelectedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;,
        Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;,
        Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;,
        Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private h:Landroid/view/View;

.field private i:Ljava/util/HashMap;
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

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
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

.field private m:[Z

.field private n:[Ljava/lang/String;

.field private o:Landroid/os/Handler;

.field private p:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->i:Ljava/util/HashMap;

    .line 61
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->a:[Ljava/lang/String;

    .line 454
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->c:Landroid/widget/Button;

    sget v1, Laxo$i;->sure:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->c:Landroid/widget/Button;

    sget v1, Laxo$i;->ding_select_user_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    const/4 v0, 0x0

    .line 40
    .line 3252
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->q:I

    if-le v1, v2, :cond_0

    .line 3253
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->i()V

    .line 3254
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3255
    :goto_0
    return-void

    .line 3257
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3258
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    array-length v2, v1

    move v1, v0

    .line 3259
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3260
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3261
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->s:Z

    if-nez v3, :cond_1

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 3262
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 3263
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3259
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3266
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b()V

    .line 3267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->p:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    const/4 v1, 0x0

    .line 40
    .line 3271
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    array-length v2, v0

    move v0, v1

    .line 3272
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3273
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    aput-boolean v1, v3, v0

    .line 3272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3276
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b()V

    .line 3277
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->p:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    .line 3281
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.workapp.choose.people.from.contact"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3282
    const-string/jumbo v2, "choose_user_identities"

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3283
    const-string/jumbo v0, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3284
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3285
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->finish()V

    .line 40
    return-void
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private h()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v10, 0x23

    .line 147
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b()V

    .line 148
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    .line 2200
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2202
    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$4;

    invoke-direct {v8, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    :cond_0
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 150
    .local v4, "size":I
    new-array v7, v4, [Z

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    .line 151
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->l:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 152
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v6, "userIdentityObjectHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 154
    .local v5, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v5    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 157
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 158
    .restart local v5    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v1

    .line 160
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v1    # "i":I
    .end local v5    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v6    # "userIdentityObjectHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    new-array v7, v4, [Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->n:[Ljava/lang/String;

    .line 166
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_6

    .line 167
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v7, v10}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 168
    .local v0, "currentStr":C
    add-int/lit8 v7, v1, -0x1

    if-ltz v7, :cond_5

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v7, v10}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    .line 169
    .local v3, "previewStr":C
    :goto_3
    if-eq v3, v0, :cond_4

    .line 170
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v7, v10}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v2

    .line 171
    .local v2, "name":C
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->n:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 166
    .end local v2    # "name":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    .end local v3    # "previewStr":C
    :cond_5
    const/16 v3, 0x20

    goto :goto_3

    .line 176
    .end local v0    # "currentStr":C
    :cond_6
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->o:Landroid/os/Handler;

    .line 177
    new-instance v7, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->p:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    .line 178
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->p:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;

    invoke-direct {v8, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    .line 2310
    iput-object v8, v7, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;

    .line 195
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->p:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 450
    sget v1, Laxo$i;->choose_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->q:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "limitTip":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->n:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->s:Z

    return v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m:[Z

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    .line 3443
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->q:I

    if-lt v0, v1, :cond_0

    .line 3444
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3446
    :cond_0
    const/4 v0, 0x1

    .line 40
    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->i()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 1083
    :cond_0
    sget v0, Laxo$g;->cmail_activity_selected:I

    .line 76
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1087
    const-string/jumbo v1, "seleced_members"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    .line 1088
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j:Ljava/util/List;

    .line 1091
    :cond_1
    const-string/jumbo v1, "checked_members"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->l:Ljava/util/List;

    .line 1092
    const-string/jumbo v1, "count_limit"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->q:I

    .line 1093
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->r:Ljava/lang/String;

    .line 1094
    const-string/jumbo v1, "can_choose_current_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->s:Z

    .line 1095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k:Ljava/util/List;

    .line 1096
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1098
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1230
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->actbar_button:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1231
    sget v0, Laxo$f;->btn_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->c:Landroid/widget/Button;

    .line 1232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->c:Landroid/widget/Button;

    sget v2, Laxo$i;->sure:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->c:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b:Landroid/view/View;

    .line 1112
    sget v0, Laxo$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e:Landroid/widget/ListView;

    .line 1113
    sget v0, Laxo$f;->letter_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 1114
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 1116
    sget v0, Laxo$f;->tv_overlay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->f:Landroid/widget/TextView;

    .line 1117
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1119
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->header_check:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h:Landroid/view/View;

    .line 1120
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h:Landroid/view/View;

    sget v1, Laxo$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d:Landroid/widget/CheckBox;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 244
    const/4 v1, 0x1

    sget v2, Laxo$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 245
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 246
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 248
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 467
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 468
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 472
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 473
    return-void
.end method
