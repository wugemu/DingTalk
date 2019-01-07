.class public abstract Lagn;
.super Ljava/lang/Object;
.source "AbsOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected b:Z

.field protected c:Lcom/alibaba/alimei/orm/IDatabase;

.field protected d:Lagj;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lagn;, "Lagn<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lagn;-><init>(Z)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "isSync"    # Z

    .prologue
    .line 35
    .local p0, "this":Lagn;, "Lagn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lagn;->b:Z

    .line 1064
    const-string/jumbo v0, "calendar.db"

    .line 37
    invoke-static {v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    iput-object v0, p0, Lagn;->c:Lcom/alibaba/alimei/orm/IDatabase;

    .line 38
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    iput-object v0, p0, Lagn;->d:Lagj;

    .line 39
    return-void
.end method


# virtual methods
.method protected final b(J)V
    .locals 5
    .param p1, "eventId"    # J

    .prologue
    .line 69
    .local p0, "this":Lagn;, "Lagn<TT;>;"
    iget-object v0, p0, Lagn;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v1, "UPDATE Events SET dirty=1 WHERE _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method
