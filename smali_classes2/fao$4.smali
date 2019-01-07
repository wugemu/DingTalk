.class final Lfao$4;
.super Lcmg;
.source "ExternalContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfao;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcev;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfao;


# direct methods
.method constructor <init>(Lfao;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfao;

    .prologue
    .line 332
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    iput-object p1, p0, Lfao$4;->a:Lfao;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 332
    check-cast p1, Lcev;

    .line 1336
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 332
    return-object v0
.end method
