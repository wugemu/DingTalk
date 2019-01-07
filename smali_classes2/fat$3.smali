.class final Lfat$3;
.super Lcmg;
.source "OmpPolicyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfat;->a(JLcom/alibaba/android/user/model/OrgManagerRoleObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpm;",
        "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
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
    .line 99
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    iput-object p1, p0, Lfat$3;->a:Lfat;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lfpm;

    .line 1102
    if-nez p1, :cond_0

    .line 1103
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1105
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->fromIDLModel(Lfpm;)Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    move-result-object v0

    goto :goto_0
.end method
