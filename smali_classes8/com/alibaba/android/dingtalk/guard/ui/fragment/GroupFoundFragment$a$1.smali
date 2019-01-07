.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;
.super Ljava/lang/Object;
.source "GroupFoundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->notifyDataSetChanged()V

    .line 287
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    goto :goto_0
.end method
