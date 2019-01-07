.class final Lgff$2;
.super Ljava/lang/Object;
.source "SpaceMembersPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

.field final synthetic b:Lcma;

.field final synthetic c:Lgff;


# direct methods
.method constructor <init>(Lgff;Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgff;

    .prologue
    .line 214
    iput-object p1, p0, Lgff$2;->c:Lgff;

    iput-object p2, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iput-object p3, p0, Lgff$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lgff$2;->c:Lgff;

    iget-object v0, v0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$2;->c:Lgff;

    iget-object v1, v1, Lgff;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->alimei_data_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lgff$2;->c:Lgff;

    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$2;->b:Lcma;

    .line 2037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 214
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2217
    iget-object v0, p0, Lgff$2;->c:Lgff;

    iget-object v0, v0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    if-nez p1, :cond_1

    .line 2221
    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$2;->c:Lgff;

    iget-object v1, v1, Lgff;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_acl_member_conversation_info_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 2222
    iget-object v0, p0, Lgff$2;->c:Lgff;

    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$2;->b:Lcma;

    .line 4037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 2223
    :cond_0
    :goto_0
    return-void

    .line 2225
    :cond_1
    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    .line 4155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 2226
    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    .line 4163
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->e:Ljava/lang/String;

    .line 2227
    invoke-static {p1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2228
    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v1

    .line 4171
    iput v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->f:I

    .line 2230
    :cond_2
    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v1, 0x1

    .line 4179
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 2231
    iget-object v0, p0, Lgff$2;->c:Lgff;

    iget-object v0, p0, Lgff$2;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$2;->b:Lcma;

    .line 5037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_0
.end method
