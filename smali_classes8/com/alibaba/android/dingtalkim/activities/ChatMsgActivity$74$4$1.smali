.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1617
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1620
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-string/jumbo v1, "to"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1624
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    invoke-virtual {v1, p1}, Ldiz;->a(Ljava/lang/Object;)V

    .line 1626
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1635
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1636
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1631
    return-void
.end method
