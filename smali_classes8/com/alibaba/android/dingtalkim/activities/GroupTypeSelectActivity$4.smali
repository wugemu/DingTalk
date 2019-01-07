.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$4;
.super Ljava/lang/Object;
.source "GroupTypeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

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
    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .line 1082
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(J)Landroid/content/Intent;

    move-result-object v1

    .line 1083
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->finish()V

    .line 156
    return-void
.end method
