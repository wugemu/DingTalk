.class public Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "AutoTryTaskEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "autotask"
.end annotation


# static fields
.field public static final ACCOUNTID:Ljava/lang/String; = "accountId"

.field public static final AUTOTRYFAILURETYPE:Ljava/lang/String; = "failuretype"

.field public static final AUTOTRYNETWORK:Ljava/lang/String; = "networktype"

.field public static final CMMDBIZUUID:Ljava/lang/String; = "bizuuid"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MAXTRY:Ljava/lang/String; = "maxtry"

.field public static final REFERENCEID:Ljava/lang/String; = "referenceid"

.field public static final STATUS:Ljava/lang/String; = "taskstatus"

.field public static final StatusFailure:I = 0x1

.field public static final StatusNormal:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "autotask"

.field public static final TASKCLASSNAME:Ljava/lang/String; = "taskclsname"

.field public static final TASKCONTEXT:Ljava/lang/String; = "bizcontext"

.field public static final TRYCOUNT:Ljava/lang/String; = "_count"


# instance fields
.field public accountId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        index = true
        name = "accountId"
        nullable = false
    .end annotation
.end field

.field public autoTryFailureType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "failuretype"
        nullable = false
    .end annotation
.end field

.field public autoTryNetwork:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "networktype"
        nullable = false
    .end annotation
.end field

.field public cmmdBizUUId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        indexGroups = {
            "index_autotask_taskname_cmmd"
        }
        name = "bizuuid"
        nullable = false
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        isAutoincrement = true
        name = "_id"
    .end annotation
.end field

.field public maxTry:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        defaultValue = "1"
        name = "maxtry"
        nullable = false
    .end annotation
.end field

.field public referenceid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "referenceid"
    .end annotation
.end field

.field public taskClassName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        indexGroups = {
            "index_autotask_taskname_cmmd"
        }
        name = "taskclsname"
        nullable = false
    .end annotation
.end field

.field public taskContext:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "bizcontext"
    .end annotation
.end field

.field public taskStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        defaultValue = "0"
        name = "taskstatus"
        nullable = false
    .end annotation
.end field

.field public tryCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        defaultValue = "1"
        name = "_count"
        nullable = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
