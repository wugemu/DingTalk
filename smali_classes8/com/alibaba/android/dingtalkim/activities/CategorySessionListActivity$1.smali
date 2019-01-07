.class final Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;
.super Ljava/lang/Object;
.source "CategorySessionListActivity.java"

# interfaces
.implements Ldbz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    sget v1, Lctk$f;->btn_add_session:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    .local v0, "btnAdd":Landroid/widget/Button;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    sget v1, Lctk$f;->ll_root_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    .end local v0    # "btnAdd":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0    # "btnAdd":Landroid/widget/Button;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
