.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$4;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$4;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 620
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$4;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;Z)Z

    .line 621
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$4;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->finish()V

    .line 622
    return-void
.end method
