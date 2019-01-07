.class final Ldvh$1;
.super Ljava/lang/Object;
.source "LightAppMessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvh;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic e:Ldvh;


# direct methods
.method constructor <init>(Ldvh;Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Ldvh;

    .prologue
    .line 97
    iput-object p1, p0, Ldvh$1;->e:Ldvh;

    iput-object p2, p0, Ldvh$1;->a:Ljava/util/List;

    iput-object p3, p0, Ldvh$1;->b:Ljava/util/List;

    iput-object p4, p0, Ldvh$1;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Ldvh$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Ldvh$1;->e:Ldvh;

    iget-object v0, v0, Ldvh;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvh$1;->e:Ldvh;

    iget-object v0, v0, Ldvh;->g:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ldvh$1;->e:Ldvh;

    iget-object v0, v0, Ldvh;->g:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->S()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Ldvh$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 104
    .local v2, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v1, p0, Ldvh$1;->e:Ldvh;

    iget-object v1, v1, Ldvh;->g:Landroid/app/Activity;

    iget-object v4, p0, Ldvh$1;->e:Ldvh;

    .line 1035
    iget-object v4, v4, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 104
    iget-object v4, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imAction:Ljava/lang/String;

    iget-object v5, p0, Ldvh$1;->b:Ljava/util/List;

    iget-object v7, p0, Ldvh$1;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Ldvh$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 108
    .end local v2    # "orgId":J
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method
