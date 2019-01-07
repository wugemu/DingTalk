.class final Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$2;
.super Ljava/lang/Object;
.source "OrgContactNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$2;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

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

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$2;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v0, v1, v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;ZZ)V

    .line 613
    return-void
.end method
