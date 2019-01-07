.class final Lfak$46;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Ljava/lang/String;IILjava/lang/Long;IILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcfd;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 218
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    iput-object p1, p0, Lfak$46;->b:Lfak;

    iput-object p3, p0, Lfak$46;->a:Lcma;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    check-cast p1, Lcfd;

    .line 1222
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->fromIDLModel(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 218
    check-cast p1, Lcfd;

    .line 2222
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->fromIDLModel(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    move-result-object v0

    .line 1240
    invoke-static {}, Lfbj;->a()Lfbj;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    new-instance v3, Lfak$46$1;

    invoke-direct {v3, p0, v0}, Lfak$46$1;-><init>(Lfak$46;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    invoke-virtual {v1, v2, v3}, Lfbj;->a(Ljava/util/List;Lcma;)V

    .line 218
    return-void
.end method
