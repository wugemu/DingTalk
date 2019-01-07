.class final Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1$1;
.super Ljava/lang/Object;
.source "CategorySessionListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->b:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Ldde;->a(Landroid/app/Activity;J[Ljava/lang/String;)V

    .line 105
    return-void
.end method
