.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;
.super Ljava/lang/Object;
.source "SpaceBaseMainActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a(JLjava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->a:J

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 21

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Boolean;

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->dismissLoadingDialog()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->a:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget v6, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->b:Ljava/lang/String;

    .line 1083
    invoke-static {}, Lgpr;->c()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v9, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v10, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-boolean v12, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->b:Z

    .line 1084
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->d:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 1082
    invoke-static/range {v3 .. v20}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->dismissLoadingDialog()V

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->a:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget v6, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->b:Ljava/lang/String;

    .line 97
    invoke-static {}, Lgpr;->c()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v9, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v10, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-boolean v12, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->b:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->d:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 96
    invoke-static/range {v3 .. v20}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 91
    return-void
.end method
