.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;
.super Ljava/lang/Object;
.source "GroupMainOrgBaseActivity.java"

# interfaces
.implements Lech$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->showLoadingDialog()V

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$7$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 228
    return-void
.end method
