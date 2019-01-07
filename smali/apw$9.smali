.class final Lapw$9;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapw;->a(JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/alibaba/wukong/Callback;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Lapw;


# direct methods
.method constructor <init>(Lapw;Ljava/util/Map;Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lapw;

    .prologue
    .line 491
    iput-object p1, p0, Lapw$9;->h:Lapw;

    iput-object p2, p0, Lapw$9;->a:Ljava/util/Map;

    iput-object p3, p0, Lapw$9;->b:Ljava/lang/String;

    iput-wide p4, p0, Lapw$9;->c:J

    iput-wide p6, p0, Lapw$9;->d:J

    iput-object p8, p0, Lapw$9;->e:Ljava/util/List;

    iput-object p9, p0, Lapw$9;->f:Lcom/alibaba/wukong/Callback;

    iput-object p10, p0, Lapw$9;->g:Ljava/util/List;

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
    .line 491
    .line 1494
    iget-object v0, p0, Lapw$9;->a:Ljava/util/Map;

    iget-object v1, p0, Lapw$9;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lasl;

    .line 1495
    if-nez v7, :cond_0

    .line 1496
    iget-object v1, p0, Lapw$9;->h:Lapw;

    iget-wide v2, p0, Lapw$9;->c:J

    iget-wide v4, p0, Lapw$9;->d:J

    iget-object v6, p0, Lapw$9;->e:Ljava/util/List;

    iget-object v7, p0, Lapw$9;->a:Ljava/util/Map;

    iget-object v8, p0, Lapw$9;->f:Lcom/alibaba/wukong/Callback;

    iget-object v9, p0, Lapw$9;->g:Ljava/util/List;

    invoke-static/range {v1 .. v9}, Lapw;->a(Lapw;JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 1497
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v1

    iget-wide v2, p0, Lapw$9;->c:J

    iget-wide v4, p0, Lapw$9;->d:J

    new-instance v6, Lapw$9$1;

    invoke-direct {v6, p0}, Lapw$9$1;-><init>(Lapw$9;)V

    .line 2067
    invoke-static {}, Latf;->a()Latf;

    move-result-object v8

    new-instance v0, Lapy$1;

    invoke-direct/range {v0 .. v7}, Lapy$1;-><init>(Lapy;JJLapv;Lasl;)V

    invoke-virtual {v8, v0}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
