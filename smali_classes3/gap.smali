.class public final Lgap;
.super Ljava/lang/Object;
.source "FavoriteConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 5
    .param p0, "srcInfo"    # Lcky;
    .param p1, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    const-string/jumbo v2, "mail"

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-static {v2, v3, v4, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 187
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;

    invoke-direct {v1, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V

    .line 188
    .local v1, "mailModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 191
    .end local v0    # "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .end local v1    # "mailModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 4
    .param p0, "srcInfo"    # Lcky;
    .param p1, "namecardDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .prologue
    const/4 v0, 0x0

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string/jumbo v2, "card"

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    invoke-static {v2, v3, v0, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 203
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;

    invoke-direct {v1, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)V

    .line 204
    .local v1, "nameCardModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 207
    .end local v0    # "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .end local v1    # "nameCardModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavNameCardModel;
    :cond_0
    return-object v0
.end method

.method public static a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 4
    .param p0, "srcInfo"    # Lcky;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    const-string/jumbo v2, "space"

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 171
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    invoke-direct {v1, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 172
    .local v1, "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 175
    .end local v0    # "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .end local v1    # "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    :cond_0
    return-object v0
.end method

.method public static a(Lcky;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 4
    .param p0, "srcInfo"    # Lcky;
    .param p1, "videoContent"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .prologue
    const/4 v3, 0x0

    .line 95
    const-string/jumbo v2, "video2"

    invoke-static {v2, v3, v3, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 96
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;

    invoke-direct {v1, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;-><init>(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    .line 97
    .local v1, "videoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 98
    return-object v0
.end method

.method public static a(Lcky;Lcom/alibaba/wukong/im/MessageContent$GeoContent;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 4
    .param p0, "srcInfo"    # Lcky;
    .param p1, "geoContent"    # Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .prologue
    const/4 v0, 0x0

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string/jumbo v2, "gis"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 123
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;

    invoke-direct {v1, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;-><init>(Lcom/alibaba/wukong/im/MessageContent$GeoContent;)V

    .line 124
    .local v1, "gisModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 127
    .end local v0    # "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .end local v1    # "gisModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;
    :cond_0
    return-object v0
.end method

.method public static a(Lcky;Lcom/alibaba/wukong/im/MessageContent$VideoContent;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 4
    .param p0, "srcInfo"    # Lcky;
    .param p1, "videoContent"    # Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string/jumbo v2, "video"

    invoke-static {v2, v3, v3, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 83
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    invoke-direct {v1, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;-><init>(Lcom/alibaba/wukong/im/MessageContent$VideoContent;)V

    .line 84
    .local v1, "videoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 85
    return-object v0
.end method

.method public static a(Lcky;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 3
    .param p0, "srcInfo"    # Lcky;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string/jumbo v1, "text"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 40
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    return-object v0
.end method

.method public static a(Lcky;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 8
    .param p0, "srcInfo"    # Lcky;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcky;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;"
        }
    .end annotation

    .prologue
    .local p4, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 69
    const-string/jumbo v2, "audio"

    invoke-static {v2, v3, v3, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 70
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;-><init>(Ljava/lang/String;Lcky;JLjava/util/List;)V

    .line 71
    .local v1, "audioModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 72
    return-object v0
.end method

.method public static a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 9
    .param p0, "srcInfo"    # Lcky;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "size"    # J
    .param p7, "hasOrigin"    # Z

    .prologue
    .line 55
    const-string/jumbo v2, "pic"

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 56
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    if-eqz p7, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcky;IJI)V

    .line 57
    .local v1, "picModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 58
    return-object v0

    .line 56
    .end local v1    # "picModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 4
    .param p0, "srcInfo"    # Lcky;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 140
    const-string/jumbo v2, "file"

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 141
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 142
    .local v1, "fileModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 143
    return-object v0
.end method

.method public static a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 3
    .param p0, "srcInfo"    # Lcky;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string/jumbo v2, "link"

    invoke-static {v2, p1, p2, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 157
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;

    invoke-direct {v1, p3, p4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, "linkModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 159
    return-object v0
.end method

.method public static a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 3
    .param p0, "srcInfo"    # Lcky;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .param p5, "medieId"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v2, "oa"

    invoke-static {v2, p1, p2, p0}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    .line 222
    .local v1, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;

    invoke-direct {v0, p3, p4, p5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, "aoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 224
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "srcInfo"    # Lcky;

    .prologue
    .line 228
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v1, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    invoke-direct {v0, p3, p1, p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;-><init>(Lcky;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v0, "contentViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->setContent(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;)V

    .line 231
    return-object v1
.end method
