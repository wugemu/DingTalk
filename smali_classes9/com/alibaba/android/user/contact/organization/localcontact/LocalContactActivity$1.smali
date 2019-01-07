.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$1;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "vi"    # Landroid/view/View;

    .prologue
    .line 107
    const-string/jumbo v0, "contact_add_extercontact_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;->a(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;)V

    .line 110
    return-void
.end method
