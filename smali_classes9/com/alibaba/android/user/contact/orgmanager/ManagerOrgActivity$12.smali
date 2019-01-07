.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;
.super Ljava/lang/Object;
.source "ManagerOrgActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 559
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 560
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 561
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 565
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 566
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 567
    .local v0, "endOfLastLine":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;->a:Landroid/widget/TextView;

    invoke-static {v2, v3, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Landroid/widget/TextView;I)V

    .line 569
    .end local v0    # "endOfLastLine":I
    :cond_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
