.class final Lfvm$1;
.super Ljava/lang/Object;
.source "EmployeeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclb;

.field final synthetic b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

.field final synthetic c:Lfvm;


# direct methods
.method constructor <init>(Lfvm;Lclb;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 0
    .param p1, "this$0"    # Lfvm;

    .prologue
    .line 41
    iput-object p1, p0, Lfvm$1;->c:Lfvm;

    iput-object p2, p0, Lfvm$1;->a:Lclb;

    iput-object p3, p0, Lfvm$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .prologue
    .line 44
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v19, "orgUserNameObjectList":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lfvm$1;->a:Lclb;

    iget-object v3, v3, Lclb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lclc;

    .line 46
    .local v14, "model":Lclc;
    if-eqz v14, :cond_0

    iget-object v3, v14, Lclc;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, v14, Lclc;->b:[B

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, v14, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfvm$1;->c:Lfvm;

    const-class v4, Lceu;

    iget-object v5, v14, Lclc;->b:[B

    invoke-static {v3, v4, v5}, Lfvm;->a(Lfvm;Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "content":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lceu;

    if-eqz v3, :cond_2

    move-object/from16 v17, v2

    .line 51
    check-cast v17, Lceu;

    .line 52
    .local v17, "orgEmployeeBaseModelList":Lceu;
    move-object/from16 v0, v17

    iget-object v3, v0, Lceu;->a:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 53
    move-object/from16 v0, v17

    iget-object v3, v0, Lceu;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcet;

    .line 54
    .local v16, "orgEmployeeBaseModel":Lcet;
    if-eqz v16, :cond_1

    .line 57
    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->fromIDLModel(Lcet;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    move-result-object v18

    .line 58
    .local v18, "orgEmployeeBaseObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    new-instance v3, Lfrw;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgId:J

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->namePinyin:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nick:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nickPinyin:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->ver:J

    invoke-direct/range {v3 .. v13}, Lfrw;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    .end local v16    # "orgEmployeeBaseModel":Lcet;
    .end local v17    # "orgEmployeeBaseModelList":Lceu;
    .end local v18    # "orgEmployeeBaseObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 65
    invoke-static/range {v19 .. v19}, Lfbm;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 71
    .end local v2    # "content":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lfvm$1;->c:Lfvm;

    const-class v4, Lceg;

    iget-object v5, v14, Lclc;->b:[B

    invoke-static {v3, v4, v5}, Lfvm;->a(Lfvm;Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v2

    .line 72
    .restart local v2    # "content":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lceg;

    if-eqz v3, :cond_0

    move-object v15, v2

    .line 73
    check-cast v15, Lceg;

    .line 74
    .local v15, "orgAdminChangeModel":Lceg;
    new-instance v20, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;-><init>()V

    .line 75
    .local v20, "organizationChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;
    iget-object v3, v15, Lceg;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 75
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->time:J

    .line 76
    iget-object v3, v15, Lceg;->b:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 76
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->orgId:J

    .line 77
    invoke-static {}, Loi;->a()Loi;

    move-result-object v3

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5, v6}, Loi;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v2    # "content":Ljava/lang/Object;
    .end local v14    # "model":Lclc;
    .end local v15    # "orgAdminChangeModel":Lceg;
    .end local v20    # "organizationChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lfvm$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-interface {v3}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 90
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
