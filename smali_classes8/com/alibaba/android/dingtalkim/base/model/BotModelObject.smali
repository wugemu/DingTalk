.class public Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
.super Ljava/lang/Object;
.source "BotModelObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MANAGEABLE:I = 0x1

.field public static final MOBILE_SWITCH_OFF:I = 0x0

.field public static final MOBILE_SWITCH_ON:I = 0x1

.field public static final STATUS_START:I = 0x1

.field public static final STATUS_STOP:I = 0x0

.field public static final UNMANAGEABLE:I = 0x0

.field private static final serialVersionUID:J = 0x4e7cf5578204c74fL


# instance fields
.field public botId:J

.field public botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

.field public botUid:J

.field public conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

.field public creatorId:J

.field public creatorNick:Ljava/lang/String;

.field public directSettingBotURL:Ljava/lang/String;

.field public extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public function:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public guideURL:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public isCreator:Z

.field public manageable:I

.field public mobileGuideURL:Ljava/lang/String;

.field public mobileSwitch:I

.field public name:Ljava/lang/String;

.field public outgoingToken:Ljava/lang/String;

.field public outgoingUrl:Ljava/lang/String;

.field public settingBotURL:Ljava/lang/String;

.field public status:I

.field public targetURL:Ljava/lang/String;

.field public templateId:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public topicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/TopicObject;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcd;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 8
    .param p0, "model"    # Ldcd;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;-><init>()V

    .line 69
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    iget-object v1, p0, Ldcd;->a:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 70
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    .line 74
    :goto_1
    iget-object v1, p0, Ldcd;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Ldcd;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Ldcd;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->isCreator:Z

    .line 77
    iget-object v1, p0, Ldcd;->e:Ljava/lang/Integer;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->status:I

    .line 78
    iget-object v1, p0, Ldcd;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->url:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Ldcd;->g:Ldch;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->fromIdl(Ldch;)Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    .line 80
    iget-object v1, p0, Ldcd;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->type:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Ldcd;->i:Ljava/lang/Long;

    if-nez v1, :cond_4

    move-wide v4, v6

    :goto_4
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    .line 82
    iget-object v1, p0, Ldcd;->j:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    .line 83
    iget-object v1, p0, Ldcd;->k:Ljava/lang/Integer;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->manageable:I

    .line 84
    iget-object v1, p0, Ldcd;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->guideURL:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Ldcd;->m:Ljava/lang/Long;

    if-nez v1, :cond_6

    move-wide v4, v6

    :goto_6
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->creatorId:J

    .line 86
    iget-object v1, p0, Ldcd;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->creatorNick:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Ldcd;->o:Ljava/lang/Long;

    if-nez v1, :cond_7

    :goto_7
    iput-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    .line 88
    iget-object v1, p0, Ldcd;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileGuideURL:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Ldcd;->q:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 89
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileSwitch:I

    .line 90
    iget-object v1, p0, Ldcd;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->targetURL:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Ldcd;->s:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 91
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->function:I

    .line 92
    iget-object v1, p0, Ldcd;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->settingBotURL:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Ldcd;->u:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->fromListIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->topicList:Ljava/util/List;

    .line 94
    iget-object v1, p0, Ldcd;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->outgoingUrl:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Ldcd;->w:Ldcg;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->fromIdl(Ldcg;)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 96
    iget-object v1, p0, Ldcd;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->outgoingToken:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Ldcd;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->directSettingBotURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Ldcd;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    goto/16 :goto_1

    .line 76
    :cond_2
    iget-object v1, p0, Ldcd;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    .line 77
    :cond_3
    iget-object v1, p0, Ldcd;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_3

    .line 81
    :cond_4
    iget-object v1, p0, Ldcd;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    .line 83
    :cond_5
    iget-object v1, p0, Ldcd;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    .line 85
    :cond_6
    iget-object v1, p0, Ldcd;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 87
    :cond_7
    iget-object v1, p0, Ldcd;->o:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_7
.end method

.method public static fromListIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldcd;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldcd;>;"
    if-nez p0, :cond_1

    .line 103
    const/4 v2, 0x0

    .line 113
    :cond_0
    return-object v2

    .line 106
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcd;

    .line 108
    .local v0, "model":Ldcd;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->fromIdl(Ldcd;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v1

    .line 109
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    if-eqz v1, :cond_2

    .line 110
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public isManageable()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 119
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->manageable:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateIdValid()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
