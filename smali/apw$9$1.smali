.class final Lapw$9$1;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapw$9;


# direct methods
.method constructor <init>(Lapw$9;)V
    .locals 0
    .param p1, "this$1"    # Lapw$9;

    .prologue
    .line 503
    iput-object p1, p0, Lapw$9$1;->a:Lapw$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 503
    check-cast p1, Ljava/util/List;

    .line 1506
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[queryInstances]folderId,"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v2, v2, Lapw$9;->b:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, ", result size:"

    aput-object v2, v1, v0

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v1, v0, Lapw$9;->g:Ljava/util/List;

    .line 2176
    if-nez p1, :cond_1

    .line 2177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1508
    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v1, v0, Lapw$9;->h:Lapw;

    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-wide v2, v0, Lapw$9;->c:J

    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-wide v4, v0, Lapw$9;->d:J

    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v6, v0, Lapw$9;->e:Ljava/util/List;

    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v7, v0, Lapw$9;->a:Ljava/util/Map;

    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v8, v0, Lapw$9;->f:Lcom/alibaba/wukong/Callback;

    iget-object v0, p0, Lapw$9$1;->a:Lapw$9;

    iget-object v9, v0, Lapw$9;->g:Ljava/util/List;

    invoke-static/range {v1 .. v9}, Lapw;->a(Lapw;JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 503
    return-void

    .line 1506
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2179
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method
