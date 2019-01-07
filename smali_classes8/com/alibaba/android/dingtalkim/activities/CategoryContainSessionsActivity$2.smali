.class final Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$2;
.super Ljava/lang/Object;
.source "CategoryContainSessionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

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
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->b:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Ldde;->a(Landroid/app/Activity;J[Ljava/lang/String;)V

    .line 87
    return-void
.end method
