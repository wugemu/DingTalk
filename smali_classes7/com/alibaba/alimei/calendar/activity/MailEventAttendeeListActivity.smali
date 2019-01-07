.class public Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailEventAttendeeListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lrf;

.field private d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 40
    const-string/jumbo v0, "MailEventAttendeeListActivity"

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->f:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)Lrf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Laxo$g;->activity_ding_mail_event_attendee_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->setContentView(I)V

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_event_detail"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    .line 1066
    sget v0, Laxo$f;->lv_attendee:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->b:Landroid/widget/ListView;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    if-nez v0, :cond_1

    .line 1076
    const-string/jumbo v0, "[MailEventAttendeeListActivity]eventDetailObject is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->finish()V

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getAttendeeList()Ljava/util/List;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1082
    :cond_2
    const-string/jumbo v0, "[MailEventAttendeeListActivity]attendeeObjectList is null or empty"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->finish()V

    goto :goto_0

    .line 1087
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    sget v2, Laxo$i;->dt_ding_mail_event_attendee_list_title_organizer:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v1, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;-><init>()V

    .line 1089
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOrganizer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeEmail(Ljava/lang/String;)V

    .line 1090
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeName(Ljava/lang/String;)V

    .line 1092
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    sget v2, Laxo$i;->dt_ding_mail_event_attendee_list_title_receiver:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1096
    new-instance v0, Lrf;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lrf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v1

    .line 2060
    iput-object v1, v0, Lrf;->b:Ljava/lang/String;

    .line 1101
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-static {v1}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1105
    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_4

    .line 1109
    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    .line 1110
    if-eqz v0, :cond_4

    .line 1114
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1115
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1119
    :cond_5
    new-instance v0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)V

    .line 1138
    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_6

    .line 1140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->getMailInfoByMail(Ljava/util/List;Lxv;)V

    goto/16 :goto_0

    .line 1142
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "getMailInfoByMail fail for obtain additionalApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    invoke-virtual {v0}, Lrf;->c()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    .line 194
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    if-nez v5, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    invoke-virtual {v5, p3}, Lrf;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    if-eqz v5, :cond_0

    move-object v0, v3

    .line 158
    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    .line 160
    .local v0, "attendeeObject":Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;
    const/4 v4, 0x0

    .line 161
    .local v4, "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->f:Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 165
    .restart local v4    # "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_2
    if-eqz v4, :cond_4

    .line 166
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    .line 167
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v5, v6, v7}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 168
    .local v2, "isSameOrg":Z
    if-eqz v2, :cond_3

    const/4 v5, 0x2

    iget v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v5, v6, :cond_3

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "account_name"

    iget-object v6, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v5, "mail_address_list"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v5, "mail_name"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v5, "/mail/maillist_participant.html"

    invoke-virtual {p0, v5, v1}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 177
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v2    # "isSameOrg":Z
    :cond_4
    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 2064
    :goto_0
    iput-boolean v0, v1, Lrf;->c:Z

    .line 200
    if-nez p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->c:Lrf;

    invoke-virtual {v0}, Lrf;->notifyDataSetChanged()V

    .line 204
    :cond_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
