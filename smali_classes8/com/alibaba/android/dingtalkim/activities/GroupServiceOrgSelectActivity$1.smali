.class final Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;
.super Ljava/lang/Object;
.source "GroupServiceOrgSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->b(Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;->b:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;->b:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;Ljava/lang/String;J)V

    .line 38
    return-void
.end method
