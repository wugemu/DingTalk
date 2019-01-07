.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$2;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$2;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$2;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    .line 808
    return-void
.end method
