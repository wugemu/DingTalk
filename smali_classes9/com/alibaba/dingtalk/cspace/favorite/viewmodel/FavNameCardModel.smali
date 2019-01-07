.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;
.super Ljava/lang/Object;
.source "FavNameCardModel.java"


# instance fields
.field private avatarMediaId:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private type:I

.field private uid:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)V
    .locals 2
    .param p1, "namecardDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->avatarMediaId:Ljava/lang/String;

    .line 16
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->uid:J

    .line 17
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->type:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->type:I

    .line 18
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->phone:Ljava/lang/String;

    .line 20
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 0
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getAvatarMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->avatarMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->type:I

    return v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->uid:J

    return-wide v0
.end method

.method public setAvatarMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarMediaId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->avatarMediaId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->phone:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->type:I

    .line 88
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;->uid:J

    .line 80
    return-void
.end method
