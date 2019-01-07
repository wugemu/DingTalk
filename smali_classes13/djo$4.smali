.class final Ldjo$4;
.super Ljava/lang/Object;
.source "EmotionSendManager.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjo;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ldjo;


# direct methods
.method constructor <init>(Ldjo;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Ldjo;

    .prologue
    .line 130
    iput-object p1, p0, Ldjo$4;->c:Ldjo;

    iput-object p2, p0, Ldjo$4;->a:Ljava/lang/String;

    iput-object p3, p0, Ldjo$4;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Ldjo$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldjo$4;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Ldjo$4;->a:Ljava/lang/String;

    .line 1413
    invoke-virtual {v0, v1, v2, v2}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 135
    :cond_0
    sget v0, Lctk$i;->send_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 136
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 148
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Ldjo$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldjo$4;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Ldjo$4;->a:Ljava/lang/String;

    .line 2413
    invoke-virtual {v0, v1, v2, v2}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 142
    :cond_0
    sget v0, Lctk$i;->send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 143
    return-void
.end method
