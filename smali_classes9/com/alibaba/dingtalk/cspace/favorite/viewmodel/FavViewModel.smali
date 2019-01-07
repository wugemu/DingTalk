.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
.super Ljava/lang/Object;
.source "FavViewModel.java"


# static fields
.field public static final TYPE_AUDIO:I = 0x2

.field public static final TYPE_COMMON_VIDEO:I = 0xc

.field private static final TYPE_COMPATIBLE_AO:Ljava/lang/String; = "ao"

.field public static final TYPE_FILE:I = 0x5

.field public static final TYPE_GIS:I = 0xb

.field public static final TYPE_LINK:I = 0x4

.field public static final TYPE_MAIl:I = 0x7

.field public static final TYPE_NAMECARD:I = 0x8

.field public static final TYPE_OA:I = 0x9

.field public static final TYPE_PIC:I = 0x3

.field public static final TYPE_SPACE:I = 0x6

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_UNKNOW:I = 0x0

.field public static final TYPE_VIDEO:I = 0xa


# instance fields
.field private content:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

.field private id:J

.field private modifiedTime:J

.field private serverId:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private viewType:I


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/fav/model/FavoriteModel;)V
    .locals 2
    .param p1, "favoriteModel"    # Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->id:J

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->serverId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->type:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->tag:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->title:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->summary:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->modifiedTime:J

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->initType(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContent()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->fromJson(Ljava/lang/String;I)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->content:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->type:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->title:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->summary:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->initType(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private initType(Ljava/lang/String;)V
    .locals 1
    .param p1, "favoriteType"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string/jumbo v0, "pic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 67
    :cond_3
    const-string/jumbo v0, "link"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 69
    :cond_4
    const-string/jumbo v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 71
    :cond_5
    const-string/jumbo v0, "space"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 73
    :cond_6
    const-string/jumbo v0, "mail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 75
    :cond_7
    const-string/jumbo v0, "card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto :goto_0

    .line 77
    :cond_8
    const-string/jumbo v0, "oa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "ao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    :cond_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto/16 :goto_0

    .line 79
    :cond_a
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto/16 :goto_0

    .line 81
    :cond_b
    const-string/jumbo v0, "gis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto/16 :goto_0

    .line 83
    :cond_c
    const-string/jumbo v0, "video2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->content:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    return-object v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->id:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->modifiedTime:J

    return-wide v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    return v0
.end method

.method public setContent(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;)V
    .locals 0
    .param p1, "content"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->content:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    .line 187
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->id:J

    .line 139
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->modifiedTime:J

    .line 179
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->serverId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->summary:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->tag:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->title:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->type:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->viewType:I

    .line 163
    return-void
.end method
