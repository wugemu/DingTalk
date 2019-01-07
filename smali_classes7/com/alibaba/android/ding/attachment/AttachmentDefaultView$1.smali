.class final Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;
.super Ljava/lang/Object;
.source "AttachmentDefaultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iput-object p2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->l:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v18

    .line 93
    .local v18, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v3, v3, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2, v3}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-static {v2}, Lcow;->a(Ljava/lang/String;)I

    move-result v6

    .line 97
    .local v6, "fileIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v7, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v4, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v10, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 1571
    if-eqz v3, :cond_0

    .line 1574
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v6    # "fileIcon":I
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 99
    .local v17, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v2, "AttachmentDefaultView click event failed"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    .end local v17    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-wide v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->i:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v3, "clusterId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-wide v14, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->i:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v3, "clusterId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1578
    if-eqz v12, :cond_0

    .line 1581
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_3
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;->a:Landroid/content/Context;

    const-string/jumbo v4, "https://h5.dingtalk.com/base/download.html"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
