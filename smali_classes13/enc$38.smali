.class final Lenc$38;
.super Lcmf;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/lang/String;Ljava/lang/String;IILcmb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmf",
        "<",
        "Lcfd;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcmb;J)V
    .locals 2
    .param p1, "this$0"    # Lenc;
    .param p3, "x1"    # J

    .prologue
    .line 277
    .local p2, "x0":Lcmb;, "Lcmb<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    iput-object p1, p0, Lenc$38;->a:Lenc;

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, p2, v0, v1}, Lcmf;-><init>(Lcmb;J)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    check-cast p1, Lcfd;

    .line 1281
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->fromIDLModel(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    move-result-object v0

    .line 277
    return-object v0
.end method
