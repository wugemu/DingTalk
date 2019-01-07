.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldnf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a(Ljava/lang/Object;Ldqq$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ldqq$c;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;Ljava/lang/Object;Ldqq$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->b:Ldqq$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Ldiu;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/Object;)V

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->b:Ldqq$c;

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->b:Ldqq$c;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ldqq$c;->b(Ljava/lang/Object;)V

    .line 2148
    :cond_0
    return-void
.end method
