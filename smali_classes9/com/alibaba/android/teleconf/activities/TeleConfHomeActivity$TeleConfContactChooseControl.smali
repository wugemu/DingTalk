.class Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TeleConfContactChooseControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->this$0:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
    .param p2, "x1"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$1;

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    return-void
.end method


# virtual methods
.method public addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic addChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public addChooseObject(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooseResultHaveId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooseResultIds()[J
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getChooseResultNoId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisableSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isDisable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isHasSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isRequestSelect(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 5
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 635
    if-nez p1, :cond_0

    .line 645
    :goto_0
    return v4

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->this$0:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    .line 641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 642
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "call_record_search_result_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 644
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->this$0:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    sget-object v3, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v1, v2, p1, v3}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0
.end method

.method public bridge synthetic onSingleChoose(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setChoosedList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public setDisChooseList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public setRequestSelectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method
