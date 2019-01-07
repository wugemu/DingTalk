.class public interface abstract Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;
.super Ljava/lang/Object;
.source "CSpaceService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addDentry(Lggv;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lggv;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addDentryByBatch(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lggu;",
            ">;",
            "Liyv",
            "<",
            "Lggz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract authDownload(Lggx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lggx;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cSpaceMonitor(Lghp;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghp;",
            "Liyv",
            "<",
            "Lghq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createDentryByTemplate(Lghj;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghj;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createDentryLink(Lggv;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lggv;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createShare(Lgjt;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgjt;",
            "Liyv",
            "<",
            "Lgjz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createTeamAlbumAPP(Lgjr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgjr;",
            "Liyv",
            "<",
            "Lgjq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteDentry(Lghc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghc;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteShare(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Lgjz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dentryBatchAddCheck(Lgkx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkx;",
            "Liyv",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConversationSpace(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDentryTemplate(Lghj;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghj;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getIndustryOperationUrl(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLastSyncTime(Lgif;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgif;",
            "Liyv",
            "<",
            "Lgig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOrgGroupSyncStatus(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lgij;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTeamAlbumAppInfo(Lgjr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgjr;",
            "Liyv",
            "<",
            "Lgjq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTempSpace(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getToken(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract infoAclShare(Lgju;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgju;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract infoDeletedDentry(Lghl;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghl;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract infoDentry(Lghl;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghl;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract infoMediaInfo(Lghn;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghn;",
            "Liyv",
            "<",
            "Lgho;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract infoShare(Lgju;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgju;",
            "Liyv",
            "<",
            "Lgjz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract infoSpace(Lghm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghm;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isAllowToCreateAlbumApp(Lgjr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgjr;",
            "Liyv",
            "<",
            "Lgjq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDentry(Lghh;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghh;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDentryExt(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghh;",
            ">;",
            "Liyv",
            "<",
            "Lghy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFiles(Lghk;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghk;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listRecentFile(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lghu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listShare(Lgjx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgjx;",
            "Liyv",
            "<",
            "Lgjz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listSpace(Lgid;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgid;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listUidsByFileIdAndAccessType(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Liyv",
            "<",
            "Lghe;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract play(Lgkc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkc;",
            "Liyv",
            "<",
            "Lgkb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract playMedia(Lghs;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghs;",
            "Liyv",
            "<",
            "Lgka;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preview(Lghs;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghs;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract renameDentry(Lghv;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghv;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract search(Lgib;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgib;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchByTypes(Lgia;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgia;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchV2(Lgib;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgib;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOrgGroupSyncStatus(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgij;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract transferDentry(Lgik;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgik;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSpaceExtensionById(Ljava/lang/Long;Ljava/util/Map;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Lghz;",
            ">;)V"
        }
    .end annotation
.end method
