.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1$1;
.super Ljava/lang/Object;
.source "SelectedContactsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;)V

    .line 161
    return-void
.end method
