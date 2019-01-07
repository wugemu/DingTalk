.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;
.super Ljava/lang/Object;
.source "ManagerOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 872
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    sget v4, Lezg$l;->dt_contact_org_nick:I

    .line 873
    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method
