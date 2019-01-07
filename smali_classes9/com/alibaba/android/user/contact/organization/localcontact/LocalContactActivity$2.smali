.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$2;
.super Ljava/lang/Object;
.source "LocalContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$2;->b:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$2;->a:Landroid/view/ViewGroup;

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
    const/16 v1, 0x8

    .line 115
    const-string/jumbo v0, "contact_add_extercontact_close_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    const-string/jumbo v0, "pref_external_local_add_tip"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method
