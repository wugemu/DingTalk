.class public Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailParticipantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labn;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lada;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field private j:Landroid/view/MenuItem;

.field private k:Landroid/view/MenuItem;

.field private l:Z

.field private m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/os/Handler;

.field private t:Z

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Laff$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->j:Landroid/view/MenuItem;

    .line 104
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k:Landroid/view/MenuItem;

    .line 105
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->l:Z

    .line 108
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n:Ljava/util/HashSet;

    .line 125
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->r:I

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->s:Landroid/os/Handler;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->v:I

    .line 349
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->w:Laff$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(I)V
    .locals 7
    .param p1, "action"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4034
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 278
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 287
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->v:I

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->showLoadingDialog()V

    .line 290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->u:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->w:Laff$a;

    .line 4033
    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 4037
    const-string/jumbo v0, "to"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4038
    const-string/jumbo v1, "cc"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4039
    const-string/jumbo v4, "from"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4040
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4041
    if-eqz v0, :cond_4

    .line 4042
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 4043
    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v6}, Lafh;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4044
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4048
    :cond_4
    if-eqz v1, :cond_6

    .line 4049
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 4050
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v5}, Lafh;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4051
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4055
    :cond_6
    if-eqz v2, :cond_8

    .line 4056
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 4057
    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v2}, Lafh;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4058
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4063
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4067
    new-instance v0, Laff$1;

    invoke-direct {v0, p0, v3}, Laff$1;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Laff$a;)V

    .line 4099
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4100
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Lro;->a(Ljava/util/List;JLcma;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;ILjava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 84
    .line 12775
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12776
    :cond_0
    :goto_0
    return-void

    .line 12779
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12782
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 12783
    if-eqz v0, :cond_2

    .line 12787
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 12788
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12791
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 12793
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    invoke-virtual {v0}, Lada;->b()Ljava/util/List;

    move-result-object v0

    .line 12794
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 12795
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 12796
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 12797
    if-eqz v0, :cond_4

    const-string/jumbo v5, "unread"

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    .line 12798
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12800
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12805
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 12806
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 12807
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12812
    :cond_7
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/mail/selected.html"

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$5;

    invoke-direct {v5, p0, v1, p1, v2}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # J

    .prologue
    .line 84
    .line 11582
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11586
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11590
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$14;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 11600
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 84
    .line 12927
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    .line 12928
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    .local p1, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-nez p1, :cond_1

    .line 440
    :cond_0
    return-void

    .line 429
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 430
    .local v0, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 431
    .local v1, "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 432
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v3}, Lacn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 437
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_2
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 753
    .local p1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    if-nez v0, :cond_1

    .line 754
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->e:Z

    if-eqz v0, :cond_3

    .line 755
    new-instance v0, Lacy;

    invoke-direct {v0, p0}, Lacy;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    .line 762
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-boolean v1, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    .line 5294
    iput-boolean v1, v0, Lada;->k:Z

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->t:Z

    .line 6133
    iput-boolean v1, v0, Lada;->i:Z

    .line 769
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    .line 7079
    iput-object v1, v0, Lada;->f:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    invoke-virtual {v0, p1}, Lada;->a(Ljava/util/Map;)V

    .line 771
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->u:Ljava/util/Map;

    .line 772
    return-void

    .line 758
    :cond_3
    new-instance v0, Lada;

    invoke-direct {v0, p0}, Lada;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    .line 759
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    .line 5083
    const/4 v1, 0x0

    iput-boolean v1, v0, Lada;->h:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # I

    .prologue
    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->v:I

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 444
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    const-class v3, Lxv;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 493
    .local v0, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryMailParticipantsMapFromCache(Ljava/lang/String;ZLxv;)V

    .line 495
    return-void
.end method

