.class final Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$2;
.super Ljava/lang/Object;
.source "OrgNewContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$2;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$2;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->h(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)V

    .line 215
    return-void
.end method
