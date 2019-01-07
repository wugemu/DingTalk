.class final Ldab$6;
.super Ljava/lang/Object;
.source "UserThirdPartyViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldab;


# direct methods
.method constructor <init>(Ldab;)V
    .locals 0
    .param p1, "this$0"    # Ldab;

    .prologue
    .line 731
    iput-object p1, p0, Ldab$6;->a:Ldab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 734
    sget v5, Lctk$f;->tag_url:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 735
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 736
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 738
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "dingtalk://dingtalkclient/action/thanks"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    const/4 v1, 0x0

    .line 740
    .local v1, "oid":Ljava/lang/String;
    iget-object v5, p0, Ldab$6;->a:Ldab;

    iget-object v5, v5, Ldab;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ldab$6;->a:Ldab;

    invoke-static {v5}, Ldab;->a(Ldab;)Lcom/alibaba/wukong/im/Message;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 741
    iget-object v5, p0, Ldab$6;->a:Ldab;

    invoke-static {v5}, Ldab;->a(Ldab;)Lcom/alibaba/wukong/im/Message;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    const-string/jumbo v6, "org_id"

    invoke-interface {v5, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 743
    :cond_0
    iget-object v5, p0, Ldab$6;->a:Ldab;

    const-string/jumbo v6, "chat_checkin_thanks_click"

    invoke-static {v5, v6, v1, v7}, Ldab;->a(Ldab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string/jumbo v5, "uid"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "uid":Ljava/lang/String;
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 747
    iget-object v5, p0, Ldab$6;->a:Ldab;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v0}, Ldab;->a(Ldab;JLjava/lang/String;)V

    .line 755
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "oid":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 750
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Ldab$6;->a:Ldab;

    iget-object v5, v5, Ldab;->d:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 751
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    iget-object v6, p0, Ldab$6;->a:Ldab;

    iget-object v6, v6, Ldab;->d:Landroid/app/Activity;

    invoke-virtual {v5, v6, v3, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method
