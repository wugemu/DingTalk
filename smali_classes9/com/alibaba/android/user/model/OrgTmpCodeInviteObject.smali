.class public Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;
.super Ljava/lang/Object;
.source "OrgTmpCodeInviteObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x299d705c01cb33c2L


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfps;)Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;
    .locals 2
    .param p0, "model"    # Lfps;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;-><init>()V

    .line 41
    .local v0, "object":Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;
    iget-object v1, p0, Lfps;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->url:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lfps;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lfps;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    new-instance v0, Lfps;

    invoke-direct {v0}, Lfps;-><init>()V

    .line 48
    .local v0, "model":Lfps;
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->url:Ljava/lang/String;

    iput-object v1, v0, Lfps;->a:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    iput-object v1, v0, Lfps;->b:Ljava/lang/String;

    .line 50
    return-object v0
.end method
