.class public final Leoo;
.super Ljava/lang/Object;
.source "GroupSearchModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public d:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation

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

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public o:Ljava/lang/Double;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation
.end field

.field public p:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x10
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x11
    .end annotation
.end field

.field public r:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x12
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 85
    new-instance v6, Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    invoke-direct {v6}, Lcom/alibaba/wukong/idl/im/models/ConversationModel;-><init>()V

    .line 86
    .local v6, "model":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;-><init>()V

    .line 87
    .local v1, "baseConversationModel":Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;
    iget-object v8, p0, Leoo;->a:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->conversationId:Ljava/lang/String;

    .line 88
    iget-object v8, p0, Leoo;->b:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->title:Ljava/lang/String;

    .line 89
    iget-object v8, p0, Leoo;->c:Ljava/lang/Integer;

    .line 1033
    invoke-static {v8, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 89
    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->tag:Ljava/lang/Long;

    .line 90
    iget-object v8, p0, Leoo;->d:Ljava/lang/Integer;

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberCount:Ljava/lang/Integer;

    .line 91
    iget-object v8, p0, Leoo;->e:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->icon:Ljava/lang/String;

    .line 92
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->type:Ljava/lang/Integer;

    .line 93
    iget-object v8, p0, Leoo;->f:Ljava/util/Map;

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->extension:Ljava/util/Map;

    .line 94
    iget-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->extension:Ljava/util/Map;

    if-nez v8, :cond_0

    .line 95
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->extension:Ljava/util/Map;

    .line 97
    :cond_0
    iget-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->extension:Ljava/util/Map;

    const-string/jumbo v9, "hitField"

    iget-object v10, p0, Leoo;->j:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v8, p0, Leoo;->g:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 101
    :try_start_0
    iget-object v8, p0, Leoo;->g:Ljava/lang/String;

    invoke-static {v8}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 102
    .local v4, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    invoke-direct {v5}, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;-><init>()V

    .line 103
    .local v5, "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    const-string/jumbo v8, "type"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    .line 104
    sget-object v8, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v8

    iget-object v9, v5, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 105
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;-><init>()V

    .line 106
    .local v0, "automaticIconModel":Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;
    const-string/jumbo v8, "mediaId"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    .line 107
    const-string/jumbo v8, "tag"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconTag:Ljava/lang/Long;

    .line 108
    iput-object v0, v5, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    .line 115
    .end local v0    # "automaticIconModel":Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;
    :cond_1
    :goto_0
    iput-object v5, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    :cond_2
    iget-object v8, p0, Leoo;->e:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->icon:Ljava/lang/String;

    .line 126
    new-instance v8, Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    invoke-direct {v8}, Lcom/alibaba/wukong/idl/im/models/SearchableModel;-><init>()V

    iput-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    .line 127
    iget-object v8, p0, Leoo;->h:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 129
    :try_start_1
    iget-object v8, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    iget-object v9, p0, Leoo;->h:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->groupId:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_3
    :goto_1
    iput-object v1, v6, Lcom/alibaba/wukong/idl/im/models/ConversationModel;->baseConversation:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    .line 135
    return-object v6

    .line 109
    .restart local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    :cond_4
    :try_start_2
    sget-object v8, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v8

    iget-object v9, v5, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 110
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;-><init>()V

    .line 111
    .local v2, "customIconModel":Lcom/alibaba/wukong/idl/im/models/CustomIconModel;
    const-string/jumbo v8, "mediaId"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v2, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    .line 112
    iput-object v2, v5, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    .end local v2    # "customIconModel":Lcom/alibaba/wukong/idl/im/models/CustomIconModel;
    .end local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "iconOptionModel":Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "search"

    const-class v9, Leoo;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/String;

    const-string/jumbo v11, "group model convert fail:"

    aput-object v11, v10, v12

    const/4 v11, 0x1

    .line 118
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 117
    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v8

    sget v9, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v8, v9, :cond_2

    .line 120
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 130
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 131
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 197
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 141
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->a:Ljava/lang/String;

    goto :goto_0

    .line 144
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->b:Ljava/lang/String;

    goto :goto_0

    .line 147
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 150
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 153
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->e:Ljava/lang/String;

    goto :goto_0

    .line 156
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->f:Ljava/util/Map;

    goto :goto_0

    .line 159
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->g:Ljava/lang/String;

    goto :goto_0

    .line 162
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->h:Ljava/lang/String;

    goto :goto_0

    .line 165
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->i:Ljava/lang/Long;

    goto :goto_0

    .line 168
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->j:Ljava/lang/String;

    goto :goto_0

    .line 171
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->k:Ljava/lang/String;

    goto :goto_0

    .line 174
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->l:Ljava/lang/String;

    goto :goto_0

    .line 177
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->m:Ljava/lang/String;

    goto :goto_0

    .line 180
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->n:Ljava/lang/String;

    goto :goto_0

    .line 183
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->o:Ljava/lang/Double;

    goto :goto_0

    .line 186
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->p:Ljava/lang/Long;

    goto :goto_0

    .line 189
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->q:Ljava/lang/String;

    goto :goto_0

    .line 192
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Leoo;->r:Ljava/lang/Integer;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
