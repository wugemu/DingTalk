.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$5;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e()V
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
    .line 942
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$5;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 946
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$5;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    .line 947
    return-void
.end method
