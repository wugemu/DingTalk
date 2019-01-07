.class public final Ldgv;
.super Ljava/lang/Object;
.source "ChatDetailViewTypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;Z)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    .param p1, "fromImLocal"    # Z

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->type:I

    invoke-static {v0, v1, p1}, Ldgv;->a(Lcom/alibaba/wukong/im/Message;IZ)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;IZ)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "type"    # I
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 22
    sparse-switch p1, :sswitch_data_0

    .line 82
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    :goto_0
    return-object v1

    .line 40
    :sswitch_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 42
    :sswitch_1
    if-eqz p2, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_combine_foward_md_show"

    .line 1083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->RobotMarkdown:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 50
    :sswitch_2
    if-eqz p0, :cond_1

    .line 51
    invoke-static {p0}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 52
    .local v0, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "e_id"

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 58
    .end local v0    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Image:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 61
    :sswitch_3
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->EncryptImage:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 64
    :sswitch_4
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Namecard:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 80
    :sswitch_5
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Multi:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 22
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_5
        0x65 -> :sswitch_0
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0xc9 -> :sswitch_0
        0xca -> :sswitch_5
        0xcb -> :sswitch_3
        0xcc -> :sswitch_0
        0xcd -> :sswitch_5
        0xce -> :sswitch_5
        0xfb -> :sswitch_2
        0xfc -> :sswitch_0
        0xfd -> :sswitch_5
        0xfe -> :sswitch_5
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_5
        0x1f6 -> :sswitch_5
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_0
        0x384 -> :sswitch_0
        0x385 -> :sswitch_0
        0x386 -> :sswitch_0
        0x388 -> :sswitch_0
        0x389 -> :sswitch_0
        0x38a -> :sswitch_0
        0x38b -> :sswitch_0
        0x38c -> :sswitch_0
        0x4b0 -> :sswitch_1
        0x5dc -> :sswitch_0
    .end sparse-switch
.end method
