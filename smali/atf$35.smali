.class public final Latf$35;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 198
    iput-object p1, p0, Latf$35;->c:Latf;

    iput-object p2, p0, Latf$35;->a:Ljava/util/List;

    iput-object p3, p0, Latf$35;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Latf$35;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$35;->a:Ljava/util/List;

    iget-object v2, p0, Latf$35;->b:Lcom/alibaba/wukong/Callback;

    .line 1311
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1312
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "[deleteCalendarFromLocalByCalendarId]failed"

    invoke-static {v2, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :goto_0
    return-void

    .line 1316
    :cond_1
    iget-object v0, v0, Lapw;->a:Latu;

    invoke-interface {v0, v1}, Latu;->b(Ljava/util/List;)I

    move-result v0

    .line 1317
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1318
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 1320
    :cond_2
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "[deleteCalendarFromLocalByCalendarId] delete failure."

    invoke-static {v2, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
