.class final Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$4;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$4;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$4;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$4;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V

    .line 303
    return-void
.end method
