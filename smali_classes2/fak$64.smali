.class final Lfak$64;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Ljava/lang/String;Ljava/lang/Long;IILcma;)V
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
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 366
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    iput-object p1, p0, Lfak$64;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    check-cast p1, Lcfd;

    .line 1370
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->fromIDLModel(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    move-result-object v0

    .line 366
    return-object v0
.end method
