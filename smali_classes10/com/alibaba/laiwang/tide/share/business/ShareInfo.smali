.class public Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# static fields
.field public static final LINK_TYPE:I = 0x4

.field public static final LOCAL_IMAGE_TYPE:I = 0x2

.field public static final MUSIC_TYPE:I = 0x5

.field public static final NET_IMAGE_TYPE:I = 0x3

.field public static final TEXT_TYPE:I = 0x1

.field public static final VIDEO_TYPE:I = 0x6


# instance fields
.field private content:Ljava/lang/String;

.field private defaultPictrueSrcId:I

.field private extention:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkUrl:Ljava/lang/String;

.field private pictureUrl:Ljava/lang/String;

.field private shareKey:Ljava/lang/String;

.field private shareType:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->shareType:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPictrueSrcId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->defaultPictrueSrcId:I

    return v0
.end method

.method public getExtention()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->extention:Ljava/util/Map;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->pictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->shareKey:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->shareType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDefaultPictrueSrcId(I)V
    .locals 0
    .param p1, "defaultPictrueSrcId"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->defaultPictrueSrcId:I

    .line 75
    return-void
.end method

.method public setExtention(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "extention":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->extention:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->linkUrl:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pictureUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->pictureUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setShareKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareKey"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->shareKey:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setShareType(I)V
    .locals 0
    .param p1, "shareType"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->shareType:I

    .line 32
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->title:Ljava/lang/String;

    .line 43
    return-void
.end method
