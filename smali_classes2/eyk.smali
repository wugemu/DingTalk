.class public final Leyk;
.super Ljava/lang/Object;
.source "MemberChangedObject.java"


# instance fields
.field public a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;)Leyk;
    .locals 2
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-object p0

    .line 30
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->action:Ljava/lang/String;

    iput-object v0, p0, Leyk;->b:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->cause:Ljava/lang/String;

    iput-object v0, p0, Leyk;->c:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    iput-object v0, p0, Leyk;->d:Ljava/lang/Long;

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->time:Ljava/lang/Long;

    iput-object v0, p0, Leyk;->e:Ljava/lang/Long;

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->text:Ljava/lang/String;

    iput-object v0, p0, Leyk;->f:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;-><init>()V

    iput-object v0, p0, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 39
    :cond_1
    iget-object v0, p0, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->member:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 40
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->confType:Ljava/lang/Integer;

    iput-object v0, p0, Leyk;->g:Ljava/lang/Integer;

    goto :goto_0
.end method
