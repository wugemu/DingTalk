.class final Ldkf$3;
.super Ljava/lang/Object;
.source "MultiToTaskUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/Map;J)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Ldkf$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldkf$3;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldkf$3;->c:Ljava/util/List;

    iput-object p4, p0, Ldkf$3;->d:Ljava/util/Map;

    iput-wide p5, p0, Ldkf$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    check-cast p1, Ljava/util/Map;

    .line 1132
    iget-object v0, p0, Ldkf$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1134
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 1135
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1137
    iget-object v1, p0, Ldkf$3;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1140
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 1141
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 1142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 1144
    iget-object v2, p0, Ldkf$3;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2, p1}, Leaw;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->putExtensionTitleModel(Ljava/util/Map;)V

    .line 1145
    iget-object v2, p0, Ldkf$3;->c:Ljava/util/List;

    invoke-static {v2, p1}, Leaw;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->putExtensionContentModel(Ljava/util/List;)V

    .line 1146
    iget-object v2, p0, Ldkf$3;->c:Ljava/util/List;

    iget-object v3, p0, Ldkf$3;->d:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Leaw;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->putExtensionMessageInfos(Ljava/util/List;)V

    .line 1147
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v2

    iget-object v3, p0, Ldkf$3;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v2

    .line 1148
    iget-object v4, p0, Ldkf$3;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->cid:Ljava/lang/String;

    .line 1149
    iput-wide v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    .line 1151
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1152
    iget-wide v2, p0, Ldkf$3;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->g(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1154
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v2, p0, Ldkf$3;->a:Landroid/app/Activity;

    .line 1922
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1154
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 129
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Ldkf$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 164
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 159
    return-void
.end method
