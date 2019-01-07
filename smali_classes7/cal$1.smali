.class final Lcal$1;
.super Ljava/lang/Object;
.source "MyRedPacketsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcal;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcal;


# direct methods
.method constructor <init>(Lcal;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lcal;

    .prologue
    .line 158
    .local p0, "this":Lcal$1;, "Lcal$1;"
    iput-object p1, p0, Lcal$1;->c:Lcal;

    iput-object p2, p0, Lcal$1;->a:Ljava/lang/Object;

    iput p3, p0, Lcal$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    .local p0, "this":Lcal$1;, "Lcal$1;"
    iget-object v1, p0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 164
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcal$1;->c:Lcal;

    invoke-static {v1}, Lcal;->a(Lcal;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcaj$f;->redpackets_confirm_resend:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcaj$f;->sure:I

    new-instance v3, Lcal$1$1;

    invoke-direct {v3, p0}, Lcal$1$1;-><init>(Lcal$1;)V

    .line 166
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcaj$f;->cancel:I

    const/4 v3, 0x0

    .line 261
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 284
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 265
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcal$1$2;

    invoke-direct {v3, p0}, Lcal$1$2;-><init>(Lcal$1;)V

    iget-object v2, p0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->cid:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method
