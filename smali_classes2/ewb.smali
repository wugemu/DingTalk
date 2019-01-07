.class public Lewb;
.super Ljava/lang/Object;
.source "Navigation.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lewb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lewb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(ILcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;)V
    .locals 7
    .param p0, "totalCalleeNum"    # I
    .param p1, "hostUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p2, "userObjs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 753
    .local v1, "fromContext":Landroid/content/Context;
    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 754
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 756
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Receive a voip conf from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v4, "common_contact_tele"

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 759
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/page/voipConference"

    new-instance v3, Lewb$3;

    invoke-direct {v3, p1, p2, p0}, Lewb$3;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;I)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1045
    const-wide/16 v4, 0x0

    .line 1047
    .local v4, "targetUid":J
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1052
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgIdValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1053
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v6, "targetUid == 0 || !record.isOrgIdValid()"

    aput-object v6, v3, v7

    .line 1054
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :goto_1
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "check2WriteVisitRecord exception "

    aput-object v6, v3, v7

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    new-instance v6, Lewb$9;

    invoke-direct {v6, p0, p1}, Lewb$9;-><init>(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(JJLcma;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .param p2, "externalRelationObject"    # Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    .prologue
    .line 1080
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-nez v4, :cond_2

    .line 1081
    :cond_0
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v6, "null == activity || null == record || null == externalRelationObject"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_1
    :goto_0
    return-void

    .line 1084
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    iget-wide v6, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 1085
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 1087
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1088
    .local v0, "currentUserProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1091
    const-string/jumbo v3, ""

    .line 1092
    .local v3, "ownerStaffId":Ljava/lang/String;
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1093
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_3

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v8, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1094
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    goto :goto_1

    .line 1097
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    new-instance v1, Lchs;

    invoke-direct {v1}, Lchs;-><init>()V

    .line 1098
    .local v1, "object":Lchs;
    iget-object v4, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    iput-object v4, v1, Lchs;->a:Ljava/lang/String;

    .line 1099
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    iput-object v4, v1, Lchs;->c:Ljava/lang/String;

    .line 1100
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iput-object v4, v1, Lchs;->d:Ljava/lang/String;

    .line 1101
    iput-object v3, v1, Lchs;->b:Ljava/lang/String;

    .line 1102
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    new-instance v5, Lewb$10;

    invoke-direct {v5, p0}, Lewb$10;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, p0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lchs;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 907
    if-nez p0, :cond_0

    .line 908
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 910
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Recover a video conf"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string/jumbo v0, "https://qr.dingtalk.com/page/videoConferenceNew"

    .line 912
    .local v0, "destPageUrl":Ljava/lang/String;
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    .line 5183
    iget-object v2, v2, Levm;->d:Levo;

    .line 912
    if-eqz v2, :cond_1

    .line 913
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    .line 6183
    iget-object v1, v2, Levm;->d:Levo;

    .line 7137
    .local v1, "infoObject":Levo;
    iget v2, v1, Levo;->b:I

    .line 914
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 915
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    .line 7164
    iget-wide v2, v2, Levm;->a:J

    .line 915
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 917
    const-string/jumbo v0, "https://qr.dingtalk.com/page/videoConferenceController"

    .line 921
    .end local v1    # "infoObject":Levo;
    :cond_1
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    new-instance v3, Lewb$7;

    invoke-direct {v3}, Lewb$7;-><init>()V

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 933
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 3
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "toUid"    # J
    .param p3, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 336
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lewb$15;

    invoke-direct {v1, p0, p3}, Lewb$15;-><init>(Landroid/content/Context;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "orgUserMobile"    # Ljava/lang/String;
    .param p4, "orgUserName"    # Ljava/lang/String;

    .prologue
    .line 663
    if-nez p0, :cond_0

    .line 664
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "context is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Cannot add external contact"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_1
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 672
    .local v4, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iput-wide p1, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 673
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 674
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Add e-contact by number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iput-object p3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 676
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 677
    iput-object p4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 683
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    goto :goto_0

    .line 679
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 680
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Add e-contact by name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iput-object p4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 577
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const-string/jumbo v0, "user_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 581
    .local v2, "uid":J
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, "nick":Ljava/lang/String;
    const-string/jumbo v0, "media_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "mediaId":Ljava/lang/String;
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 584
    .local v6, "beCaller":Z
    const-string/jumbo v0, "conf_voip_to_pstn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 585
    .local v7, "canToPstn":Z
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Recover call "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    const/4 v1, 0x1

    .line 5136
    iput-boolean v1, v0, Leve;->g:Z

    .line 588
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v8, "https://qr.dingtalk.com/calling_now.html"

    new-instance v1, Lewb$18;

    invoke-direct/range {v1 .. v7}, Lewb$18;-><init>(JLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v8, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 7
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 426
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 431
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Receive a call from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lewr;->a()Lewr;

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v0, v1}, Lewr;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v4, "common_contact_tele"

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 437
    :cond_3
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    const/4 v1, 0x1

    .line 3136
    iput-boolean v1, v0, Leve;->g:Z

    .line 438
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/calling_now.html"

    new-instance v2, Lewb$16;

    invoke-direct {v2, p0, p1}, Lewb$16;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V
    .locals 7
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 465
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "toMobile"    # Ljava/lang/String;
    .param p3, "bizInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 379
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "toMobile"    # Ljava/lang/String;
    .param p3, "bizInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p4, "agentId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 383
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    if-nez p1, :cond_3

    .line 387
    iget v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 388
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    :cond_2
    iget v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 392
    new-instance p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local p1    # "toUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-direct {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 393
    .restart local p1    # "toUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 394
    iput-object p2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 398
    :cond_3
    iget v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 399
    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v0, v3, :cond_5

    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v0, v4, :cond_5

    .line 403
    iput-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    :cond_4
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 409
    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v0, v3, :cond_6

    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-ne v0, v4, :cond_4

    .line 406
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 407
    iput-object p2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_1

    .line 411
    :cond_7
    iget v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 412
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 413
    iput-object p2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 417
    :goto_2
    iget-object v5, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_8
    iput-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 6
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "bizCall"    # Z
    .param p4, "numInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 186
    const/4 v2, 0x0

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V
    .locals 9
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "bizCall"    # Z
    .param p4, "numInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p5, "agentId"    # Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    invoke-static {p0}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 208
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create free call "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, "shouldReturn":Z
    invoke-static {}, Lewr;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "VoIP is running return."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v7, 0x1

    .line 215
    :cond_3
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    const-string/jumbo v0, "createACall"

    invoke-static {v0}, Lewb;->a(Ljava/lang/String;)V

    .line 217
    const/4 v7, 0x1

    .line 219
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "System call is running"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v7, 0x1

    .line 223
    :cond_5
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Video-conf is running."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v7, 0x1

    .line 227
    :cond_6
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Voip-conf is running."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v7, 0x1

    .line 231
    :cond_7
    if-eqz v7, :cond_8

    .line 232
    sget v0, Leuj$l;->audio_in_focues:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 235
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v4, "common_contact_tele"

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 238
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    const/4 v1, 0x1

    .line 2136
    iput-boolean v1, v0, Leve;->g:Z

    .line 239
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v8, "https://qr.dingtalk.com/calling_now.html"

    new-instance v0, Lewb$13;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lewb$13;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    invoke-interface {v6, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "canPstn"    # Z
    .param p4, "callToPstn"    # Z
    .param p5, "extraMsg"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "canPstn"    # Z
    .param p4, "callToPstn"    # Z
    .param p5, "extraMsg"    # Ljava/lang/String;
    .param p6, "cid"    # Ljava/lang/String;

    .prologue
    .line 484
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "canPstn"    # Z
    .param p4, "callToPstn"    # Z
    .param p5, "extraMsg"    # Ljava/lang/String;
    .param p6, "isClearTask"    # Z
    .param p7, "effectiveCallerId"    # Ljava/lang/String;
    .param p8, "userToUser"    # Ljava/lang/String;
    .param p9, "cid"    # Ljava/lang/String;

    .prologue
    .line 497
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    invoke-static {p0}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 503
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create a voip call to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget v10, Leuj$l;->audio_in_focues:I

    .line 506
    .local v10, "resId":I
    const/4 v11, 0x0

    .line 507
    .local v11, "shouldReturn":Z
    invoke-static {}, Lewr;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "VoIP is running"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v11, 0x1

    .line 511
    :cond_3
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    const-string/jumbo v0, "createAVoIPCall"

    invoke-static {v0}, Lewb;->a(Ljava/lang/String;)V

    .line 513
    const/4 v11, 0x1

    .line 515
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "System call is running."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v11, 0x1

    .line 519
    :cond_5
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 520
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Video-conf is running."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v11, 0x1

    .line 523
    :cond_6
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 524
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Voip-conf is running."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v11, 0x1

    .line 527
    :cond_7
    invoke-static {}, Lewp;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 528
    sget v10, Leuj$l;->dt_live_audio_in_focused:I

    .line 529
    const/4 v11, 0x1

    .line 531
    :cond_8
    if-eqz v11, :cond_9

    .line 532
    invoke-static {v10}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 536
    :cond_9
    invoke-static {}, Lewr;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 537
    invoke-static {}, Lewr;->a()Lewr;

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v0, v1}, Lewr;->a(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 538
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v4, "common_contact_tele"

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 542
    :cond_a
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    const/4 v1, 0x1

    .line 4136
    iput-boolean v1, v0, Leve;->g:Z

    .line 543
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v12

    const-string/jumbo v13, "https://qr.dingtalk.com/calling_now.html"

    new-instance v0, Lewb$17;

    move/from16 v1, p6

    move-object/from16 v2, p9

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lewb$17;-><init>(ZLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v13, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 570
    :cond_b
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "VoIP call fail without init"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    sget v0, Leuj$l;->conf_error_sdk_init_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1134
    :cond_0
    if-nez p0, :cond_1

    .line 1135
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 1137
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/confCallAlarm"

    new-instance v2, Lewb$11;

    invoke-direct {v2, p1}, Lewb$11;-><init>(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 954
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    invoke-static {}, Lewq;->a()Lewq;

    move-result-object v1

    .line 8083
    iget-boolean v1, v1, Lewq;->b:Z

    .line 958
    if-eqz v1, :cond_2

    .line 959
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Video conf pulling running"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :cond_2
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;-><init>()V

    .line 963
    .local v0, "listModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;->userId:Ljava/lang/Long;

    .line 964
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;->pulltype:Ljava/lang/Integer;

    .line 966
    invoke-static {}, Lewq;->a()Lewq;

    move-result-object v1

    .line 9079
    iput-boolean v4, v1, Lewq;->b:Z

    .line 967
    new-instance v1, Lewb$8;

    invoke-direct {v1, p1}, Lewb$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;Leyo$d;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toMobile"    # Ljava/lang/String;
    .param p2, "bizInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toMobile"    # Ljava/lang/String;
    .param p2, "bizInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p3, "agentId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 273
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 278
    .local v6, "startTimestamp":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 280
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 281
    iput v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 282
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    new-instance v1, Lewb$14;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lewb$14;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;J)V

    invoke-virtual {v9, v8, v10, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "userObjs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Go to conf."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->c()Z

    move-result v2

    if-nez v2, :cond_6

    .line 614
    sget v0, Leuj$l;->audio_in_focues:I

    .line 615
    .local v0, "resId":I
    const/4 v1, 0x0

    .line 616
    .local v1, "shouldReturn":Z
    invoke-static {}, Lewr;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "VoIP is running creating conf will return"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x1

    .line 620
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 621
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Phone call is running creating conf will return."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v1, 0x1

    .line 624
    :cond_2
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    invoke-virtual {v2}, Levm;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Video conference is running."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v1, 0x1

    .line 628
    :cond_3
    invoke-static {}, Levn;->p()Levn;

    move-result-object v2

    invoke-virtual {v2}, Levn;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Voip-conf is running."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v1, 0x1

    .line 632
    :cond_4
    invoke-static {p2}, Lewb;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 633
    sget v0, Leuj$l;->dt_live_audio_in_focused:I

    .line 634
    const/4 v1, 0x1

    .line 636
    :cond_5
    if-eqz v1, :cond_6

    .line 637
    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 642
    .end local v0    # "resId":I
    .end local v1    # "shouldReturn":Z
    :cond_6
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/conferencePanel"

    new-instance v4, Lewb$19;

    invoke-direct {v4, p2, p1}, Lewb$19;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 130
    .local v0, "shouldReturn":Z
    invoke-static {}, Lewr;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "VoIP is running return."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const-string/jumbo v1, "gotoSelectForCall"

    invoke-static {v1}, Lewb;->a(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcms;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "System call is running return."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    .line 142
    :cond_3
    invoke-static {}, Levm;->a()Levm;

    move-result-object v1

    invoke-virtual {v1}, Levm;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Video-conf is running."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_4
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    invoke-virtual {v1}, Levn;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Voip-conf is running."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    .line 150
    :cond_5
    if-eqz v0, :cond_6

    .line 151
    sget v1, Leuj$l;->audio_in_focues:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 155
    :cond_6
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/call_select_member"

    new-instance v3, Lewb$12;

    invoke-direct {v3, p2, p1}, Lewb$12;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 5
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v4, 0x0

    .line 65
    if-nez p0, :cond_1

    .line 119
    .end local p0    # "fromContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local p0    # "fromContext":Landroid/content/Context;
    :cond_1
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 68
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 69
    invoke-static {p0}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    .local v0, "shouldReturn":Z
    invoke-static {}, Lewr;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "VoIP is running return."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    .line 77
    :cond_3
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    const-string/jumbo v1, "createForCall"

    invoke-static {v1}, Lewb;->a(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_4
    invoke-static {v4}, Lcms;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "System-call is running"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :cond_5
    invoke-static {}, Levm;->a()Levm;

    move-result-object v1

    invoke-virtual {v1}, Levm;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Video-conf is running."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    .line 89
    :cond_6
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    invoke-virtual {v1}, Levn;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Voip-conf is running."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    .line 93
    :cond_7
    if-eqz v0, :cond_8

    .line 94
    sget v1, Leuj$l;->audio_in_focues:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 98
    :cond_8
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/checking_permission"

    new-instance v3, Lewb$1;

    invoke-direct {v3, p3, v4, p1}, Lewb$1;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 115
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 116
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "fromContext":Landroid/content/Context;
    sget v1, Leuj$a;->conf_redpacktes_alpha_in:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "inviteObj"    # Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 873
    if-nez p0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 877
    .local v1, "fromContext":Landroid/content/Context;
    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 878
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 880
    :cond_1
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Receive a video conf "

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string/jumbo v0, "https://qr.dingtalk.com/page/videoConferenceNew"

    .line 883
    .local v0, "destPageUrl":Ljava/lang/String;
    iget v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    .line 884
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 886
    const-string/jumbo v0, "https://qr.dingtalk.com/page/videoConferenceController"

    .line 888
    :cond_2
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    new-instance v3, Lewb$6;

    invoke-direct {v3, p1, p0}, Lewb$6;-><init>(Landroid/os/Bundle;Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)V

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->e()J

    move-result-wide v2

    .line 1038
    .local v2, "confId":J
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->h()J

    move-result-wide v0

    .line 1039
    .local v0, "callerId":J
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Conf ("

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ") caller "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, " running, "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p0, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, " will return"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1040
    .local v4, "log":Ljava/lang/String;
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lewb;->a:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1150
    if-nez p0, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return v2

    .line 1153
    :cond_1
    const-string/jumbo v3, "conf_caller_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1154
    .local v0, "callerUid":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 1155
    invoke-static {}, Lewp;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Live is running."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1165
    if-nez p0, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1168
    :cond_0
    sget v2, Leuj$l;->dt_conference_make_call_no_net_warning:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "toast":Ljava/lang/String;
    sget v2, Leuj$l;->dt_common_i_know:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "sureTxt":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 781
    :cond_0
    if-nez p0, :cond_1

    .line 782
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 784
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Recover a voip conf"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/voipConference"

    new-instance v2, Lewb$4;

    invoke-direct {v2, p1}, Lewb$4;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "fromContext"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "userObjs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p0, :cond_0

    .line 688
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 690
    :cond_0
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 691
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Net is error."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {p0}, Lewb;->b(Landroid/content/Context;)V

    .line 744
    :goto_0
    return-void

    .line 695
    :cond_1
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Go to voip-conf."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sget v0, Leuj$l;->audio_in_focues:I

    .line 699
    .local v0, "resId":I
    const/4 v1, 0x0

    .line 700
    .local v1, "shouldReturn":Z
    invoke-static {}, Levn;->p()Levn;

    move-result-object v2

    invoke-virtual {v2}, Levn;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "VoIP-conf is running"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x1

    .line 704
    :cond_2
    invoke-static {}, Lewr;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "VoIP is running creating conf will return"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v1, 0x1

    .line 708
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 709
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Phone call is running creating conf will return."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v1, 0x1

    .line 712
    :cond_4
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    invoke-virtual {v2}, Levm;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 713
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Video conference is running."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x1

    .line 716
    :cond_5
    invoke-static {p2}, Lewb;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 717
    sget v0, Leuj$l;->dt_live_audio_in_focused:I

    .line 718
    const/4 v1, 0x1

    .line 720
    :cond_6
    if-eqz v1, :cond_7

    .line 721
    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 725
    :cond_7
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/voipConference"

    new-instance v4, Lewb$2;

    invoke-direct {v4, p2, p1}, Lewb$2;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "activity"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "userObjs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 942
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7838
    .end local p0    # "activity":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 945
    .restart local p0    # "activity":Landroid/content/Context;
    :cond_1
    invoke-static {}, Leyz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    const-string/jumbo v0, "tele_video_h"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Video not support x86 platform"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7802
    :cond_2
    if-nez p0, :cond_3

    .line 7803
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 7805
    .end local p0    # "activity":Landroid/content/Context;
    :cond_3
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7806
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v2, "Net is error."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7807
    invoke-static {p0}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 7810
    :cond_4
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Go to video-conf."

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7813
    sget v2, Leuj$l;->audio_in_focues:I

    .line 7814
    const/4 v0, 0x0

    .line 7815
    invoke-static {}, Levn;->p()Levn;

    move-result-object v3

    invoke-virtual {v3}, Levn;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7816
    const-string/jumbo v0, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "VoIP-conf is running"

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7819
    :cond_5
    invoke-static {}, Lewr;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7820
    const-string/jumbo v0, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "VoIP is running creating conf will return"

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7823
    :cond_6
    invoke-static {v5}, Lcms;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7824
    const-string/jumbo v0, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Phone call is running creating conf will return."

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7827
    :cond_7
    invoke-static {}, Levm;->a()Levm;

    move-result-object v3

    invoke-virtual {v3}, Levm;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7828
    const-string/jumbo v0, "tele_conf"

    sget-object v3, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v4, "Video conference is running."

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7831
    :cond_8
    invoke-static {}, Lewp;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7832
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lewb;->a:Ljava/lang/String;

    const-string/jumbo v3, "Live is running."

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7833
    sget v0, Leuj$l;->dt_live_audio_in_focused:I

    move v2, v0

    move v0, v1

    .line 7836
    :cond_9
    if-eqz v0, :cond_a

    .line 7837
    invoke-static {v2}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 7840
    :cond_a
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_create_click"

    invoke-interface {v0, v5, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7841
    const-string/jumbo v0, "https://qr.dingtalk.com/page/videoConferenceNew"

    .line 7842
    if-eqz p2, :cond_b

    .line 7843
    const-string/jumbo v2, "conf_video_to_user_type"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7844
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 7846
    const-string/jumbo v0, "https://qr.dingtalk.com/page/videoConferenceController"

    move-object v1, v0

    .line 7850
    :goto_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v2, Lewb$5;

    invoke-direct {v2, p2, p1}, Lewb$5;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    :cond_b
    move-object v1, v0

    goto :goto_1
.end method
