.class final Lgon$42;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lgon;


# direct methods
.method constructor <init>(Lgon;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 383
    iput-object p1, p0, Lgon$42;->c:Lgon;

    iput-wide p2, p0, Lgon$42;->a:J

    iput-object p4, p0, Lgon$42;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 387
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v8

    .line 389
    .local v8, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v8, :cond_1

    .line 391
    iget-object v7, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 393
    .local v7, "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v7, :cond_1

    .line 394
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 395
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v4, p0, Lgon$42;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 396
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lgon$42;->b:Lcma;

    if-eqz v1, :cond_1

    .line 398
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgon$42$1;

    invoke-direct {v2, p0}, Lgon$42$1;-><init>(Lgon$42;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 415
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lgon$42;->a:J

    const-wide/16 v4, -0x3

    iget-object v6, p0, Lgon$42;->b:Lcma;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJLcma;)V

    goto :goto_0
.end method
