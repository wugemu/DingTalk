.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;
.super Ljava/lang/Object;
.source "FaceBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->showRemindDialog(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

.field final synthetic val$userIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;Landroid/widget/EditText;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$editText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$userIds:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 655
    new-instance v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v4}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    .line 656
    .local v4, "linkObject":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 657
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->title:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 658
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->text:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 659
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->image:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 660
    sget-object v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_OA:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 662
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->content:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string/jumbo v1, ""

    .line 663
    .local v1, "content":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "et":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 665
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 669
    const-string/jumbo v1, " "

    .line 672
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 673
    .local v0, "atteachment":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    sget-object v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v5

    iput v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 674
    iput-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 675
    new-instance v5, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v5}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 676
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$userIds:Ljava/util/List;

    .line 677
    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 678
    invoke-virtual {v5, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 679
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 680
    invoke-virtual {v5, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 681
    invoke-virtual {v5, v8}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 1922
    iget-object v3, v5, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 683
    .local v3, "info":Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11$1;

    invoke-direct {v7, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;)V

    invoke-virtual {v5, v6, v3, v7}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V

    .line 700
    return-void

    .line 662
    .end local v0    # "atteachment":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "et":Ljava/lang/String;
    .end local v3    # "info":Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    iget-object v1, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->content:Ljava/lang/String;

    goto :goto_0
.end method
