.class final Lflb$4;
.super Ljava/lang/Object;
.source "CreateOrgV4Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflb;


# direct methods
.method constructor <init>(Lflb;)V
    .locals 0
    .param p1, "this$0"    # Lflb;

    .prologue
    .line 409
    iput-object p1, p0, Lflb$4;->a:Lflb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 412
    iget-object v0, p0, Lflb$4;->a:Lflb;

    invoke-static {v0}, Lflb;->f(Lflb;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lflb$4;->a:Lflb;

    invoke-static {v0}, Lflb;->g(Lflb;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    const-string/jumbo v1, "identity_create_org_add_member"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v0, "org_create_step2_add_member_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
