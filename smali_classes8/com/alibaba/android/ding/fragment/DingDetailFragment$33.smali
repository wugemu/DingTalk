.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$33;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$33;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1997
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$33;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$33;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 1998
    return-void
.end method
