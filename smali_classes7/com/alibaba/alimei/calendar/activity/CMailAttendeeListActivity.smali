.class public Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailAttendeeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private e:Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

.field private f:[Ljava/lang/String;

.field private g:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;

.field private h:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

.field private i:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

.field private j:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

.field private k:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Laxo$i;->dt_cmail_no_response:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Laxo$i;->dt_mail_event_accept:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Laxo$i;->dt_mail_event_tentative:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Laxo$i;->dt_mail_event_refuse:I

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f:[Ljava/lang/String;

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->h:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->h:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->l:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->i:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b:[I

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->i:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->j:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->j:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->k:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->k:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final d_()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    if-nez v4, :cond_1

    move v0, v3

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Z)[Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "ownAccounts":[Ljava/lang/String;
    if-nez v2, :cond_2

    move v0, v3

    .line 253
    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    .line 256
    .local v0, "isSender":Z
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 257
    .local v1, "ownAccount":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOrganizer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    const/4 v0, 0x1

    .line 259
    goto :goto_0

    .line 256
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x4

    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_event_detail"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    .line 1144
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    if-eqz v0, :cond_1

    move v0, v3

    .line 129
    :goto_0
    if-nez v0, :cond_2

    .line 130
    const-string/jumbo v0, "CMailAttendeeListActivity"

    const-string/jumbo v1, "init mEventDetailObject fail, so return"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->finish()V

    .line 3240
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1144
    goto :goto_0

    .line 135
    :cond_2
    sget v0, Laxo$g;->cmail_activity_attendee_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->setContentView(I)V

    .line 1148
    sget v0, Laxo$f;->indicator:I

    .line 1372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1148
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1149
    sget v0, Laxo$f;->view_pager:I

    .line 2372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    check-cast v0, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e:Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

    .line 3153
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 3154
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_cmail_calendar_attendee_detail:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 3159
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getAttendeeList()Ljava/util/List;

    move-result-object v0

    .line 3160
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3161
    :cond_4
    const-string/jumbo v0, "CMailAttendeeListActivity"

    const-string/jumbo v1, "attendeeObjectList is null or empty"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->finish()V

    goto :goto_1

    .line 3166
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d_()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3167
    sget v1, Laxo$f;->indicator:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3168
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e:Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->setSlideEnable(Z)V

    .line 3171
    :cond_6
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    .line 3173
    if-eqz v0, :cond_7

    .line 3177
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3178
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3181
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeStatus()I

    move-result v6

    .line 3182
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3183
    if-nez v1, :cond_9

    .line 3184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3185
    iget-object v7, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    :cond_9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3191
    :cond_a
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move v1, v2

    .line 3194
    :goto_3
    if-ge v1, v9, :cond_d

    .line 3195
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    aget v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3196
    if-nez v0, :cond_b

    move v0, v2

    .line 3197
    :goto_4
    iget-object v6, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f:[Ljava/lang/String;

    if-lez v0, :cond_c

    new-array v7, v9, [Ljava/lang/String;

    sget-object v8, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b:[I

    aget v8, v8, v1

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string/jumbo v8, "("

    aput-object v8, v7, v3

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x3

    const-string/jumbo v8, ")"

    aput-object v8, v7, v0

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v6, v1

    .line 3194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3196
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    .line 3197
    :cond_c
    sget-object v0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 3200
    :cond_d
    new-instance v0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;-><init>(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->g:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;

    .line 3201
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e:Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->g:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->setAdapter(Lgl;)V

    .line 3202
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e:Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 3203
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e:Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->setOffscreenPageLimit(I)V

    .line 3205
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v0

    .line 3206
    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3207
    new-instance v1, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;-><init>(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)V

    .line 3238
    invoke-static {v0}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    .line 3239
    if-eqz v0, :cond_e

    .line 3240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->getMailInfoByMail(Ljava/util/List;Lxv;)V

    goto/16 :goto_1

    .line 3242
    :cond_e
    const-string/jumbo v0, "CMailAttendeeListActivity"

    const-string/jumbo v1, "getMailInfoByMail fail for obtain additionalApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3191
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x2
    .end array-data
.end method
