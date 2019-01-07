.class public Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;
.super Ljava/lang/Object;
.source "MtopClientMudpUpdateResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;,
        Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;
    }
.end annotation


# instance fields
.field private hasUpdate:Z

.field private main:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public getMain()Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;->main:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;

    return-object v0
.end method

.method public isHasUpdate()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;->hasUpdate:Z

    return v0
.end method

.method public setHasUpdate(Z)V
    .locals 0
    .param p1, "hasUpdate"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;->hasUpdate:Z

    .line 33
    return-void
.end method

.method public setMain(Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;)V
    .locals 0
    .param p1, "main"    # Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;->main:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;

    .line 41
    return-void
.end method
