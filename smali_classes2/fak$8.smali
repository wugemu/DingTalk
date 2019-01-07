.class final Lfak$8;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(JILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcfa;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;",
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
    .line 592
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;>;"
    iput-object p1, p0, Lfak$8;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 592
    check-cast p1, Lcfa;

    .line 1596
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->fromIDLModel(Lcfa;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    move-result-object v0

    .line 592
    return-object v0
.end method
