.class final Lfgh$1$1;
.super Ljava/lang/Object;
.source "ConcernListAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgh$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgh$1;


# direct methods
.method constructor <init>(Lfgh$1;)V
    .locals 0
    .param p1, "this$1"    # Lfgh$1;

    .prologue
    .line 96
    iput-object p1, p0, Lfgh$1$1;->a:Lfgh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfgh$1$1;->a:Lfgh$1;

    iget-object v1, v1, Lfgh$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    const-string/jumbo v0, "key_from_concern_list"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const-string/jumbo v0, "list_view_position"

    iget-object v1, p0, Lfgh$1$1;->a:Lfgh$1;

    iget v1, v1, Lfgh$1;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    return-object p1
.end method
