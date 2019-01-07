.class final Lacg$19;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0

    .prologue
    .line 1958
    iput-object p1, p0, Lacg$19;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$19;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lacg$19;->c:Ljava/util/List;

    iput-object p4, p0, Lacg$19;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1958
    .line 2961
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    new-instance v1, Lacg$19$1;

    invoke-direct {v1, p0}, Lacg$19$1;-><init>(Lacg$19;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lgqq;)V

    .line 1958
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2003
    const-string/jumbo v0, "navToWriteMail, messages, checkLogin, s1"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-object v0, p0, Lacg$19;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lacg$19;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2006
    const-string/jumbo v0, "_#DINGTALK#_1234"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_#DINGTALK#_1234"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2007
    iget-object v0, p0, Lacg$19;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v1}, Lacg;->a(Landroid/content/Context;IZ)V

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 2008
    :cond_1
    const-string/jumbo v0, "2016"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2009
    iget-object v0, p0, Lacg$19;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    new-instance v1, Lacg$19$2;

    invoke-direct {v1, p0, p1, p2}, Lacg$19$2;-><init>(Lacg$19;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2022
    return-void
.end method
