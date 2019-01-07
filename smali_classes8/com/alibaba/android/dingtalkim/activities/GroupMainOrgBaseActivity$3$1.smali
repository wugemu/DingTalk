.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;
.super Ljava/lang/Object;
.source "GroupMainOrgBaseActivity.java"

# interfaces
.implements Lech$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->showLoadingDialog()V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3;->b:J

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$3$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;JLjava/util/List;)V

    .line 127
    return-void
.end method
