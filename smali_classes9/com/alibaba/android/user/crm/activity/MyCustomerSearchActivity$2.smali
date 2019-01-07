.class final Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$2;
.super Ljava/lang/Object;
.source "MyCustomerSearchActivity.java"

# interfaces
.implements Lgd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->finish()V

    .line 115
    const/4 v0, 0x1

    return v0
.end method
