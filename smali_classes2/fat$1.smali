.class final Lfat$1;
.super Lcmg;
.source "OmpPolicyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfat;->a(JJILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpn;",
        "Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfat;


# direct methods
.method constructor <init>(Lfat;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfat;

    .prologue
    .line 44
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;>;"
    iput-object p1, p0, Lfat$1;->a:Lfat;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lfpn;

    .line 1047
    if-nez p1, :cond_0

    .line 1048
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1050
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->fromIdlModel(Lfpn;)Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;

    move-result-object v0

    goto :goto_0
.end method
