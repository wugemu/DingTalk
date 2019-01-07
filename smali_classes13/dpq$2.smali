.class final Ldpq$2;
.super Ljava/lang/Object;
.source "MenuVoiceTranslateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpq;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldpq;


# direct methods
.method constructor <init>(Ldpq;Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldpq;

    .prologue
    .line 64
    iput-object p1, p0, Ldpq$2;->c:Ldpq;

    iput-object p2, p0, Ldpq$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iput-object p3, p0, Ldpq$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    const-string/jumbo v0, "key_allow_trans_encrypt_voice"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 68
    iget-object v0, p0, Ldpq$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Ldpq$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v0

    iget-object v1, p0, Ldpq$2;->b:Lcom/alibaba/wukong/im/Message;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;I)V

    .line 71
    :cond_0
    return-void
.end method
