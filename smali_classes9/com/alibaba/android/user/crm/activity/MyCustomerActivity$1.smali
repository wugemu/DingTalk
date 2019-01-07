.class final Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$1;
.super Ljava/lang/Object;
.source "MyCustomerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

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
    .line 198
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    const-string/jumbo v1, "pref_key_crm_guide"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void
.end method
