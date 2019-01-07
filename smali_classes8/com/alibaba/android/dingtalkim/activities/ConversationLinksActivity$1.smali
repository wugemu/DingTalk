.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;
.super Ljava/lang/Object;
.source "ConversationLinksActivity.java"

# interfaces
.implements Lcqt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 156
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;)V

    .line 192
    .local v0, "listener":Lcma;, "Lcma<Lgqw;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Z)Z

    .line 193
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V

    .line 195
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lgqw;>;"
    check-cast v0, Lcma;

    .line 196
    .restart local v0    # "listener":Lcma;, "Lcma<Lgqw;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/Map;ZLcma;)V

    .line 197
    return-void
.end method
