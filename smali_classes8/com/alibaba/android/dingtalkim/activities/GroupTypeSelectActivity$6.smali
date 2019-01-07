.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;->c:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;->b:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;->c:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;->b:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    .line 213
    return-void
.end method
