.class public final Ldjo$2;
.super Ljava/lang/Object;
.source "EmotionSendManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ldjo$a;

.field final synthetic i:Landroid/app/Activity;

.field final synthetic j:Ldjo;


# direct methods
.method public constructor <init>(Ldjo;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Ldjo;

    .prologue
    .line 74
    iput-object p1, p0, Ldjo$2;->j:Ldjo;

    iput-object p2, p0, Ldjo$2;->a:Ljava/lang/String;

    iput-object p3, p0, Ldjo$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Ldjo$2;->c:Ljava/lang/String;

    iput-wide p5, p0, Ldjo$2;->d:J

    iput p7, p0, Ldjo$2;->e:I

    iput-object p8, p0, Ldjo$2;->f:Ljava/lang/String;

    iput-object p9, p0, Ldjo$2;->g:Ljava/lang/String;

    iput-object p10, p0, Ldjo$2;->h:Ldjo$a;

    iput-object p11, p0, Ldjo$2;->i:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1077
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1078
    iget-object v1, p0, Ldjo$2;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p0, Ldjo$2;->j:Ldjo;

    iget-object v2, p0, Ldjo$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjo$2;->c:Ljava/lang/String;

    iget-wide v4, p0, Ldjo$2;->d:J

    iget v6, p0, Ldjo$2;->e:I

    iget-object v7, p0, Ldjo$2;->f:Ljava/lang/String;

    iget-object v8, p0, Ldjo$2;->g:Ljava/lang/String;

    iget-object v9, p0, Ldjo$2;->h:Ldjo$a;

    iget-object v10, p0, Ldjo$2;->a:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Ldjo;->a(Ldjo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V

    .line 1080
    :goto_0
    return-void

    .line 1082
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Ldjo$2;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1083
    sget v2, Lctk$i;->chat_forward_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->chat_forward_yes:I

    new-instance v3, Ldjo$2$1;

    invoke-direct {v3, p0}, Ldjo$2$1;-><init>(Ldjo$2;)V

    .line 1084
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->chat_forward_no:I

    const/4 v3, 0x0

    .line 1090
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