.method private b(I)V
    .locals 11
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 838
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 843
    .local v1, "duplicateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labn;

    .line 845
    .local v2, "model":Labn;
    if-eqz v2, :cond_2

    iget-object v6, v2, Labn;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 848
    iget-object v6, v2, Labn;->b:Ljava/lang/String;

    invoke-static {v6}, Lajl;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 849
    .local v3, "uid":Ljava/lang/Long;
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 852
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 857
    .end local v2    # "model":Labn;
    .end local v3    # "uid":Ljava/lang/Long;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 858
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    .line 859
    sget v5, Laxo$i;->mail_participant_no_uid_call:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 860
    :cond_4
    const/4 v5, 0x3

    if-ne p1, v5, :cond_5

    .line 861
    sget v5, Laxo$i;->mail_participant_no_uid_chat:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 862
    :cond_5
    if-ne p1, v10, :cond_0

    .line 863
    sget v5, Laxo$i;->mail_participant_no_uid_ding:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 868
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->showLoadingDialog()V

    .line 869
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)V

    .line 895
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lcma;

    invoke-interface {v5, v0, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 898
    .restart local v0    # "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 84
    .line 12932
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12933
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12934
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12935
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/List;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v1, v0}, Lacg;->a(Ljava/util/List;Lcma;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->r:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->t:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->v:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    .line 9725
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9729
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 9744
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 9745
    if-eqz v1, :cond_1

    .line 9746
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->getMailInfoByMail(Ljava/lang/String;Lxv;)V

    :cond_0
    :goto_0
    return-void

    .line 9748
    :cond_1
    const-string/jumbo v0, "MailParticipantActivity"

    const-string/jumbo v1, "loadMailStatus fail for mailAdditionalApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    .line 10671
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10674
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    const-class v2, Lxv;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 10718
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryMailParticipantsMap(Ljava/lang/String;ZLxv;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    .line 12498
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12501
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 12573
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 12574
    if-eqz v1, :cond_1

    .line 12575
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryRevokeMailStatus(Ljava/lang/String;Lxv;)V

    :cond_0
    :goto_0
    return-void

    .line 12577
    :cond_1
    const-string/jumbo v0, "MailParticipantActivity"

    const-string/jumbo v1, "queryRevokeStatus fail for obtain mailAdditionalApi fail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    .line 12639
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 12659
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 12660
    if-eqz v1, :cond_0

    .line 12661
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->revokeMail(Ljava/lang/String;Lxv;)V

    :goto_0
    return-void

    .line 12663
    :cond_0
    const-string/jumbo v0, "MailParticipantActivity"

    const-string/jumbo v1, "doRevoke fail for obtain mailAdditionalApi fail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1010
    .local v1, "id":I
    sget v2, Laxo$f;->revoke:I

    if-ne v2, v1, :cond_0

    .line 1011
    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->r:I

    packed-switch v2, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7607
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v2, :cond_0

    .line 8502
    const-string/jumbo v2, "mail_mailrecall_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 7613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    sub-long/2addr v2, v4

    const-wide v4, 0x9a7ec800L

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 7614
    sget v2, Laxo$i;->dt_cmail_revoke_fail_for_thrity_days:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 7617
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7618
    sget v3, Laxo$i;->dt_cmail_sure_revoke:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Laxo$i;->dt_cmail_sure_revoke_des:I

    .line 7619
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Laxo$i;->sure:I

    new-instance v5, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$16;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$16;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 7620
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Laxo$i;->cancel:I

    new-instance v5, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$15;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$15;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 7626
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7632
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1019
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1020
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "account_name"

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string/jumbo v2, "mail_server_id"

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v2, "/mail/revoke_fail.html"

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1011
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "mail.receiverList.appear"

    invoke-static {v1, v3, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget v1, Laxo$g;->activity_mail_participant:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->setContentView(I)V

    .line 145
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    .line 2296
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 151
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_7

    .line 152
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "mail.receiverList.appear"

    invoke-static {v1, v2, v3}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->finish()V

    .line 172
    :cond_1
    :goto_1
    return-void

    .line 2302
    .end local v0    # "result":Z
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2303
    if-nez v1, :cond_3

    move v0, v2

    .line 2304
    goto :goto_0

    .line 2307
    :cond_3
    const-string/jumbo v3, "mail_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    .line 2308
    const-string/jumbo v3, "is_meeting"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->e:Z

    .line 2309
    const-string/jumbo v3, "intent_key_detail_model"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2310
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v1, :cond_4

    move v0, v2

    .line 2311
    goto :goto_0

    .line 2314
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2315
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    invoke-interface {v1, v3, v2, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    .line 2342
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_6

    .line 2343
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 2346
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 2365
    .restart local v0    # "result":Z
    :cond_7
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->e:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_8

    .line 2366
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Laxo$i;->mail_meeting_participant:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2368
    :cond_8
    sget v1, Laxo$f;->mail_participant_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b:Landroid/widget/ListView;

    .line 2369
    sget v1, Laxo$f;->revoke:I

    invoke-static {p0, v1}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->o:Landroid/view/View;

    .line 2370
    sget v1, Laxo$f;->revoke_text:I

    invoke-static {p0, v1}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->p:Landroid/widget/TextView;

    .line 2371
    const v1, 0x102000d

    invoke-static {p0, v1}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->q:Landroid/view/View;

    .line 2373
    sget v1, Laxo$g;->cmail_participant_footer:I

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->c:Landroid/view/View;

    .line 2374
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2375
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->c:Landroid/view/View;

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;Z)V

    .line 2379
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2380
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2381
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->o:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 162
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b()V

    .line 2902
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->h:Landroid/content/BroadcastReceiver;

    .line 2921
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2922
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2923
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3175
    :cond_9
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3176
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    .line 3177
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3178
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3179
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 3204
    invoke-static {v1, v2}, Lafh;->b(Ljava/lang/String;Lxv;)V

    .line 169
    :cond_a
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_1

    .line 3385
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_1

    .line 3386
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3388
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3391
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v5, :cond_b

    .line 3392
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Ljava/util/List;Ljava/util/List;)V

    .line 3395
    :cond_b
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    if-eqz v5, :cond_c

    .line 3396
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-static {v3, v5}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Ljava/util/List;Ljava/util/List;)V

    .line 3399
    :cond_c
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 3400
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v6

    .line 3402
    if-eqz v6, :cond_d

    .line 3403
    iget-object v7, v6, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 3404
    iget-object v7, v6, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3405
    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v6}, Lacn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 3409
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3412
    :cond_d
    const-string/jumbo v5, "cc"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3413
    const-string/jumbo v3, "to"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    const-string/jumbo v2, "from"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3416
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->t:Z

    .line 3417
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 3407
    :cond_e
    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    sget v1, Laxo$i;->act_title_conference:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->j:Landroid/view/MenuItem;

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->j:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v2, Laxo$i;->icon_phone:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->j:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_1

    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$9;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Landroid/view/Menu;)V

    const-class v5, Lxv;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderById(JLxv;)V

    .line 253
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 969
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 970
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 971
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->h:Landroid/content/BroadcastReceiver;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->s:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 976
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->s:Landroid/os/Handler;

    .line 979
    :cond_1
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 980
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
    .line 1034
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    if-nez v5, :cond_1

    .line 9085
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    invoke-virtual {v5, p3}, Lada;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 1039
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    if-eqz v4, :cond_0

    .line 1044
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    invoke-virtual {v5}, Lada;->d()Z

    move-result v3

    .line 1046
    .local v3, "isSelfSent":Z
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1048
    .local v2, "isSameOrg":Z
    iget v0, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 1049
    .local v0, "addressType":I
    const/4 v5, 0x2

    if-ne v5, v0, :cond_2

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    :cond_2
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v5}, Lrx;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1051
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1052
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "account_name"

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v5, "mail_address_list"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v5, "mail_name"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string/jumbo v5, "mail_ding_available"

    iget-boolean v6, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->l:Z

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->l:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v5, :cond_4

    .line 1057
    const-string/jumbo v5, "intent_key_simple_model"

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1059
    :cond_4
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 1060
    const-string/jumbo v5, "mail_server_id"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->mailServerId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_5
    const-string/jumbo v5, "/mail/maillist_participant.html"

    invoke-virtual {p0, v5, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9084
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_6
    if-eqz v4, :cond_0

    .line 9087
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 9088
    invoke-static {p0, v5}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 260
    :pswitch_0
    const-string/jumbo v0, "maillist"

    .line 3934
    const-string/jumbo v1, "mail_meeting_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(I)V

    goto :goto_0

    .line 264
    :pswitch_1
    const-string/jumbo v0, "maillist"

    .line 3946
    const-string/jumbo v1, "mail_ding_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(I)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 984
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 985
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1005
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
    .line 994
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lada;->a(Z)V

    .line 996
    if-nez p2, :cond_0

    .line 997
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->f:Lada;

    invoke-virtual {v0}, Lada;->notifyDataSetChanged()V

    .line 1000
    :cond_0
    return-void

    .line 995
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 989
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 990
    return-void
.end method
