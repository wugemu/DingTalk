.class public Lcom/alibaba/android/dingtalkim/models/OneBoxObject;
.super Ljava/lang/Object;
.source "OneBoxObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RELATION_EXTERNAL:I = 0x1

.field public static final RELATION_FRIEND:I = 0x3

.field public static final RELATION_OA:I = -0x1

.field public static final RELATION_PARTNER:I = 0x2

.field public static final SHOW_PULL_ARROW_VISIBILITY:I = 0x1


# instance fields
.field public businessItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public hidePopup:Z

.field public miniProfile:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

.field public relation:I

.field public visibility:I

.field public workCount:I

.field public workItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromModelIDL(Ldub;)Lcom/alibaba/android/dingtalkim/models/OneBoxObject;
    .locals 7
    .param p1, "model"    # Ldub;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 78
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;-><init>()V

    .line 79
    .local v1, "object":Lcom/alibaba/android/dingtalkim/models/OneBoxObject;
    if-eqz p1, :cond_1

    .line 80
    iget-object v3, p1, Ldub;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p1, Ldub;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    iput v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    .line 81
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;-><init>()V

    iget-object v5, p1, Ldub;->b:Ldtz;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->fromModelIDL(Ldtz;)Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->miniProfile:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    .line 82
    iget v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    packed-switch v3, :pswitch_data_0

    .line 101
    :cond_0
    iget-object v3, p1, Ldub;->e:Ljava/lang/Integer;

    .line 1033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 101
    iput v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    .line 102
    iget-object v3, p1, Ldub;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 102
    iput v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->visibility:I

    .line 103
    iget-object v3, p1, Ldub;->g:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 103
    iput-boolean v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->hidePopup:Z

    .line 105
    :cond_1
    return-object v1

    :cond_2
    move v3, v4

    .line 80
    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v3, p1, Ldub;->c:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    .line 86
    iget-object v3, p1, Ldub;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsk;

    .line 87
    .local v0, "businessItemModel":Ldsk;
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    .line 88
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->fromIdlModel(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    move-result-object v6

    .line 87
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v0    # "businessItemModel":Ldsk;
    :pswitch_1
    iget-object v3, p1, Ldub;->d:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    .line 95
    iget-object v3, p1, Ldub;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lduy;

    .line 96
    .local v2, "workItemModel":Lduy;
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;-><init>()V

    invoke-virtual {v6, v2}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->fromModelIDL(Lduy;)Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
