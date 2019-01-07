.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;
.super Ljava/lang/Object;
.source "SpaceShareSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 182
    check-cast p1, Ljava/util/List;

    .line 1185
    if-eqz p1, :cond_4

    .line 1188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;

    .line 1191
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    if-eqz v5, :cond_0

    .line 1194
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1195
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1196
    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1197
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->role:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->role:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1198
    :goto_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 1200
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-static {v5, v6, v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;J)J

    .line 1202
    :cond_1
    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 1203
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    iput v0, v5, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    goto :goto_0

    .line 1197
    :cond_2
    const/16 v0, 0x66

    goto :goto_1

    .line 1207
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Ljava/util/List;)V

    .line 182
    :cond_4
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    const-string/jumbo v0, "STATISTICS"

    .line 213
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    .line 214
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 215
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 221
    return-void
.end method
