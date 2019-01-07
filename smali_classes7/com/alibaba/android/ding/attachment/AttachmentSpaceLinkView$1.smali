.class final Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;
.super Ljava/lang/Object;
.source "AttachmentSpaceLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    invoke-static {v2}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->a(Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v7

    .line 93
    .local v7, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 94
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->l:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_0

    .line 100
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    const-class v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v2, v8}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 102
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 104
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_transfer_src"

    const-string/jumbo v8, "ding"

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    sget-object v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v8

    if-ne v2, v8, :cond_3

    .line 108
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->f:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    sget-object v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Personal_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v8

    if-ne v2, v8, :cond_0

    .line 110
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->f:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0

    .line 113
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v1    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_4
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 115
    .restart local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 120
    .restart local v1    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 121
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_transfer_src"

    const-string/jumbo v8, "ding"

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->f:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0
.end method
