.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
.super Ljava/lang/Object;
.source "FavContentViewModel.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private cname:Ljava/lang/String;

.field private dingExt:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

.field private extend:Ljava/lang/Object;

.field private msgId:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private orgId:J

.field private realname:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>(Lcky;)V
    .locals 1
    .param p1, "srcInfo"    # Lcky;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;-><init>(Lcky;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcky;Ljava/lang/String;)V
    .locals 1
    .param p1, "srcInfo"    # Lcky;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;-><init>(Lcky;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcky;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "srcInfo"    # Lcky;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_1

    .line 1059
    iget-object v0, p1, Lcky;->a:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->cid:Ljava/lang/String;

    .line 1079
    iget-object v0, p1, Lcky;->h:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->msgId:Ljava/lang/String;

    .line 2063
    iget-wide v0, p1, Lcky;->c:J

    .line 26
    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->uid:J

    .line 2071
    iget-wide v0, p1, Lcky;->g:J

    .line 27
    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->orgId:J

    .line 2087
    iget-object v0, p1, Lcky;->m:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->src:Ljava/lang/String;

    .line 2095
    iget-object v0, p1, Lcky;->n:Lckx;

    .line 29
    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    .line 3095
    iget-object v1, p1, Lcky;->n:Lckx;

    .line 30
    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;-><init>(Lckx;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->dingExt:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    .line 3099
    :cond_0
    iget-object v0, p1, Lcky;->b:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->cname:Ljava/lang/String;

    .line 3107
    iget-object v0, p1, Lcky;->d:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->nick:Ljava/lang/String;

    .line 3115
    iget-object v0, p1, Lcky;->e:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->alias:Ljava/lang/String;

    .line 3123
    iget-object v0, p1, Lcky;->f:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->realname:Ljava/lang/String;

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->title:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->summary:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static fromJson(Ljava/lang/String;I)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "viewType"    # I

    .prologue
    .line 216
    .line 4030
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4031
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 4033
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    invoke-static {v0, p0, v1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    .line 4034
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v1, :cond_0

    .line 4035
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/LinkedTreeMap;

    .line 4037
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4043
    :pswitch_0
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4044
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4039
    :pswitch_1
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4040
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4047
    :pswitch_2
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4048
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4051
    :pswitch_3
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4052
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4055
    :pswitch_4
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4056
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4059
    :pswitch_5
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4060
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4063
    :pswitch_6
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4064
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4067
    :pswitch_7
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4068
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto :goto_0

    .line 4071
    :pswitch_8
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4072
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4075
    :pswitch_9
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4076
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4079
    :pswitch_a
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 4080
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4037
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->dingExt:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    return-object v0
.end method

.method public getExtend()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->extend:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->orgId:J

    return-wide v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->uid:J

    return-wide v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->alias:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->cid:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->cname:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setDingExt(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;)V
    .locals 0
    .param p1, "dingExt"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->dingExt:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    .line 169
    return-void
.end method

.method public setExtend(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extend"    # Ljava/lang/Object;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->extend:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->msgId:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->nick:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->orgId:J

    .line 128
    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0
    .param p1, "realname"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->realname:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->src:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->summary:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->title:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->uid:J

    .line 120
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
