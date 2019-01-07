.class public Lcom/alibaba/android/user/model/ChannelInfoObject;
.super Ljava/lang/Object;
.source "ChannelInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfof;)Lcom/alibaba/android/user/model/ChannelInfoObject;
    .locals 2
    .param p0, "model"    # Lfof;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/ChannelInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/ChannelInfoObject;-><init>()V

    .line 24
    .local v0, "object":Lcom/alibaba/android/user/model/ChannelInfoObject;
    iget-object v1, p0, Lfof;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/ChannelInfoObject;->channel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lfof;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 29
    new-instance v0, Lfof;

    invoke-direct {v0}, Lfof;-><init>()V

    .line 30
    .local v0, "model":Lfof;
    iget-object v1, p0, Lcom/alibaba/android/user/model/ChannelInfoObject;->channel:Ljava/lang/String;

    iput-object v1, v0, Lfof;->a:Ljava/lang/String;

    .line 31
    return-object v0
.end method
