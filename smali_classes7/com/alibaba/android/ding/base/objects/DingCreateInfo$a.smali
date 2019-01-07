.class public final Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
.super Ljava/lang/Object;
.source "DingCreateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;-><init>(Lcom/alibaba/android/ding/base/objects/DingCreateInfo$1;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 675
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "bizType"    # I

    .prologue
    .line 760
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 761
    :cond_0
    const/4 p1, 0x0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1402(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)I

    .line 765
    return-object p0
.end method

.method public final a(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "confStartTime"    # J

    .prologue
    .line 783
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1702(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 784
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "taskRemind"    # Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$3702(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 898
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "attachment"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->setAttachment(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 740
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "dingContentAudio"    # Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1602(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;)Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    .line 779
    return-object p0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2202(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 821
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "dingIdStr"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$102(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "attachmentObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1300(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "navToHome"    # Z

    .prologue
    .line 845
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2702(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Z)Z

    .line 846
    return-object p0
.end method

.method public final b(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "subBizType"    # I

    .prologue
    .line 770
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 771
    :cond_0
    const/4 p1, 0x0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1502(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)I

    .line 774
    return-object p0
.end method

.method public final b(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "confEndTime"    # J

    .prologue
    .line 788
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1802(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 789
    return-object p0
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "attachment"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1300(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "parentDingIdStr"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$202(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 794
    .local p1, "atList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1902(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/util/List;)Ljava/util/List;

    .line 795
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1902(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/util/List;)Ljava/util/List;

    .line 798
    :cond_0
    return-object p0
.end method

.method public final b(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "whisperMode"    # Z

    .prologue
    .line 902
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$3802(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Z)Z

    .line 903
    return-object p0
.end method

.method public final c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "sourceFrom"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2602(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)I

    .line 841
    return-object p0
.end method

.method public final c(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "messageId"    # J

    .prologue
    .line 825
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2302(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 826
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "shareAction"    # Ljava/lang/String;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$302(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 807
    .local p1, "selectedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1902(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/util/List;)Ljava/util/List;

    .line 808
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1902(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/util/List;)Ljava/util/List;

    .line 811
    :cond_0
    return-object p0
.end method

.method public final d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 2
    .param p1, "alertType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 855
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2902(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 856
    return-object p0
.end method

.method public final d(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 830
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2402(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 831
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "shareType"    # Ljava/lang/String;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$402(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    return-object p0
.end method

.method public final d(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 880
    .local p1, "taskCCUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$3402(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/util/List;)Ljava/util/List;

    .line 883
    :cond_0
    return-object p0
.end method

.method public final e(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "taskCcUserCount"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$3502(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)I

    .line 888
    return-object p0
.end method

.method public final e(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "alertDate"    # J

    .prologue
    .line 865
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$3102(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 866
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "shareImageUri"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$602(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    return-object p0
.end method

.method public final f(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "taskDeadlineTime"    # J

    .prologue
    .line 892
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$3602(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 893
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$902(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public final g(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 917
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$4102(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;J)J

    .line 918
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$1002(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2102(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .locals 1
    .param p1, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2502(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    return-object p0
.end method
