.class public final Lafb;
.super Ljava/lang/Object;
.source "MailParticipantsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafb$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field public b:Ljava/lang/String;

.field c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lafb$a;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafb;->f:Z

    .line 39
    iput-object p1, p0, Lafb;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    iput-object p2, p0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 42
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lafb;->b:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lafb;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafb;->f:Z

    .line 47
    :cond_1
    return-void
.end method

.method static synthetic a(Lafb;)V
    .locals 2
    .param p0, "x0"    # Lafb;

    .prologue
    .line 27
    .line 1215
    iget-object v0, p0, Lafb;->e:Lafb$a;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lafb;->e:Lafb$a;

    iget-object v1, p0, Lafb;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Lafb$a;->a(Ljava/util/Map;)V

    .line 27
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)V
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
    .line 99
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    .local p1, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-nez p1, :cond_1

    .line 113
    :cond_0
    return-void

    .line 103
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

    .line 104
    .local v0, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 105
    .local v1, "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 106
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v3}, Lacn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 111
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_2
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 10
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

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 122
    .local p1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    if-eqz p1, :cond_6

    .line 123
    const-string/jumbo v5, "to"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 124
    .local v4, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    const-string/jumbo v5, "cc"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    .local v0, "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    const-string/jumbo v5, "from"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 126
    .local v2, "froms":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 128
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 129
    .local v3, "participant":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v6}, Lafh;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v3    # "participant":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_1
    if-eqz v0, :cond_3

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 136
    .restart local v3    # "participant":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v6}, Lafh;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v3    # "participant":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_3
    if-eqz v2, :cond_5

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 143
    .restart local v3    # "participant":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v6}, Lafh;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    .end local v3    # "participant":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 150
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v5, "EVENTBUTLER"

    .line 151
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lafb$1;

    invoke-direct {v7, p0, v1}, Lafb$1;-><init>(Lafb;Ljava/util/List;)V

    const-class v8, Lcma;

    iget-object v9, p0, Lafb;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 152
    invoke-interface {v5, v7, v8, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 150
    invoke-virtual {v6, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/List;Lcma;)V

    .line 185
    .end local v0    # "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    .end local v1    # "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "froms":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    .end local v4    # "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    :cond_6
    return-void
.end method
