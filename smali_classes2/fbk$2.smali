.class public final Lfbk$2;
.super Lcmg;
.source "UserProfileRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcgk;",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfbk;


# direct methods
.method public constructor <init>(Lfbk;Lcma;I)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 449
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iput-object p1, p0, Lfbk$2;->b:Lfbk;

    iput p3, p0, Lfbk$2;->a:I

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 449
    check-cast p1, Lcgk;

    .line 1453
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1454
    if-eqz v0, :cond_0

    .line 1455
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/internal/IMContextEngine;->a(J)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 449
    :cond_0
    return-object v0
.end method

.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 462
    invoke-super {p0}, Lcmg;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 463
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    iget v1, p0, Lfbk$2;->a:I

    if-lez v1, :cond_0

    .line 464
    iget v1, p0, Lfbk$2;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 466
    :cond_0
    return-object v0
.end method
