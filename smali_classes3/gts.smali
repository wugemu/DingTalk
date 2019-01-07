.class public final Lgts;
.super Ljava/lang/Object;
.source "OrgMicroAPPObjectWrapper.java"


# instance fields
.field public a:I

.field public b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V
    .locals 1
    .param p1, "orgMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lgts;->a:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "isSelected":Z
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Landroid/content/Context;)Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    move-result-object v1

    .line 71
    .local v1, "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    if-eqz v1, :cond_0

    .line 72
    iget v2, v1, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v2, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->orgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    const-string/jumbo v0, ""

    .line 34
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lgts;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    .line 37
    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 96
    iget v0, p0, Lgts;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
