.class final Levu$4;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 440
    iput-object p1, p0, Levu$4;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 9
    .param p1, "messageEvent"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 443
    if-eqz p1, :cond_0

    iget v2, p1, Lcjo$b;->b:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;

    if-eqz v2, :cond_0

    .line 450
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;

    .line 451
    .local v0, "infoModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;
    if-eqz v0, :cond_0

    .line 454
    new-instance v1, Leym;

    invoke-direct {v1}, Leym;-><init>()V

    .line 1072
    .local v1, "infoObject":Leym;
    if-nez v0, :cond_3

    .line 456
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 457
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Push card "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Leym;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Levu$4;->a:Levu;

    invoke-static {v2}, Levu;->a(Levu;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcms;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 460
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lewl;->a(Leym;)V

    goto :goto_0

    .line 1075
    :cond_3
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->showNumber:Ljava/lang/String;

    iput-object v2, v1, Leym;->e:Ljava/lang/String;

    .line 1076
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->extendField:Ljava/lang/String;

    iput-object v2, v1, Leym;->f:Ljava/lang/String;

    .line 1077
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    if-eqz v2, :cond_6

    .line 1078
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->uid:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1078
    iput-wide v2, v1, Leym;->a:J

    .line 1079
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->nickName:Ljava/lang/String;

    iput-object v2, v1, Leym;->b:Ljava/lang/String;

    .line 1080
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->orgName:Ljava/lang/String;

    iput-object v2, v1, Leym;->d:Ljava/lang/String;

    .line 1081
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->title:Ljava/lang/String;

    iput-object v2, v1, Leym;->c:Ljava/lang/String;

    .line 1082
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->callWorkMobile:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1082
    iput-boolean v2, v1, Leym;->i:Z

    .line 1083
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->isExtContact:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->isExtContact:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1084
    iput-boolean v8, v1, Leym;->g:Z

    .line 1085
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->labelList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->labelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Leym;->h:Ljava/util/List;

    .line 1087
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallInfoModel;->userInfoCard:Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->labelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcec;

    .line 1088
    if-eqz v2, :cond_4

    .line 1091
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-result-object v2

    .line 1092
    iget-object v4, v1, Leym;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1096
    :cond_5
    iput-boolean v6, v1, Leym;->g:Z

    goto/16 :goto_1

    .line 1099
    :cond_6
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Leym;->a:J

    goto/16 :goto_1

    .line 462
    :cond_7
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lewl;->a(Leym;Z)V

    goto/16 :goto_0
.end method
