.class final Lejp$1;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejp;


# direct methods
.method constructor <init>(Lejp;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 92
    iput-object p1, p0, Lejp$1;->a:Lejp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v1, p0, Lejp$1;->a:Lejp;

    invoke-static {v1}, Lejp;->a(Lejp;)V

    .line 96
    iget-object v1, p0, Lejp$1;->a:Lejp;

    .line 1048
    iget-object v0, v1, Lejp;->g:Ljava/util/List;

    .line 97
    .local v0, "remindCorps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lejp$1;->a:Lejp;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    invoke-static {v2, v1}, Lejp;->a(Lejp;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lejp$1;->a:Lejp;

    .line 2118
    iget-object v2, v1, Lejp;->a:Landroid/app/Activity;

    .line 2119
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2122
    const-string/jumbo v3, "HomeAttendanceManger"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lejp$5;

    invoke-direct {v4, v1, v2, v0}, Lejp$5;-><init>(Lejp;Landroid/app/Activity;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
