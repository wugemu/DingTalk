.class Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
.super Ljava/lang/Object;
.source "AlivcVideoConfImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubscribeInfo"
.end annotation


# instance fields
.field private callId:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private isUnsubscribe:Z

.field private session:Ljava/lang/String;

.field private srcVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

.field private subscribeConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;",
            "Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

.field private userId:Ljava/lang/String;

.field private videoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;


# direct methods
.method private constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;)V
    .locals 1

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->subscribeConfig:Ljava/util/Map;

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p2, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$1;

    .prologue
    .line 1822
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->videoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    return-object v0
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->srcVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    return-object v0
.end method

.method public getSubscribeConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;",
            "Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->subscribeConfig:Ljava/util/Map;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->videoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    return-object v0
.end method

.method public isUnsubscribe()Z
    .locals 1

    .prologue
    .line 1857
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe:Z

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->callId:Ljava/lang/String;

    .line 1846
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->display:Ljava/lang/String;

    .line 1886
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->session:Ljava/lang/String;

    .line 1878
    return-void
.end method

.method public setSrcVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 0
    .param p1, "srcVideoType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->srcVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 1894
    return-void
.end method

.method public setSubscribeConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;",
            "Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1869
    .local p1, "subscribeConfig":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->subscribeConfig:Ljava/util/Map;

    .line 1870
    return-void
.end method

.method public setUnsubscribe(Z)V
    .locals 0
    .param p1, "unsubscribe"    # Z

    .prologue
    .line 1861
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe:Z

    .line 1862
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->userId:Ljava/lang/String;

    .line 1838
    return-void
.end method

.method public setVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 0
    .param p1, "videoType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 1853
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->videoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 1854
    return-void
.end method
