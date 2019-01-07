.class public final Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
.super Ljava/lang/Object;
.source "BotTemplateModelObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_ADD_THROUGH_MOBILE:I = 0x0

.field public static final CAN_ADD_THROUGH_MOBILE:I = 0x1

.field public static final CAN_MODIFY:I = 0x1

.field public static final ROBOT_TYPE_INCOMING:I = 0x1

.field public static final ROBOT_TYPE_INOUT:I = 0x3

.field public static final ROBOT_TYPE_NONE:I = 0x0

.field public static final ROBOT_TYPE_OUTGOING:I = 0x2

.field public static final TEMPLATE_CUSTOM_ID:I = 0x4e20

.field public static final TEMPLATE_TYPE_ORG_INNER:I = 0x2

.field public static final TEMPLATE_TYPE_ORG_OUTER:I = 0x3

.field public static final TEMPLATE_TYPE_UNIVERSAL:I = 0x1

.field public static final TEMPLATE_XINZHI_ID:I = 0x13880


# instance fields
.field public addBotURL:Ljava/lang/String;

.field public addURL:Ljava/lang/String;

.field public botExtraObject:Ldcc;

.field public botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

.field public brief:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public dev:Ljava/lang/String;

.field public directSettingBotURL:Ljava/lang/String;

.field public extraType:I

.field public function:I

.field public globalBotUid:J

.field public guideURL:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconModify:I

.field public mobileGuideURL:Ljava/lang/String;

.field public mobileSwitch:I

.field public moreURL:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nameModify:I

.field public previewMediaId:Ljava/lang/String;

.field public settingBotURL:Ljava/lang/String;

.field public showWebhook:I

.field public sourceURL:Ljava/lang/String;

.field public targetURL:Ljava/lang/String;

.field public templateId:J

.field public templateType:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcg;)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    .locals 6
    .param p0, "model"    # Ldcg;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 113
    :goto_0
    return-object v5

    .line 85
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;-><init>()V

    .line 86
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    iget-object v1, p0, Ldcg;->a:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    .line 87
    iget-object v1, p0, Ldcg;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->name:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Ldcg;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->icon:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Ldcg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->brief:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Ldcg;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->addURL:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Ldcg;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->previewMediaId:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Ldcg;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->dev:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Ldcg;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->sourceURL:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Ldcg;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->moreURL:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Ldcg;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->guideURL:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Ldcg;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->desc:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Ldcg;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->mobileGuideURL:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Ldcg;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->targetURL:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Ldcg;->n:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->mobileSwitch:I

    .line 100
    iget-object v1, p0, Ldcg;->o:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 100
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->function:I

    .line 101
    iget-object v1, p0, Ldcg;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->addBotURL:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Ldcg;->q:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 102
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateType:I

    .line 103
    iget-object v1, p0, Ldcg;->r:Ldce;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->fromIdl(Ldce;)Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    .line 104
    iget-object v1, p0, Ldcg;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->settingBotURL:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Ldcg;->t:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 105
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->globalBotUid:J

    .line 106
    iget-object v1, p0, Ldcg;->u:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 106
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->nameModify:I

    .line 107
    iget-object v1, p0, Ldcg;->v:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 107
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->iconModify:I

    .line 108
    iget-object v1, p0, Ldcg;->w:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 108
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->extraType:I

    .line 109
    iget-object v2, p0, Ldcg;->x:Ldcb;

    .line 6022
    if-nez v2, :cond_3

    move-object v1, v5

    .line 109
    :goto_3
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botExtraObject:Ldcc;

    .line 110
    iget-object v1, p0, Ldcg;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->type:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Ldcg;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->directSettingBotURL:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Ldcg;->A:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 112
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->showWebhook:I

    move-object v5, v0

    .line 113
    goto/16 :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Ldcg;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    .line 99
    :cond_2
    iget-object v1, p0, Ldcg;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 6026
    :cond_3
    new-instance v1, Ldcc;

    invoke-direct {v1}, Ldcc;-><init>()V

    .line 6027
    iget-object v3, v2, Ldcb;->a:Ljava/lang/String;

    iput-object v3, v1, Ldcc;->a:Ljava/lang/String;

    .line 6028
    iget-object v3, v2, Ldcb;->b:Ljava/lang/String;

    iput-object v3, v1, Ldcc;->b:Ljava/lang/String;

    .line 6029
    iget-object v2, v2, Ldcb;->c:Ljava/lang/String;

    iput-object v2, v1, Ldcc;->c:Ljava/lang/String;

    goto :goto_3
.end method

.method public static fromListIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldcg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldcg;>;"
    if-nez p0, :cond_1

    .line 118
    const/4 v2, 0x0

    .line 128
    :cond_0
    return-object v2

    .line 120
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcg;

    .line 123
    .local v0, "model":Ldcg;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->fromIdl(Ldcg;)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    move-result-object v1

    .line 124
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    if-eqz v1, :cond_2

    .line 125
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isCustomTemplate(J)Z
    .locals 2
    .param p0, "templateId"    # J

    .prologue
    .line 144
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInOut(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 160
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncoming(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 152
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNone(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 164
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOfficialTemplate(J)Z
    .locals 2
    .param p0, "templateId"    # J

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isTemplateValid(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isXinZhiTemplate(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isCustomTemplate(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOutgoing(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 156
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTemplateValid(J)Z
    .locals 2
    .param p0, "templateId"    # J

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXinZhiTemplate(J)Z
    .locals 2
    .param p0, "templateId"    # J

    .prologue
    .line 140
    const-wide/32 v0, 0x13880

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final canAddInMobile()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 132
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->mobileSwitch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canIconModify()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 184
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->iconModify:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canNameModify()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 180
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->nameModify:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOrgInner()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 172
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOrgOuter()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUniversal()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 168
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
