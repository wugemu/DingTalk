.class final Lfak$7;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcew;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
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
    .line 115
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    iput-object p1, p0, Lfak$7;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    check-cast p1, Lcew;

    .line 1119
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-result-object v0

    .line 115
    return-object v0
.end method
