.class public final Lfks;
.super Ljava/lang/Object;
.source "CreateOrgPresenter.java"

# interfaces
.implements Lfkr$a;


# instance fields
.field public final a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field public final b:Lfkr$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkr$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lfkr$b;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 29
    iput-object p2, p0, Lfks;->b:Lfkr$b;

    .line 30
    iget-object v0, p0, Lfks;->b:Lfkr$b;

    invoke-interface {v0, p0}, Lfkr$b;->setPresenter(Lcjd;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x6

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "teamScaleObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear1:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear2:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/4 v2, 0x3

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear3:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/4 v2, 0x4

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear4:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/4 v2, 0x5

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear5:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_org_create_scale_gear6:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/16 v2, 0x8

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear8_new:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    const/16 v2, 0x9

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_org_create_scale_gear9:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "industryCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 36
    iget-object v1, p0, Lfks;->b:Lfkr$b;

    invoke-interface {v1}, Lfkr$b;->b()V

    .line 37
    new-instance v0, Lfks$1;

    invoke-direct {v0, p0}, Lfks$1;-><init>(Lfks;)V

    .line 79
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;>;"
    iget-object v1, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;>;"
    check-cast v0, Lcma;

    .line 83
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;>;"
    :cond_0
    invoke-static {}, Lfaj;->a()Lfbi;

    move-result-object v1

    if-eqz p1, :cond_1

    .end local p1    # "industryCode":Ljava/lang/String;
    :goto_0
    invoke-interface {v1, p1, v0}, Lfbi;->a(Ljava/lang/String;Lcma;)V

    .line 84
    return-void

    .line 83
    .restart local p1    # "industryCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "positionDatas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PositionData;>;"
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_boss:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J008"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_manager:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J009"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_hr:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J002"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_admin:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J003"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_tech:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J011"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_financial:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J004"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_employee:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J006"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, p0, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lezg$l;->dt_contact_job_position_others:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "J007"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
