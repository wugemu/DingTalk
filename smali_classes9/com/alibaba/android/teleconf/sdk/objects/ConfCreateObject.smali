.class public Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;
.super Ljava/lang/Object;
.source "ConfCreateObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cause:Ljava/lang/String;

.field public code:Ljava/lang/Integer;

.field public conferenceId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 p0, 0x0

    .line 28
    .end local p0    # "this":Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;
    :goto_0
    return-object p0

    .line 25
    .restart local p0    # "this":Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->conferenceId:Ljava/lang/Long;

    invoke-static {v0}, Lcoc;->b(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->conferenceId:Ljava/lang/Long;

    .line 26
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->code:Ljava/lang/Integer;

    invoke-static {v0}, Lcoc;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->code:Ljava/lang/Integer;

    .line 27
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->cause:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->cause:Ljava/lang/String;

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;-><init>()V

    .line 33
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->conferenceId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->conferenceId:Ljava/lang/Long;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->code:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->code:Ljava/lang/Integer;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->cause:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->cause:Ljava/lang/String;

    .line 36
    return-object v0
.end method
