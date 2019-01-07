.class final Lfak$55;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->c(JILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcek;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;",
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
    .line 1786
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;>;"
    iput-object p1, p0, Lfak$55;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1786
    check-cast p1, Lcek;

    .line 2789
    if-nez p1, :cond_0

    .line 2790
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2792
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->fromIdl(Lcek;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    move-result-object v0

    goto :goto_0
.end method
