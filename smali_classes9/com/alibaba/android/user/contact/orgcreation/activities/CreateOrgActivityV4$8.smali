.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfom;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lfom;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;->a:Lfom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 904
    const-string/jumbo v0, "org_create_same_name_warning_join_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;->a:Lfom;

    iget-object v2, v2, Lfom;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method
