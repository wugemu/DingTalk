.class public Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "MtopClientMudpUpdateResponse.java"


# instance fields
.field private data:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;->data:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;->getData()Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;->data:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;

    .line 41
    return-void
.end method
