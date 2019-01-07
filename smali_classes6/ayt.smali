.class public final Layt;
.super Ljava/lang/Object;
.source "DingAttachmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    const/4 v2, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-object v2

    .line 17
    :cond_0
    iget v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v1

    .line 18
    .local v1, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    const/4 v0, 0x0

    .line 19
    .local v0, "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    sget-object v3, Layt$1;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 38
    new-instance v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;

    .end local v0    # "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;-><init>(Landroid/content/Context;)V

    .restart local v0    # "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    :goto_1
    :pswitch_0
    move-object v2, v0

    .line 42
    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    .end local v0    # "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .restart local v0    # "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    goto :goto_1

    .line 1046
    :pswitch_2
    iget v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 30
    :goto_2
    goto :goto_1

    .line 1050
    :cond_1
    iget v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1051
    new-instance v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;-><init>(Landroid/content/Context;)V

    :goto_3
    move-object v0, v2

    .line 1071
    goto :goto_2

    .line 1053
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    move-result-object v2

    .line 1054
    sget-object v3, Layt$1;->b:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 1067
    new-instance v2, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 1056
    :pswitch_3
    new-instance v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 1060
    :pswitch_4
    new-instance v2, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 1064
    :pswitch_5
    new-instance v2, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 32
    :pswitch_6
    new-instance v0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;

    .end local v0    # "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;-><init>(Landroid/content/Context;)V

    .line 33
    .restart local v0    # "attachmentView":Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
    goto :goto_1

    .line 19
    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
