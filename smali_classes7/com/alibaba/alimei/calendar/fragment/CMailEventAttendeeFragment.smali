.class public Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "CMailEventAttendeeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

.field private d:Z

.field private e:Ljava/util/Map;
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

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->e:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
            ">;)",
            "Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;>;"
    new-instance v1, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;-><init>()V

    .line 75
    .local v1, "fragment":Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "attendees"

    check-cast p0, Ljava/io/Serializable;

    .end local p0    # "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;>;"
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "participantMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->e:Ljava/util/Map;

    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->notifyDataSetChanged()V

    .line 126
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 93
    const-string/jumbo v2, "attendees"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;>;"
    iput-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->f:Ljava/util/List;

    .line 1103
    .end local v0    # "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Laxo$f;->list_view:I

    invoke-static {v2, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->b:Landroid/widget/ListView;

    .line 1107
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1108
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1112
    new-instance v2, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Laxo$g;->alm_cmail_fragment_mail_participant_item:I

    invoke-direct {v2, p0, v3, v4}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;-><init>(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    .line 1113
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    iget-object v3, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->b(Ljava/util/List;)V

    .line 1114
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
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
    .line 130
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    if-nez v4, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    invoke-virtual {v4, p3}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    .line 135
    .local v0, "attendeeObject":Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;
    if-eqz v0, :cond_0

    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->e:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 141
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 144
    .restart local v3    # "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_2
    if-eqz v3, :cond_4

    .line 145
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 147
    .local v2, "isSameOrg":Z
    if-eqz v2, :cond_3

    const/4 v4, 0x2

    iget v5, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v4, v5, :cond_3

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "account_name"

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v4, "mail_address_list"

    iget-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v4, "mail_name"

    iget-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v4, "/mail/maillist_participant.html"

    invoke-virtual {p0, v4, v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 156
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v2    # "isSameOrg":Z
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 166
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->d:Z

    .line 167
    if-nez p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->notifyDataSetChanged()V

    .line 170
    :cond_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 84
    sget v0, Laxo$g;->cmail_fragment_event_attendee:I

    return v0
.end method
