.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/select_city.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 303
    return-void
.end method