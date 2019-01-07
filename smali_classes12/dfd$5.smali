.class final Ldfd$5;
.super Ljava/lang/Object;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfd;->a(Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ldfd;


# direct methods
.method constructor <init>(Ldfd;JLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Ldfd;

    .prologue
    .line 222
    iput-object p1, p0, Ldfd$5;->c:Ldfd;

    iput-wide p2, p0, Ldfd$5;->a:J

    iput-object p4, p0, Ldfd$5;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v2, p0, Ldfd$5;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Ldfd$5;->c:Ldfd;

    iget-object v3, v3, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    iget-object v3, p0, Ldfd$5;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->d(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method
