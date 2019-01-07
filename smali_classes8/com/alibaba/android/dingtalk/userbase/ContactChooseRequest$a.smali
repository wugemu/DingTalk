.class public final Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
.super Ljava/lang/Object;
.source "ContactChooseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;-><init>(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$1;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 463
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 2
    .param p1, "chooserParam"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;-><init>(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$1;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 466
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 467
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "chooseMode"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 488
    return-object p0
.end method

.method public final a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "displayOid"    # J

    .prologue
    .line 626
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J

    .line 627
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "contactChooseCallback"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 856
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 642
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "currentNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 597
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "chooseResultHandler"    # Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 846
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "chooseLimitTips"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    return-object p0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 899
    .local p1, "selectedUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v1, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 901
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 904
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_2

    .line 905
    const-string/jumbo v2, "select_members_input"

    invoke-static {v2, v1}, Lcnf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcnf$a;

    move-result-object v0

    .line 907
    .local v0, "fileDescriptorWrapper":Lcnf$a;
    if-eqz v0, :cond_1

    .line 908
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1044
    iget v3, v0, Lcnf$a;->a:I

    .line 908
    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 909
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1048
    iget v3, v0, Lcnf$a;->b:I

    .line 909
    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 917
    .end local v0    # "fileDescriptorWrapper":Lcnf$a;
    :goto_0
    return-object p0

    .line 911
    .restart local v0    # "fileDescriptorWrapper":Lcnf$a;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 914
    .end local v0    # "fileDescriptorWrapper":Lcnf$a;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "hideExternalContact"    # Z

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 496
    return-object p0
.end method

.method public final b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "chooseCountLimit"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 544
    return-object p0
.end method

.method public final b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "chooseOid"    # J

    .prologue
    .line 631
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J

    .line 632
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    return-object p0
.end method

.method public final b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 963
    .local p1, "unCheckUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v0, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 968
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 969
    return-object p0
.end method

.method public final b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "filterMyself"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 536
    return-object p0
.end method

.method public final c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "chooseAction"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 607
    return-object p0
.end method

.method public final c(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "departId"    # J

    .prologue
    .line 829
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J

    .line 830
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "identifyFlag"    # Ljava/lang/String;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    return-object p0
.end method

.method public final c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 973
    .local p1, "requestUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v0, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 975
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 979
    return-object p0
.end method

.method public final c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "changeDept"    # Z

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 689
    return-object p0
.end method

.method public final d(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "userRole"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 793
    return-object p0
.end method

.method public final d(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "labelId"    # J

    .prologue
    .line 879
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J

    .line 880
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public final d(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 983
    .local p1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v0, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 989
    return-object p0
.end method

.method public final d(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "showGroup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 704
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 705
    return-object p0
.end method

.method public final e(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "authLevel"    # I

    .prologue
    .line 824
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 825
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "fromSource"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$1802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    return-object p0
.end method

.method public final e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 993
    .local p1, "selectedDeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v0, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 999
    return-object p0
.end method

.method public final e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "showFriends"    # Z

    .prologue
    .line 712
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 713
    return-object p0
.end method

.method public final f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "startType"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 841
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    return-object p0
.end method

.method public final f(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1003
    .local p1, "unCheckDeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v0, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1005
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1009
    return-object p0
.end method

.method public final f(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "direct2Group"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 721
    return-object p0
.end method

.method public final g(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "orgQuitAction"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I

    .line 890
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "initFragmentKey"    # Ljava/lang/String;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 681
    return-object p0
.end method

.method public final g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1013
    .local p1, "requestDeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v0, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1019
    return-object p0
.end method

.method public final g(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "direct2Conv"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 728
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 729
    return-object p0
.end method

.method public final h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "showLocalFriends"    # Z

    .prologue
    .line 736
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 737
    return-object p0
.end method

.method public final i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "showCommonFriends"    # Z

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 745
    return-object p0
.end method

.method public final j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "canChooseCurrentUser"    # Z

    .prologue
    .line 768
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 769
    return-object p0
.end method

.method public final k(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "showCrmCustom"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 776
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$3902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 777
    return-object p0
.end method

.method public final l(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "canManageContact"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 785
    return-object p0
.end method

.method public final m(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "supportFixLine"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 800
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$4202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 801
    return-object p0
.end method

.method public final n(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p1, "showOnlyLocalContact"    # Z

    .prologue
    .line 871
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 872
    return-object p0
.end method

.method public final o(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "loadConversation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 1024
    return-object p0
.end method

.method public final p(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 2
    .param p1, "promptUserIdentityCreationError"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 1029
    return-object p0
.end method
