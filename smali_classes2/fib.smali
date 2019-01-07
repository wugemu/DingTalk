.class public final Lfib;
.super Ljava/lang/Object;
.source "OrgContactPresenterImpl.java"

# interfaces
.implements Lfhy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfhy",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfib;->a:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lfib;->c:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IIJZILfia;)V
    .locals 11
    .param p1, "mNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "keyType"    # I
    .param p4, "deptType"    # I
    .param p5, "orgId"    # J
    .param p7, "getMore"    # Z
    .param p8, "size"    # I
    .param p9, "finishListener"    # Lfia;

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    const/4 v5, 0x0

    .line 147
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-eqz p7, :cond_0

    iget v7, p0, Lfib;->b:I

    :goto_0
    new-instance v9, Lfib$2;

    move/from16 v0, p7

    move-object/from16 v1, p9

    invoke-direct {v9, p0, v0, p1, v1}, Lfib$2;-><init>(Lfib;ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Lfia;)V

    move-object v3, p2

    move v4, p3

    move/from16 v8, p8

    invoke-interface/range {v2 .. v9}, Lezt;->a(Ljava/lang/String;IILjava/lang/Long;IILcma;)V

    .line 193
    return-void

    .line 147
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lfib;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(JJZILfia;)V
    .locals 11
    .param p1, "deptId"    # J
    .param p3, "orgId"    # J
    .param p5, "getMore"    # Z
    .param p6, "size"    # I
    .param p7, "finishListener"    # Lfia;

    .prologue
    .line 82
    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lfib;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IIJZILfia;)V

    .line 84
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JZLfia;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "oid"    # J
    .param p5, "getMore"    # Z
    .param p6, "finishListener"    # Lfia;

    .prologue
    .line 89
    new-instance v5, Lfib$1;

    invoke-direct {v5, p0, p5, p6}, Lfib$1;-><init>(Lfib;ZLfia;)V

    .line 129
    .local v5, "mApiEventListener":Lcma;
    if-eqz p1, :cond_0

    .line 130
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    invoke-interface {v0, v5, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mApiEventListener":Lcma;
    check-cast v5, Lcma;

    .line 132
    .restart local v5    # "mApiEventListener":Lcma;
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz p5, :cond_1

    iget v3, p0, Lfib;->b:I

    :goto_0
    sget v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;->INIT_SHOW_SIZE:I

    add-int/lit8 v4, v1, 0x2

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;IILcma;)V

    .line 133
    return-void

    .line 132
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JZILfia;)V
    .locals 12
    .param p1, "mNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "orgId"    # J
    .param p4, "getMore"    # Z
    .param p5, "size"    # I
    .param p6, "finishListener"    # Lfia;

    .prologue
    .line 64
    invoke-static {p1}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "keyWord":Ljava/lang/String;
    invoke-static {p1}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v4

    .line 66
    .local v4, "keyType":I
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 67
    .local v0, "oid":Ljava/lang/Long;
    const-wide/16 v6, 0x0

    cmp-long v1, p2, v6

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 75
    :cond_0
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lfib;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IIJZILfia;)V

    .line 77
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
