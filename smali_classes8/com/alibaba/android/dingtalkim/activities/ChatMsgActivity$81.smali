.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldqq$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ldqq$c;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Ldqq$c;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2139
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L:Ldnf;

    if-eqz v1, :cond_1

    .line 2140
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;Ljava/lang/Object;Ldqq$c;)V

    const-class v3, Ldnf$a;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnf$a;

    .line 2150
    .local v0, "onLoadResultCallback":Ldnf$a;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L:Ldnf;

    invoke-virtual {v1, p1, v0}, Ldnf;->a(Ljava/lang/Object;Ldnf$a;)V

    .line 2158
    .end local v0    # "onLoadResultCallback":Ldnf$a;
    :cond_0
    :goto_0
    return-void

    .line 2152
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, p1}, Ldiu;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/Object;)V

    .line 2153
    if-eqz p2, :cond_0

    .line 2154
    invoke-virtual {p2, p1}, Ldqq$c;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
