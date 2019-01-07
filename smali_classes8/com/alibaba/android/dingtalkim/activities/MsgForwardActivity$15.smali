.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->a:Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2209
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2213
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2215
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->a:Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;->actionConfirm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2216
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->a:Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;->actionConfirm:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2217
    .local v0, "confirm":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 2218
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
