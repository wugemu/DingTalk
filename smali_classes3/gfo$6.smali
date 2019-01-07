.class final Lgfo$6;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfo;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lgfo;

.field final synthetic c:Lgnu;

.field final synthetic d:Lgfo;


# direct methods
.method constructor <init>(Lgfo;Landroid/content/Context;Lgfo;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgfo;

    .prologue
    .line 404
    iput-object p1, p0, Lgfo$6;->d:Lgfo;

    iput-object p2, p0, Lgfo$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lgfo$6;->b:Lgfo;

    iput-object p4, p0, Lgfo$6;->c:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 438
    iget-object v0, p0, Lgfo$6;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lgfo$6;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lgfo$6;->d:Lgfo;

    sget v1, Lfzs$h;->alimei_data_error:I

    .line 1070
    invoke-static {v1}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 404
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1408
    iget-object v0, p0, Lgfo$6;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    if-nez p1, :cond_1

    .line 1413
    iget-object v0, p0, Lgfo$6;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lgfo$6;->d:Lgfo;

    sget v1, Lfzs$h;->dt_cspace_acl_member_conversation_info_none:I

    .line 2070
    invoke-static {v1}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Lgfo$6;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lgfo$6;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1426
    iget-object v1, p0, Lgfo$6;->b:Lgfo;

    iget-object v1, v1, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_2
    iget-object v1, p0, Lgfo$6;->c:Lgnu;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    .line 2207
    iput-object v2, v1, Lgnu;->b:Ljava/lang/String;

    .line 1430
    iget-object v1, p0, Lgfo$6;->c:Lgnu;

    .line 2215
    iput-object v0, v1, Lgnu;->c:Ljava/lang/String;

    .line 1431
    iget-object v0, p0, Lgfo$6;->c:Lgnu;

    .line 2255
    iput-boolean v3, v0, Lgnu;->h:Z

    .line 1432
    iget-object v0, p0, Lgfo$6;->c:Lgnu;

    .line 2263
    iput-boolean v3, v0, Lgnu;->i:Z

    goto :goto_0
.end method
