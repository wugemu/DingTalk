.class final Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;
.super Ljava/lang/Object;
.source "DingMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->g(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->h(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    goto :goto_0
.end method
