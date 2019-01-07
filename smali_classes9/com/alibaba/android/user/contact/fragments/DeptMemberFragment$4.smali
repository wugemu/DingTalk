.class final Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$4;
.super Ljava/lang/Object;
.source "DeptMemberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

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
    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)V

    .line 227
    return-void
.end method
