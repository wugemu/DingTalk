.class final Latf$9;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Latf;


# direct methods
.method constructor <init>(Latf;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 389
    iput-object p1, p0, Latf$9;->d:Latf;

    iput-wide p2, p0, Latf$9;->a:J

    iput-object p4, p0, Latf$9;->b:Ljava/lang/String;

    iput-object p5, p0, Latf$9;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 392
    iget-object v0, p0, Latf$9;->d:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-wide v2, p0, Latf$9;->a:J

    iget-object v1, p0, Latf$9;->b:Ljava/lang/String;

    iget-object v4, p0, Latf$9;->c:Lcom/alibaba/wukong/Callback;

    .line 1770
    new-instance v5, Lauj;

    invoke-direct {v5, v2, v3, v1}, Lauj;-><init>(JLjava/lang/String;)V

    .line 1775
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    iget-object v0, v0, Lapw;->a:Latu;

    invoke-interface {v0, v1}, Latu;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1778
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1779
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "local no exist data."

    invoke-static {v4, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1781
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method
