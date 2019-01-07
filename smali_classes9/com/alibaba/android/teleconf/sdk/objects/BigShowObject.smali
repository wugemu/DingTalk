.class public Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;
.super Ljava/lang/Object;
.source "BigShowObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    }
.end annotation


# static fields
.field public static final KEY_CANCEL_TEXT:Ljava/lang/String; = "cancelText"

.field public static final KEY_CLOSE_BTN_TYPE:Ljava/lang/String; = "closeBtnType"

.field public static final KEY_JUMP_TEXT:Ljava/lang/String; = "jumpText"

.field public static final KEY_JUMP_URL:Ljava/lang/String; = "jumpUrl"

.field public static final KEY_MEDIA_ID:Ljava/lang/String; = "mediaId"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_ORG_ID:Ljava/lang/String; = "orgId"

.field public static final KEY_PHONE:Ljava/lang/String; = "uid"

.field public static final KEY_STATISTIC:Ljava/lang/String; = "statistic"

.field public static final KEY_UID:Ljava/lang/String; = "uid"


# instance fields
.field public content:Ljava/lang/String;

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

.field public phoneNum:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;
    .locals 6
    .param p0, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;

    .prologue
    .line 59
    if-nez p0, :cond_1

    .line 60
    const/4 v1, 0x0

    .line 72
    :cond_0
    return-object v1

    .line 62
    :cond_1
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;-><init>()V

    .line 63
    .local v1, "object":Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->title:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->content:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->extension:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getCloseBtnType()Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v3, "closeBtnType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "closeBtnTypeValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-static {}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->values()[Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 121
    .local v0, "closeBtnType":Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    .end local v0    # "closeBtnType":Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    .end local v1    # "closeBtnTypeValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 120
    .restart local v0    # "closeBtnType":Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    .restart local v1    # "closeBtnTypeValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "closeBtnType":Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    .end local v1    # "closeBtnTypeValue":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->WHITE:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    goto :goto_1
.end method

.method public getJumpUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "jumpUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getStatistic()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "statistic"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUrlFromMediaId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    const-string/jumbo v0, ""

    .line 91
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "mediaId"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "mediaId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;-><init>()V

    .line 77
    .local v1, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;
    iget v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->type:Ljava/lang/Integer;

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->title:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->content:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->extension:Ljava/util/Map;

    .line 82
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowModel;->extension:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method
