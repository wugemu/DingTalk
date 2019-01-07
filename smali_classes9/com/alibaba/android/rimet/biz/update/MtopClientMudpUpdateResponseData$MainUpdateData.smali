.class public Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;
.super Ljava/lang/Object;
.source "MtopClientMudpUpdateResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainUpdateData"
.end annotation


# instance fields
.field private channelNum:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private httpsUrl:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private info2:Ljava/lang/String;

.field private info3:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageUrl:Ljava/lang/String;

.field private remindCount:I

.field private remindStrategy:I

.field private size:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->channelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->httpsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->info2:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->info3:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->packageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->remindCount:I

    return v0
.end method

.method public getRemindStrategy()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->remindStrategy:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->size:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelNum"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->channelNum:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->etag:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setHttpsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpsUrl"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->httpsUrl:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->info:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setInfo2(Ljava/lang/String;)V
    .locals 0
    .param p1, "info2"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->info2:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setInfo3(Ljava/lang/String;)V
    .locals 0
    .param p1, "info3"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->info3:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->md5:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setPackageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageUrl"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->packageUrl:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRemindCount(I)V
    .locals 0
    .param p1, "remindCount"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->remindCount:I

    .line 140
    return-void
.end method

.method public setRemindStrategy(I)V
    .locals 0
    .param p1, "remindStrategy"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->remindStrategy:I

    .line 148
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->size:I

    .line 124
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->version:Ljava/lang/String;

    .line 132
    return-void
.end method
