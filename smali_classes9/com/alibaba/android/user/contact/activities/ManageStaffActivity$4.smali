.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$4;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$4;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 720
    const-string/jumbo v0, "manager mode changed to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$4;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V

    .line 722
    return-void
.end method
