.class public interface abstract Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
.super Ljava/lang/Object;
.source "MeetingRoomIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract LocalShareCreate(Legz;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legz;",
            "Liyv",
            "<",
            "Lehi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract RemoteShareCreate(Lehh;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehh;",
            "Liyv",
            "<",
            "Lehi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ShareTerminate(Lehj;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehj;",
            "Liyv",
            "<",
            "Lehk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConfig(Legu;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legu;",
            "Liyv",
            "<",
            "Legv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceInfo(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcdi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideoDeviceResultList(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lehf;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract localShareStatusIndication(Leha;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leha;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract localShareStatusIndicationV2(Leha;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leha;",
            "Liyv",
            "<",
            "Lehb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMeetingUsersStatus(Lehe;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehe;",
            "Liyv",
            "<",
            "Lehe;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportNetIsolationInfo(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDevInformation(Lehc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehc;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDevStatus(Lehd;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehd;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateMeetingUsersStatus(Lehe;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehe;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
