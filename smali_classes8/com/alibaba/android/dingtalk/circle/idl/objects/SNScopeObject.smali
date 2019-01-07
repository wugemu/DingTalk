.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;
.super Ljava/lang/Object;
.source "SNScopeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7019d8ce0319344fL


# instance fields
.field public orgRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbpr;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;
    .locals 2
    .param p0, "model"    # Lbpr;

    .prologue
    .line 28
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;-><init>()V

    .line 30
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;
    iget-object v1, p0, Lbpr;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)Lbpr;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lbpr;

    invoke-direct {v0}, Lbpr;-><init>()V

    .line 23
    .local v0, "model":Lbpr;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    iput-object v1, v0, Lbpr;->a:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getOrgId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    .line 36
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-wide/16 v2, -0x1

    .line 40
    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method
