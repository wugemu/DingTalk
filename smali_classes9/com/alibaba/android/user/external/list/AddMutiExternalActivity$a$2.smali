.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/ExternalEditContract$a;

.field final synthetic b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;Lcom/alibaba/android/user/external/ExternalEditContract$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;->a:Lcom/alibaba/android/user/external/ExternalEditContract$a;

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
    .line 945
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;->a:Lcom/alibaba/android/user/external/ExternalEditContract$a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Z

    .line 949
    return-void
.end method
