.class public final Lapw$7;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/List",
        "<",
        "Lasl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lapw;


# direct methods
.method public constructor <init>(Lapw;Lcom/alibaba/wukong/Callback;JJ)V
    .locals 1
    .param p1, "this$0"    # Lapw;

    .prologue
    .line 426
    iput-object p1, p0, Lapw$7;->d:Lapw;

    iput-object p2, p0, Lapw$7;->a:Lcom/alibaba/wukong/Callback;

    iput-wide p3, p0, Lapw$7;->b:J

    iput-wide p5, p0, Lapw$7;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 426
    check-cast p1, Ljava/util/List;

    .line 1429
    if-nez p1, :cond_0

    .line 1430
    iget-object v0, p0, Lapw$7;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "[CalendarDataCenter]queryInstanceShowObjects failed, folderObject is null"

    invoke-static {v0, v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :goto_0
    return-void

    .line 1433
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 1437
    if-eqz v0, :cond_1

    .line 2042
    iget-object v2, v0, Lasl;->a:Ljava/lang/String;

    .line 1440
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3042
    iget-object v2, v0, Lasl;->a:Ljava/lang/String;

    .line 1441
    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1443
    :cond_2
    iget-object v1, p0, Lapw$7;->d:Lapw;

    iget-wide v2, p0, Lapw$7;->b:J

    iget-wide v4, p0, Lapw$7;->c:J

    iget-object v8, p0, Lapw$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v1 .. v8}, Lapw;->a(Lapw;JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
