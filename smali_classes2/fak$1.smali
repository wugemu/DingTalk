.class final Lfak$1;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcfi;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;",
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
    .line 98
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    iput-object p1, p0, Lfak$1;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, Lcfi;

    .line 1101
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;-><init>()V

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->fromIDLModel(Lcfi;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v0

    .line 98
    return-object v0
.end method
