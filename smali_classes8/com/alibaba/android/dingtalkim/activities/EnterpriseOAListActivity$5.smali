.class final Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;
.super Ljava/lang/Object;
.source "EnterpriseOAListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->au()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    if-nez p2, :cond_1

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v0, p2, v2}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;IZ)V

    .line 262
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
