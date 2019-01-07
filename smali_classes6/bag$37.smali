.class final Lbag$37;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 1292
    iput-object p1, p0, Lbag$37;->a:Lbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1295
    iget-object v0, p0, Lbag$37;->a:Lbag;

    invoke-static {v0}, Lbag;->n(Lbag;)Lbkp;

    move-result-object v7

    .line 2174
    iget-object v0, v7, Lbkp;->d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 2178
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    .line 3155
    iget-object v1, v0, Lbbi;->a:Lazb;

    iget v3, v1, Lazb;->g:I

    .line 2180
    iget-object v1, v7, Lbkp;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2181
    invoke-virtual {v0}, Lbbi;->b()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-result-object v8

    .line 2182
    iget-object v0, v7, Lbkp;->c:Landroid/app/Activity;

    iget-object v1, v7, Lbkp;->c:Landroid/app/Activity;

    sget v2, Laxp$i;->ding_task_transfer_select_user:I

    .line 2183
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbkp;->a:Ljava/lang/String;

    iget-object v7, v7, Lbkp;->d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3325
    if-eqz v7, :cond_1

    .line 3329
    invoke-static {v7}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3689
    iget v7, v7, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 3333
    if-ne v7, v6, :cond_1

    move v7, v6

    .line 2188
    :goto_0
    if-eqz v7, :cond_2

    :goto_1
    const/4 v7, 0x0

    .line 2182
    invoke-static/range {v0 .. v8}, Lbjv;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/util/ArrayList;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)V

    .line 1296
    :cond_0
    return-void

    :cond_1
    move v7, v5

    .line 3333
    goto :goto_0

    :cond_2
    move v6, v5

    .line 2188
    goto :goto_1
.end method
