.class final Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$4;
.super Ljava/lang/Object;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$4;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$4;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$4;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->b(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;ZZ)V

    .line 278
    return-void
.end method
