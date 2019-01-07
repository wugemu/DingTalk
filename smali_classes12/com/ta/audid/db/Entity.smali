.class public Lcom/ta/audid/db/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# static fields
.field private static hasCheckdb:Z
    .annotation runtime Lcom/ta/audid/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field public _id:J
    .annotation runtime Lcom/ta/audid/db/annotation/Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ta/audid/db/Entity;->hasCheckdb:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ta/audid/db/Entity;->_id:J

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/db/DBMgr;->delete(Lcom/ta/audid/db/Entity;)I

    .line 43
    return-void
.end method

.method public store()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/db/DBMgr;->insert(Lcom/ta/audid/db/Entity;)V

    .line 36
    return-void
.end method
