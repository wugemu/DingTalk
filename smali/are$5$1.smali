.class final Lare$5$1;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lare$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lare$5;


# direct methods
.method constructor <init>(Lare$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lare$5;

    .prologue
    .line 254
    iput-object p1, p0, Lare$5$1;->b:Lare$5;

    iput-object p2, p0, Lare$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "aliMailFolderList":Ljava/util/List;, "Ljava/util/List<Laro;>;"
    iget-object v3, p0, Lare$5$1;->a:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lare$5$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    iget-object v3, p0, Lare$5$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;

    .line 263
    .local v2, "calendarObject":Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;
    if-eqz v2, :cond_0

    .line 267
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[AliMailFolderManager] loadAliMailFoldersFromRemote CalendarObject="

    aput-object v5, v4, v7

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 269
    invoke-static {v2}, Laro;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;)Laro;

    move-result-object v0

    .line 270
    .local v0, "aliMailFolder":Laro;
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0    # "aliMailFolder":Laro;
    .end local v2    # "calendarObject":Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;
    :cond_1
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "[AliMailFolderManager] loadAliMailFoldersFromRemote calendarObjects="

    aput-object v3, v4, v7

    iget-object v3, p0, Lare$5$1;->a:Ljava/util/List;

    if-nez v3, :cond_2

    const-string/jumbo v3, "0"

    .line 279
    :goto_1
    aput-object v3, v4, v6

    const-string/jumbo v3, ", aliMailFolderList.size="

    aput-object v3, v4, v8

    const/4 v3, 0x3

    .line 280
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 278
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lare$5$1;->b:Lare$5;

    iget-object v3, v3, Lare$5;->b:Lare;

    invoke-static {v3, v1}, Lare;->a(Lare;Ljava/util/List;)V

    .line 283
    iget-object v3, p0, Lare$5$1;->b:Lare$5;

    iget-object v3, v3, Lare$5;->b:Lare;

    invoke-static {v3}, Lare;->e(Lare;)Latq;

    move-result-object v3

    invoke-interface {v3, v1}, Latq;->a(Ljava/util/List;)I

    .line 285
    iget-object v3, p0, Lare$5$1;->b:Lare$5;

    iget-object v3, v3, Lare$5;->b:Lare;

    invoke-static {v3, v6}, Lare;->a(Lare;Z)Z

    .line 286
    iget-object v3, p0, Lare$5$1;->b:Lare$5;

    iget-object v3, v3, Lare$5;->b:Lare;

    invoke-static {v3}, Lare;->a(Lare;)V

    .line 288
    iget-object v3, p0, Lare$5$1;->b:Lare$5;

    iget-object v3, v3, Lare$5;->a:Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lare$5$1;->b:Lare$5;

    iget-object v4, v4, Lare$5;->b:Lare;

    invoke-static {v4}, Lare;->c(Lare;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 289
    return-void

    .line 278
    :cond_2
    iget-object v3, p0, Lare$5$1;->a:Ljava/util/List;

    .line 279
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
