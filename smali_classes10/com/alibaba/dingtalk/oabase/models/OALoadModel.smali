.class public Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
.super Ljava/lang/Object;
.source "OALoadModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public oaType:I

.field public orgId:J

.field public shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 14
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "OALoadModel{"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "oaType="

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget v2, p0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, ", orgId="

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->orgId:J

    .line 18
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, ", shortcutObject="

    aput-object v2, v1, v0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 20
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x7

    const-string/jumbo v2, "}"

    aput-object v2, v1, v0

    .line 14
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
