.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;
.super Ljava/lang/Object;
.source "FavDingExtend.java"


# instance fields
.field private authCode:Ljava/lang/String;

.field private authMediaId:Ljava/lang/String;

.field private duration:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private volumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lckx;)V
    .locals 2
    .param p1, "dingExtend"    # Lckx;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 1064
    iget-object v0, p1, Lckx;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->title:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p1, Lckx;->b:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->url:Ljava/lang/String;

    .line 1080
    iget-wide v0, p1, Lckx;->e:J

    .line 19
    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->duration:J

    .line 1088
    iget-object v0, p1, Lckx;->f:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->volumns:Ljava/util/List;

    .line 1096
    iget-object v0, p1, Lckx;->c:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->authMediaId:Ljava/lang/String;

    .line 1104
    iget-object v0, p1, Lckx;->d:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->authCode:Ljava/lang/String;

    .line 25
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->url:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->duration:J

    .line 44
    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->volumns:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->authMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->duration:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->volumns:Ljava/util/List;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->authCode:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->authMediaId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->duration:J

    .line 91
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->title:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->url:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setVolumns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->volumns:Ljava/util/List;

    .line 99
    return-void
.end method
