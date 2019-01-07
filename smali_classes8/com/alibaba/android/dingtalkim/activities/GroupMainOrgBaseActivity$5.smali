.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;
.super Ljava/lang/Object;
.source "GroupMainOrgBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 201
    .local v0, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 202
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v0    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;->c:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$5;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 206
    return-void
.end method
