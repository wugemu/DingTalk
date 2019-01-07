.class public Lcom/alibaba/android/user/model/ChannelInfoResponseObject;
.super Ljava/lang/Object;
.source "ChannelInfoResponseObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public statusCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfog;)Lcom/alibaba/android/user/model/ChannelInfoResponseObject;
    .locals 3
    .param p0, "model"    # Lfog;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;-><init>()V

    .line 25
    .local v0, "object":Lcom/alibaba/android/user/model/ChannelInfoResponseObject;
    iget-object v1, p0, Lfog;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 25
    iput v1, v0, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;->statusCode:I

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lfog;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 30
    new-instance v0, Lfog;

    invoke-direct {v0}, Lfog;-><init>()V

    .line 31
    .local v0, "model":Lfog;
    iget v1, p0, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfog;->a:Ljava/lang/Integer;

    .line 32
    return-object v0
.end method
