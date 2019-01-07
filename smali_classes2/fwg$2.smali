.class final Lfwg$2;
.super Ljava/lang/Object;
.source "BlacklistAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfwg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:I

.field final synthetic c:Lfwg;


# direct methods
.method constructor <init>(Lfwg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfwg;

    .prologue
    .line 83
    iput-object p1, p0, Lfwg$2;->c:Lfwg;

    iput-object p2, p0, Lfwg$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput p3, p0, Lfwg$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.black.list.item.delete.and.unblacking"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lfwg$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "list_view_position"

    iget v2, p0, Lfwg$2;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lfwg$2;->c:Lfwg;

    iget-object v1, v1, Lfwg;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
