.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$10;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 266
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$10;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$10;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    sget v1, Lezg$h;->search_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$g;->edit_bg_focus:I

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$10;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    sget v1, Lezg$h;->search_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$g;->edit_bg_normal:I

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
